// src/auth/Auth.jsx
import React, { useState } from 'react';
import Input from '../components/Input';
import Button from '../components/Button';
import axios from 'axios';
import './auth.css'

export default function Login() {
  const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');
  const [message, setMessage] = useState('');

  const handleLogin = async () => {
    try {
      const response = await axios.post('http://localhost:3555/auth/login', {
        username,
        password,
      });
      setMessage(response.data.message);
      console.log('Авторизация успешна:', response.data.user);
    } catch (error) {
      setMessage(error.response?.data?.message || 'Ошибка при авторизации');
      console.error('Ошибка авторизации:', error);
    }
  };

  return (
    <div className='form-login'>
      <h2>LOGIN</h2>
      <Input
        type="text"
        placeholder="Имя пользователя"
        value={username}
        onChange={(e) => setUsername(e.target.value)}
      />
      <Input
        type="password"
        placeholder="Пароль"
        value={password}
        onChange={(e) => setPassword(e.target.value)}
      />
      <Button text="Войти" onClick={handleLogin} />
      {message && <p>{message}</p>}
    </div>
  );
}
