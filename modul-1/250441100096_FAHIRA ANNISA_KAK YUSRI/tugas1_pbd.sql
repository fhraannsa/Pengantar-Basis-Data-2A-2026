create database koleksi;
use koleksi;
create table koleksi_langka (
    id_buku bigint primary key,
    judul varchar(250) not null,
    tahun_terbit year not null,
    estimasi_harga decimal(18,2) not null
);
show tables;
describe koleksi_langka;
drop database koleksi_angka