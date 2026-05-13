CREATE DATABASE IF NOT EXISTS shubham_db;
USE shubham_db;

CREATE TABLE IF NOT EXISTS cloud_requests (
    id INT AUTO_INCREMENT PRIMARY KEY,
    client_name VARCHAR(100),
    service_type VARCHAR(50),
    budget INT,
    details TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
