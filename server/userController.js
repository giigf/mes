const bcrypt = require('bcrypt');
const pool = require('./db');

// Регистрация пользователя
exports.registerUser = async (req, res) => {
  const { username, password, email } = req.body;
  
  try {
    // Проверка, что пользователь с таким именем еще не существует
    const userCheck = await pool.query('SELECT * FROM users WHERE username = $1', [username]);
    if (userCheck.rows.length > 0) {
      return res.status(400).json({ message: 'Пользователь с таким именем уже существует' });
    }

    // Хеширование пароля
    const passwordHash = await bcrypt.hash(password, 10);

    // Создание нового пользователя
    const newUser = await pool.query(
      'INSERT INTO users (username, password_hash, email) VALUES ($1, $2, $3) RETURNING *',
      [username, passwordHash, email]
    );

    res.status(201).json({ message: 'Регистрация успешна', user: newUser.rows[0] });
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

    // Проверка пароля
    const validPassword = await bcrypt.compare(password, user.rows[0].password_hash);
    if (!validPassword) {
      return res.status(400).json({ message: 'Неверное имя пользователя или пароль' });
    }

    res.json({ message: 'Авторизация успешна', user: user.rows[0] });
  } catch (err) {
    console.error(err);
    res.status(500).json({ message: 'Ошибка сервера' });
  }
};
