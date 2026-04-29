CREATE DATABASE siakad_sandbox;
USE siakad_sandbox;
CREATE TABLE dosen(
	id_dosen INT PRIMARY KEY,
    nama_dosen VARCHAR (100),
    bidang_keahlian VARCHAR (100)
);
CREATE TABLE mata_kuliah(
	id_mata_kuliah INT PRIMARY KEY,
    nama_mk VARCHAR (100),
    sks INT
);
CREATE TABLE mahasiswa (
    nim VARCHAR(15) PRIMARY KEY,
    nama VARCHAR(100),
    angkatan YEAR,
    status ENUM('aktif','pasif')
);
CREATE TABLE krs (
    id_krs INT AUTO_INCREMENT PRIMARY KEY,
    nim VARCHAR(15),
    kode_mk VARCHAR(10),
    sks INT,
    FOREIGN KEY (nim) REFERENCES mahasiswa(nim)
);