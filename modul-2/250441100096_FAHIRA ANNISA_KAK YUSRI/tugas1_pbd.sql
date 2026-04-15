create database rumah_sakit;
use rumah_sakit;
create table dokter(
	id_dokter int primary key,
    nama_dokter varchar(100) not null,
    spesialisasi varchar(100)
);
show tables;
describe dokter;

create table pasien (
	id_pasien int primary key,
    nama_pasien varchar(100) not null,
    tanggal_lahir date,
    no_telepon varchar(12)
);
