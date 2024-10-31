const express = require('express');
const router = express.Router();
const userController = require('./userController');

// Маршрут для регистрации
router.post('/register', userController.registerUser);

// Маршрут для авторизации
router.post('/login', userController.loginUser);

module.exports = router;
