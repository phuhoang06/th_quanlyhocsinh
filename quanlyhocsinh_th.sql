create database quanlydiemthi;

use quanlydiemthi;

create table hocsinh(
maHS varchar(25) primary key,
tenHS varchar(50),
ngaysinh datetime,
lop varchar(20),
gt varchar(20)
);

create table monhoc(
maMH varchar(20) primary key ,
tenMH varchar(20),
maGV varchar(20)
);

create table bangdiem(
MaHS VARCHAR(20),
 MaMH VARCHAR(20),
 DiemThi INT,
 NgayKT DATETIME,
 PRIMARY KEY (MaHS, MaMH),
 FOREIGN KEY (MaHS) REFERENCES HocSinh(MaHS),
 FOREIGN KEY (MaMH) REFERENCES MonHoc(MaMH)
);

CREATE TABLE GiaoVien(
 MaGV VARCHAR(20) PRIMARY KEY,
 TenGV VARCHAR(20),
 SDT VARCHAR(10)
);


ALTER TABLE MonHoc ADD CONSTRAINT FK_MaGV FOREIGN KEY (MaGV) REFERENCES GiaoVien(MaGV);