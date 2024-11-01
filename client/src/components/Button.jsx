// components/Button.js
import React from 'react';

export default function Button({ text, onClick }) {
  return (
    <button
      onClick={onClick}
      style={{
        padding: '10px 20px',
        backgroundColor: '#007bff',
        color: '#fff',
        border: 'none',
        borderRadius: '4px',
        cursor: 'pointer',
        width: '100%',
      }}
    >
      {text}
    </button>
  );
}
