const express = require('express');
const authRoutes = require('./authRoutes');
require('dotenv').config({ path: __dirname + '/.env' });

const app = express();
app.use(express.json());

// Подключение маршрутов
app.use('/auth', authRoutes);

// Запуск сервера
const PORT = process.env.PORT || 3010;
app.listen(PORT, () => {
  console.log(`Сервер запущен на порту ${PORT}`);
});
