CREATE DATABASE transaksi;
USE transaksi;
CREATE TABLE transaksi_harian (
    id INT PRIMARY KEY,
    jumlah INT
);

TRUNCATE TABLE transaksi_harian;

INSERT INTO transaksi_harian VALUES (1, 5000);

DROP TABLE transaksi_harian;

CREATE TABLE transaksi_harian (
    id INT PRIMARY KEY,
    jumlah INT
);