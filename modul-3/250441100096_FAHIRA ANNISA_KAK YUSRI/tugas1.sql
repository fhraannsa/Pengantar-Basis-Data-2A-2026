create database inventaris;
use inventaris;
create table inventaris_gudang_pusat(
	id_barang int primary key,
    nama_barang varchar(100),
    kode_sku varchar(50),
    kategori varchar(50),
    harga_satuan decimal,
    stok integer,
    lokasi_rak varchar(20),
    status_qc varchar(20)
);

insert into inventaris_gudang_pusat 
(id_barang, nama_barang, kode_sku, kategori, harga_satuan, stok, lokasi_rak, status_qc) values
('101', 'Gaming Laptop G5', 'ELEC-422-X', 'Laptop', '15500000', '12', 'A-01', 'Lulus'),
('102', 'Wireless Mouse', 'ACC-101-Y', 'Aksesoris', '250000', '150', NULL, 'Lulus'),
('103', 'Ultra Wide Monitor', 'ELEC-881-X', 'Monitor', '7200000', '0', 'B-05', 'Pending'),
('104', 'Mechanical Keyboard', 'ACC-202-Z', 'Aksesoris', '1200000', '45', 'B-02', 'Lulus'),
('105', 'Office Chair Pro', 'FURN-991-P', 'Furniture', '3500000', '8', 'C-01', NULL),
('106', 'USB-C Hub 10-in-1', 'ACC-303-X', 'Aksesoris', '850000', '0', NULL, 'Gagal'),
('107', 'Smartphone Z Flip', 'ELEC-112-Y', 'Smartphone', '14000000', '4', 'A-03', 'Lulus'),
('108', 'Standing Desk', 'FURN-882-Q', 'Furniture', '5000000', '15', 'C-02', 'Lulus'),
('109', 'Headset Gaming RGB', 'ACC-404-X', 'Aksesoris', '1100000', '25', NULL, 'Lulus'),
('110', 'Thunderbolt Cable', 'ACC-505-Z', 'Aksesoris', '450000', '100', 'B-03', 'Lulus');

select * from inventaris_gudang_pusat;

-- No 1 
select nama_barang, kategori, kode_sku
from inventaris_gudang_pusat
where lokasi_rak is null
and stok > 0
and status_qc = 'Lulus';


-- No 2
select distinct kategori from inventaris_gudang_pusat
where kode_sku like 'ELEC%X' and harga_satuan >5000000;

-- No 3
select nama_barang, stok,
	case
        when stok = 0 and kategori = 'Aksesoris' 
		then 'Urgent - Restock Segera'
        when stok < 10 and stok <> 0 and kategori in ('Laptop', 'Smartphone') 
		then 'High Priority'
        when stok between 10 and 50 
		then 'Medium'
        else 'Aman'
end as prioritas_restock
from inventaris_gudang_pusat
order by stok ASC;

-- NO 4
select * from inventaris_gudang_pusat
where lokasi_rak like 'B%'                
  and not (harga_satuan between 1000000 and 5000000)  
  and kategori <> 'Monitor';              

-- NO 5
select nama_barang, harga_satuan, status_qc from inventaris_gudang_pusat
where kategori <> 'Furniture'      
  and status_qc = 'Lulus'          
order by harga_satuan desc         
limit 3;                           

drop database inventaris; 

