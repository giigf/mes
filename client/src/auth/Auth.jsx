// src/auth/Auth.jsx
import React, { useState } from 'react';
import Register from './Register';
import Login from './Login';
import Button from '../components/Button';

export default function Auth() {
  const [isRegister, setIsRegister] = useState(false);

  return (
    <div style={{ maxWidth: '400px', margin: '0 auto', padding: '20px', border: '1px solid #ccc', borderRadius: '8px', boxShadow: '0 4px 8px rgba(0, 0, 0, 0.1)' }}>
      {isRegister ? (
        <>
          <Register />
          <p>
            Уже есть аккаунт?{' '}
            <Button text="Войти" onClick={() => setIsRegister(false)} />
          </p>
        </>
      ) : (
        <>
          <Login />
          <p>
            Нет аккаунта?{' '}
            <Button text="Зарегистрироваться" onClick={() => setIsRegister(true)} />
          </p>
        </>
      )}
    </div>
  );
}
