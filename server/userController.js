const bcrypt = require('bcrypt');
const crypto = require('crypto');
const nodemailer = require('nodemailer');
const jwt = require('jsonwebtoken');
const pool = require('./db');

// Конфигурация для Nodemailer
const transporter = nodemailer.createTransport({
    service: 'Gmail',
    auth: {
      user: process.env.EMAIL_USER,
      pass: process.env.EMAIL_PASS,
    },
  });

  // Функция для отправки письма с подтверждением
async function sendVerificationEmail(user) {
    // Генерируем токен
    const token = jwt.sign({ userId: user.id }, process.env.JWT_SECRET, { expiresIn: '1h' });
    
    // Ссылка для подтверждения
    const verificationLink = `http://localhost:3555/auth/verify-email?token=${token}`;
  
    const mailOptions = {
      from: process.env.EMAIL_USER,
      to: user.email,
      subject: 'Подтверждение вашей электронной почты',
      text: `Пожалуйста, подтвердите вашу почту, перейдя по следующей ссылке: ${verificationLink}`,
    };
  
    await transporter.sendMail(mailOptions);
  }

// Регистрация пользователя с отправкой письма
exports.registerUser = async (req, res) => {
    const { username, password, email } = req.body;
  
    try {
      // Проверка, что пользователь с таким именем или почтой еще не существует
      const userCheck = await pool.query(
        'SELECT * FROM users WHERE username = $1 OR email = $2', 
        [username, email]
      );
      if (userCheck.rows.length > 0) {
        return res.status(400).json({ message: 'Имя пользователя или почта уже используются' });
      }

      const passwordHash = await bcrypt.hash(password, 10);
  
      const newUser = await pool.query(
        'INSERT INTO users (username, password_hash, email, isVerified) VALUES ($1, $2, $3, $4) RETURNING *',
        [username, passwordHash, email, false]
      );
  
      // Отправляем письмо с подтверждением
      await sendVerificationEmail(newUser.rows[0]);
  
      res.status(201).json({ message: 'Регистрация успешна. Пожалуйста, проверьте вашу почту для подтверждения.' });
    } catch (err) {
      console.error(err);
      res.status(500).json({ message: 'Ошибка сервера' });
    }
  };
// Авторизация пользователя
exports.loginUser = async (req, res) => {
    const { username, password } = req.body;
  
    try {
      // Проверка наличия пользователя
      const user = await pool.query('SELECT * FROM users WHERE username = $1', [username]);
      if (user.rows.length === 0) {
        return res.status(400).json({ message: 'Неверное имя пользователя или пароль' });
      }
  
      // Проверка, подтверждена ли почта
      if (!user.rows[0].isverified) {
        return res.status(403).json({ message: 'Подтвердите свою почту, чтобы войти' });
      }
  
      // Проверка пароля
      const validPassword = await bcrypt.compare(password, user.rows[0].password_hash);
      if (!validPassword) {
        return res.status(400).json({ message: 'Неверное имя пользователя или пароль' });
      }
  
      // Возвращаем только необходимую информацию о пользователе
      res.json({ message: 'Авторизация успешна', user: { id: user.rows[0].id, username: user.rows[0].username, email: user.rows[0].email } });
    } catch (err) {
      console.error(err);
      res.status(500).json({ message: 'Ошибка сервера' });
    }
  };


