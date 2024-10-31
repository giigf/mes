const { exec } = require('child_process');
const path = require('path');

const pgPort = 5555; // ваш порт

// Построение относительных путей
const pgCtlPath = path.join(__dirname, '..', 'mes', 'pgsql', 'bin', 'pg_ctl');
const dataPath = path.join(__dirname, '..', 'mes', 'pgsql', 'data');


function startPostgres() {
    return new Promise((resolve, reject) => {
        exec(`"${pgCtlPath}" restart -D "${dataPath}"`, (error, stdout, stderr) => {
            if (error) {
                console.error(`Ошибка запуска PostgreSQL: ${error.message}`);
                reject(error);
                return;
            }

            console.log(`PostgreSQL запущен на порту ${pgPort}`);
            resolve(stdout);
        });
    });
}

// Функция для запуска Node.js сервера
function startNodeServer() {
    exec('node ./server/server.js', (error, stdout, stderr) => {
        if (error) {
            console.error(`Ошибка запуска Node.js сервера: ${error.message}`);
            return;
        }

        console.log(`Node.js сервер запущен: ${stdout}`);
    });
}

// Основной запуск
startPostgres()
    .then(() => {
        startNodeServer(); // Запускаем сервер только после запуска PostgreSQL
    })
    .catch((error) => {
        console.error('Не удалось запустить PostgreSQL. Проверьте настройки.', error);
    });
