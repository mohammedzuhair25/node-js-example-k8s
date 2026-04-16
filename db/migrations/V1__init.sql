
CREATE USER IF NOT EXISTS 'appuser'@'%' IDENTIFIED BY 'apppassword';

-- Replace 'your_database' with your DB name
GRANT ALL PRIVILEGES ON app_db.* TO 'appuser'@'%';

FLUSH PRIVILEGES;

CREATE DATABASE IF NOT EXISTS app_db;
USE app_db;

CREATE TABLE IF NOT EXISTS example (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  description VARCHAR(255),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO example (name, description) VALUES
  ('demo row', 'First example record'),
  ('sample row', 'Second example record');