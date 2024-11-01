const express = require('express');
const router = express.Router();
const pool = require('./db');
const jwt = require('jsonwebtoken'); // Импорт jsonwebtoken
const userController = require('./userController');

// Маршрут для регистрации
router.post('/register', userController.registerUser);

// Маршрут для авторизации
router.post('/login', userController.loginUser);

// Маршрут для подтверждения почты
router.get('/verify-email', async (req, res) => {
    const token = req.query.token;

    try {
        // Проверка наличия токена
        if (!token) {
            return res.status(400).json({ message: 'Токен не предоставлен' });
        }

        // Проверка наличия секретного ключа
        if (!process.env.JWT_SECRET) {
            return res.status(500).json({ message: 'Секретный ключ не установлен' });
        }

        // Декодируем токен и получаем userId
        const decoded = jwt.verify(token, process.env.JWT_SECRET);
        const userId = decoded && decoded.userId;

        // Проверка наличия userId
        if (!userId) {
            return res.status(400).json({ message: 'Токен недействителен' });
        }

        // Обновляем статус пользователя в базе данных
        const result = await pool.query('UPDATE users SET isVerified = $1 WHERE id = $2 RETURNING *', [true, userId]);

        // Проверка, что обновление произошло успешно
        if (result.rowCount === 0) {
            return res.status(400).json({ message: 'Пользователь не найден' });
        }

        res.json({ message: 'Электронная почта успешно подтверждена!' });
    } catch (err) {
        console.error("Ошибка:", err);

        if (err.name === 'TokenExpiredError') {
            res.status(401).json({ message: 'Токен истек' });
        } else {
            res.status(401).json({ message: 'Неверный токен' });
        }
    }
});

module.exports = router;
