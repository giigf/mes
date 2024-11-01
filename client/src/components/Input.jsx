// src/components/Input.jsx
import React, { useState } from 'react';
import './style.css';

export default function Input({ type = 'text', placeholder, value, onChange }) {
  const [isFocused, setIsFocused] = useState(false);

  const handleFocus = () => setIsFocused(true);
  const handleBlur = () => setIsFocused(false);

  return (
    <div className={`input-container ${isFocused ? 'focused' : ''}`}>
      <input
        type={type}
        placeholder={placeholder}
        value={value}
        onChange={onChange}
        onFocus={handleFocus}
        onBlur={handleBlur}
        className="animated-input"
      />
    </div>
  );
}
