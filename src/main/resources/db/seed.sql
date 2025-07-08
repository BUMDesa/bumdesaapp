-- Data role
INSERT INTO roles (role_name, description) VALUES
('Admin BUMDes', 'Akses semua unit usaha dan semua fitur'),
('Operator PAM', 'Operator untuk unit PAM, CRUD meter, pembayaran, laporan'),
('Operator Mikrotik', 'Operator untuk unit Mikrotik, monitoring dan konfigurasi'),
('Akuntan', 'Manajemen akun dan laporan keuangan'),
('Petugas Kolektor', 'Petugas penagihan piutang atau cicilan');

-- Data admin user
INSERT INTO users (username, full_name, email, phone, role_id, is_active, password)
VALUES ('admin', 'Admin Utama', 'sugitaiwayan22@gmail.com', '085161634155', 1, 1, '$2a$10$eBvgvt7TF2oIxoLPPdzY8uGVL1nYGGK3ZmQF1uKAvfvEFUbgE2J8i');
