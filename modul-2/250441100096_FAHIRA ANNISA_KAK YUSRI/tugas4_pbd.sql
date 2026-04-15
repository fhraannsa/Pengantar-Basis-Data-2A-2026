create database rumah_sakit;
use rumah_sakit;
create table dokter(
	id_dokter int primary key,
    nama_dokter varchar(100) not null,
    spesialisasi varchar(100)
);
insert into dokter values
(101, 'Dr. Budi', 'hewan'),
(211, 'Dr. Dania', 'gigi');
select * from dokter;

create table pasien (
	id_pasien int primary key,
    nama_pasien varchar(100) not null,
    tanggal_lahir date,
    no_telepon varchar(15)
);

insert into pasien values
(1, 'Liza', '2007-10-04', '08247689258'),
(2, 'Wilda', '2006-01-13', '081729846990');
select * from pasien;

create table rekam_medis(
	id_rekam int primary key,
    id_pasien int not null,
    id_dokter int not null,
    tanggal_periksa date not null,
    diagnosis text,
    foreign key (id_pasien)
		references pasien(id_pasien)
        on delete restrict,
	foreign key (id_dokter)
        references dokter(id_dokter)
        on delete cascade
);
insert into rekam_medis values
(1, 1, 101, '2025-03-11', 'batuk'),
(2, 2, 211,  '2025-05-14', 'flu' );
select * from rekam_medis;

insert into rekam_medis values
(1, 1, 101, '2025-03-11', 'batuk'),
(1, 1, 101, '2025-03-11', 'flu');
select * from rekam_medis;

delete from dokter
where id_dokter = 101;
select * from rekam_medis;

drop database rumah_sakit;
