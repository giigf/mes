// src/auth/Auth.jsx
import React, { useState } from 'react';
import Register from './Register';
import Login from './Login';
import Button from '../components/Button';
import './auth.css'

export default function Auth() {
  const [isRegister, setIsRegister] = useState(false);

  return (
    <div className="form-auth">
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
