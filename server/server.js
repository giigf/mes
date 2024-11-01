// server/server.js
const express = require('express');
const authRoutes = require('./authRoutes');
const cors = require('cors');

const app = express();
app.use(express.json());

// Разрешаем запросы от всех источников
app.use(cors());

// Подключение маршрутов
app.use('/auth', authRoutes);

const PORT = process.env.PORT || 3555;
app.listen(PORT, () => {
  console.log(`Сервер запущен на порту ${PORT}`);
});
