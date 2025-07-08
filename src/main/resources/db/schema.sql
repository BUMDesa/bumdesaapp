-- DROP jika sudah ada
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS roles;

-- Buat tabel roles
CREATE TABLE roles (
    role_id INT PRIMARY KEY IDENTITY(1,1),
    role_name VARCHAR(50) NOT NULL UNIQUE,
    description VARCHAR(200)
);

-- Buat tabel users
CREATE TABLE users (
    user_id INT PRIMARY KEY IDENTITY(1,1),
    username VARCHAR(50) NOT NULL UNIQUE,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(20),
    role_id INT,
    is_active BIT DEFAULT 1,
    created_at DATETIME DEFAULT GETDATE(),
    role VARCHAR(50),
    password VARCHAR(255),
    FOREIGN KEY (role_id) REFERENCES roles(role_id)
);
