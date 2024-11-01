// src/auth/Register.jsx
import React, { useState } from 'react';
import Input from '../components/Input';
import Button from '../components/Button';
import axios from 'axios';

export default function Register() {
  const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');
  const [email, setEmail] = useState('');
  const [message, setMessage] = useState('');
  const [errors, setErrors] = useState({});

  const validateEmail = (email) => {
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(email);
  };

  const validatePassword = (password) => {
    const passwordRegex = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;
    return passwordRegex.test(password);
  };

  const handleRegister = async () => {
    // Проверка валидности данных
    const newErrors = {};
    if (!validateEmail(email)) {
      newErrors.email = 'Неверный формат электронной почты';
    }
    if (!validatePassword(password)) {
      newErrors.password = 'Пароль должен быть не менее 8 символов и содержать буквы и цифры';
    }

    if (Object.keys(newErrors).length > 0) {
      setErrors(newErrors);
      return;
    }

    setErrors({});

    try {
      const response = await axios.post('http://localhost:3555/auth/register', {
        username,
        password,
        email,
      });
      setMessage(response.data.message);
      console.log('Регистрация успешна:', response.data.user);
    } catch (error) {
      setMessage(error.response?.data?.message || 'Ошибка при регистрации');
      console.error('Ошибка регистрации:', error);
    }
  };

  return (
    <div style={{
      maxWidth: '300px',
      margin: '0 auto',
      padding: '20px',
      border: '1px solid #ccc',
      borderRadius: '8px',
      boxShadow: '0 4px 8px rgba(0, 0, 0, 0.1)'
    }}>
      <h2>Регистрация</h2>
      <Input
        type="text"
        placeholder="Имя пользователя"
        value={username}
        onChange={(e) => setUsername(e.target.value)}
      />
      <Input
        type="email"
        placeholder="Электронная почта"
        value={email}
        onChange={(e) => setEmail(e.target.value)}
      />
      {errors.email && <p style={{ color: 'red' }}>{errors.email}</p>}
      <Input
        type="password"
        placeholder="Пароль"
        value={password}
        onChange={(e) => setPassword(e.target.value)}
      />
      {errors.password && <p style={{ color: 'red' }}>{errors.password}</p>}
      <Button text="Зарегистрироваться" onClick={handleRegister} />
      {message && <p>{message}</p>}
    </div>
  );
}
