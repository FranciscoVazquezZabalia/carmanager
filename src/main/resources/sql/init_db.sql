-- Create the database
CREATE DATABASE IF NOT EXISTS carmanager;
USE carmanager;

-- 1. CARS TABLE
CREATE TABLE cars (
id INT AUTO_INCREMENT PRIMARY KEY,
brand VARCHAR(50) NOT NULL,
model VARCHAR(50) NOT NULL,
engine_power INT NOT NULL,
car_type VARCHAR(50) NOT NULL,
registration_date DATE NOT NULL,
image_path VARCHAR(255)
);

-- 2. USERS TABLE
CREATE TABLE users (
id INT AUTO_INCREMENT PRIMARY KEY,
 username VARCHAR(50) NOT NULL UNIQUE,
email VARCHAR(100) NOT NULL UNIQUE,
password VARCHAR(255) NOT NULL,
role VARCHAR(10) DEFAULT 'user',
favorite_car_id INT UNIQUE,
FOREIGN KEY (favorite_car_id) REFERENCES cars(id) ON DELETE SET NULL
);

-- 3. INSERT DEFAULT ADMIN
INSERT INTO users (username, email, password, role)
VALUES ('admin', 'admin@carmanager.com', '$2a$10$vI8aWBnW3fID.021/sOwce1/5oZMQOFOkYc9Y9/A16v1qG.Vq5j/W', 'admin');