CREATE DATABASE QLBH
GO
USE QLBH
GO
CREATE TABLE KhachHang
(
	MaKH CHAR(4) UNIQUE NOT NULL,
	HoTen VARCHAR(40),
	DiaChi VARCHAR(50),
	SoDT VARCHAR(20),
	NgaySinh SMALLDATETIME,
	DoanhSo MONEY,
	NgayDK SMALLDATETIME,
	CONSTRAINT PK_KhachHang PRIMARY KEY (MaKH)
)
GO
CREATE TABLE NhanVien
(
	MaNV CHAR(4),
	HoTen VARCHAR(40),
	SoDT VARCHAR(20),
	NgayVL SMALLDATETIME,
	CONSTRAINT PK_NhanVien PRIMARY KEY (MaNV)
)
GO
CREATE TABLE SanPham
(
	MaSP CHAR(4),
	TenSP VARCHAR(40),
	DVT VARCHAR(20),
	NuocSX VARCHAR(40),
	Gia MONEY,
	CONSTRAINT PK_SanPham PRIMARY KEY (MaSP)
)
GO
CREATE TABLE HoaDon
(
	SoHD INT,
	NgayHD SMALLDATETIME,
	MaKH CHAR(4),
	MaNV CHAR(4),
	TriGia MONEY,
	CONSTRAINT PK_HoaDon PRIMARY KEY (SoHD)
)
GO
CREATE TABLE CTHD
(
	SoHD INT,
	MaSP CHAR(4),
	SL INT,
	CONSTRAINT PK_CTHD PRIMARY KEY (SoHD, MaSP)
)
GO

SET DATEFORMAT DMY 

GO 

INSERT INTO NhanVien(MaNV,HoTen,SODT,NgayVL) VALUES ('NV01','NGUYEN NHU NHUT','0927345678','13/04/2006')
INSERT INTO NhanVien(MaNV,HoTen,SODT,NgayVL) VALUES ('NV02','LE THI PHI YEN','0987567390','21/04/2006')
INSERT INTO NhanVien(MaNV,HoTen,SODT,NgayVL) VALUES ('NV03','NGUYEN VAN B','0997047382','27/04/2006')
INSERT INTO NhanVien(MaNV,HoTen,SODT,NgayVL) VALUES ('NV04','NGO THANH TUAN','0913758498','24/06/2006')
INSERT INTO NhanVien(MaNV,HoTen,SODT,NgayVL) VALUES ('NV05','NGUYEN THI TRUC THANH','0918590387','20/07/2006')

INSERT INTO KhachHang(MaKH,HoTen,DiaChi,SODT,NgaySinh,NgayDK,DoanhSo) VALUES ('KH01','NGUYEN VAN A','731TRAN HUNG DAO,Q5,THHCM','08823451','22/10/1960','22/07/2006',13060000)
INSERT INTO KhachHang(MaKH,HoTen,DiaChi,SODT,NgaySinh,NgayDK,DoanhSo) VALUES ('KH02','TRAN NGOC HAN','23/5NGUYEN TRAI,Q5,TPHCM','0908256478','03/04/1974','30/07/2006',280000)
INSERT INTO KhachHang(MaKH,HoTen,DiaChi,SODT,NgaySinh,NgayDK,DoanhSo) VALUES ('KH03','TRAN NGOC LINH','45NGUYEN CANH CHAN,Q1,TPHCM','0938776266','10/06/1980','05/05/2006',3860000)
INSERT INTO KhachHang(MaKH,HoTen,DiaChi,SODT,NgaySinh,NgayDK,DoanhSo) VALUES ('KH04','TRAN MINH LONG','50/34LE DAI HANH,Q10,TPHCM','0917325476','09/03/1965','02/10/2006',250000)
INSERT INTO KhachHang(MaKH,HoTen,DiaChi,SODT,NgaySinh,NgayDK,DoanhSo) VALUES ('KH05','LE NHAT MINH','34TRUONG DINH,Q3,TPHCM','08246108','10/03/1950','28/10/2006',21000)
INSERT INTO KhachHang(MaKH,HoTen,DiaChi,SODT,NgaySinh,NgayDK,DoanhSo) VALUES ('KH06','LE HOAI THUONG','227NGUYEN VAN CU,Q5,TPHCM','08631738','31/12/1981','24/11/2006',915000)
INSERT INTO KhachHang(MaKH,HoTen,DiaChi,SODT,NgaySinh,NgayDK,DoanhSo) VALUES ('KH07','NGUYEN VAN TAM','32/3 TRAN BINH TRONG,Q5,TPHCM','0916783565','06/06/1971','01/12/2006',12500)
INSERT INTO KhachHang(MaKH,HoTen,DiaChi,SODT,NgaySinh,NgayDK,DoanhSo) VALUES ('KH08','PHAN THI THANH','45/2 AN DUONG VUONG,Q5,TPHCM','0938435756','10/01/1971','13/12/2006',365000)
INSERT INTO KhachHang(MaKH,HoTen,DiaChi,SODT,NgaySinh,NgayDK,DoanhSo) VALUES ('KH09','LE HA VINH','837 LE HONG PHONG,Q5,TPHCM','08654763','03/03/1979','14/01/2007',70000)
INSERT INTO KhachHang(MaKH,HoTen,DiaChi,SODT,NgaySinh,NgayDK,DoanhSo) VALUES ('KH10','HA DUY LAP','34/34B NGUYEN TRAI,Q5,TPHCM','08768904','02/05/1983','16/01/2007',67500)

INSERT INTO SanPham(MaSP,TenSP,DVT,NuocSX,Gia) VALUES ('BC01','BUT CHI','CAY','SINGAPORE',3000)
INSERT INTO SanPham(MaSP,TenSP,DVT,NuocSX,Gia) VALUES ('BC02','BUT CHI','CAY','SINGAPORE',5000)
INSERT INTO SanPham(MaSP,TenSP,DVT,NuocSX,Gia) VALUES ('BC03','BUT CHI','CAY','VIETNAM',3500)
INSERT INTO SanPham(MaSP,TenSP,DVT,NuocSX,Gia) VALUES ('BC04','BUT CHI','HOP','VIETNAM',30000)
INSERT INTO SanPham(MaSP,TenSP,DVT,NuocSX,Gia) VALUES ('BB01','BUT BI','CAY','VIETNAM',5000)
INSERT INTO SanPham(MaSP,TenSP,DVT,NuocSX,Gia) VALUES ('BB02','BUT BI','CAY','TRUNGQUOC',7000)
INSERT INTO SanPham(MaSP,TenSP,DVT,NuocSX,Gia) VALUES ('BB03','BUT BI','HOP','THAILAN',100000)
INSERT INTO SanPham(MaSP,TenSP,DVT,NuocSX,Gia) VALUES ('TV01','TAP 100 TRANG GiaY MONG','QUYEN','TRUNGQUOC',2500)
INSERT INTO SanPham(MaSP,TenSP,DVT,NuocSX,Gia) VALUES ('TV02','TAP 200 TRANG GiaY MONG','QUYEN','TRUNGQUOC',4500)
INSERT INTO SanPham(MaSP,TenSP,DVT,NuocSX,Gia) VALUES ('TV03','TAP 100 TRANG GiaY TOT','QUYEN','VIETNAM',3000)
INSERT INTO SanPham(MaSP,TenSP,DVT,NuocSX,Gia) VALUES ('TV04','TAP 200 TRANG GiaY TOT','QUYEN','VIETNAM',5500)
INSERT INTO SanPham(MaSP,TenSP,DVT,NuocSX,Gia) VALUES ('TV05','TAP 100 TRANG ','CHUC','VIETNAM',23000)
INSERT INTO SanPham(MaSP,TenSP,DVT,NuocSX,Gia) VALUES ('TV06','TAP 200 TRANG ','CHUC','VIETNAM',53000)
INSERT INTO SanPham(MaSP,TenSP,DVT,NuocSX,Gia) VALUES ('TV07','TAP 100 TRANG ','CHUC','TRUNGQUOC',34000)
INSERT INTO SanPham(MaSP,TenSP,DVT,NuocSX,Gia) VALUES ('ST01','SO TAY 500 TRANG','QUYEN','TRUNGQUOC',40000)
INSERT INTO SanPham(MaSP,TenSP,DVT,NuocSX,Gia) VALUES ('ST02','SO TAY LOAI 1','QUYEN','VIETNAM',55000)
INSERT INTO SanPham(MaSP,TenSP,DVT,NuocSX,Gia) VALUES ('ST03','SO TAY LOAI 2','QUYEN','VIETNAM',51000)
INSERT INTO SanPham(MaSP,TenSP,DVT,NuocSX,Gia) VALUES ('ST04','SO TAY','QUYEN','THAILAN',55000)
INSERT INTO SanPham(MaSP,TenSP,DVT,NuocSX,Gia) VALUES ('ST05','SO TAY MONG','QUYEN','THAILAN',20000)
INSERT INTO SanPham(MaSP,TenSP,DVT,NuocSX,Gia) VALUES ('ST06','PHAN VIET BANG','HOP','VIETNAM',5000)
INSERT INTO SanPham(MaSP,TenSP,DVT,NuocSX,Gia) VALUES ('ST07','PHAN KHONG BUI','HOP','VIETNAM',7000)
INSERT INTO SanPham(MaSP,TenSP,DVT,NuocSX,Gia) VALUES ('ST08','BONG BAMG','CAI','VIETNAM',1000)
INSERT INTO SanPham(MaSP,TenSP,DVT,NuocSX,Gia) VALUES ('ST09','BUT LONG','CAY','VIETNAM',5000)
INSERT INTO SanPham(MaSP,TenSP,DVT,NuocSX,Gia) VALUES ('ST10','BUT LONG','CAY','TRUNGQUOC',7000)

INSERT INTO HoaDon(SoHD,NgayHD,MaKH,MaNV,TriGia) VALUES (1001,'27/07/2006','KH01','NV01',320000)
INSERT INTO HoaDon(SoHD,NgayHD,MaKH,MaNV,TriGia) VALUES (1002,'10/08/2006','KH01','NV02',840000)
INSERT INTO HoaDon(SoHD,NgayHD,MaKH,MaNV,TriGia) VALUES (1003,'23/08/2006','KH02','NV01',100000)
INSERT INTO HoaDon(SoHD,NgayHD,MaKH,MaNV,TriGia) VALUES (1004,'01/09/2006','KH02','NV01',180000)
INSERT INTO HoaDon(SoHD,NgayHD,MaKH,MaNV,TriGia) VALUES (1005,'20/10/2006','KH01','NV02',3800000)
INSERT INTO HoaDon(SoHD,NgayHD,MaKH,MaNV,TriGia) VALUES (1006,'16/10/2006','KH01','NV03',2430000)
INSERT INTO HoaDon(SoHD,NgayHD,MaKH,MaNV,TriGia) VALUES (1007,'28/10/2006','KH03','NV03',510000)
INSERT INTO HoaDon(SoHD,NgayHD,MaKH,MaNV,TriGia) VALUES (1008,'28/10/2006','KH01','NV03',440000)
INSERT INTO HoaDon(SoHD,NgayHD,MaKH,MaNV,TriGia) VALUES (1009,'28/10/2006','KH03','NV04',200000)
INSERT INTO HoaDon(SoHD,NgayHD,MaKH,MaNV,TriGia) VALUES (1010,'01/11/2006','KH01','NV01',5200000)
INSERT INTO HoaDon(SoHD,NgayHD,MaKH,MaNV,TriGia) VALUES (1011,'04/11/2006','KH04','NV03',250000)
INSERT INTO HoaDon(SoHD,NgayHD,MaKH,MaNV,TriGia) VALUES (1012,'30/11/2006','KH05','NV03',21000)
INSERT INTO HoaDon(SoHD,NgayHD,MaKH,MaNV,TriGia) VALUES (1013,'12/12/2006','KH06','NV01',5000)
INSERT INTO HoaDon(SoHD,NgayHD,MaKH,MaNV,TriGia) VALUES (1014,'31/12/2006','KH03','NV02',3150000)
INSERT INTO HoaDon(SoHD,NgayHD,MaKH,MaNV,TriGia) VALUES (1015,'01/01/2007','KH06','NV01',910000)
INSERT INTO HoaDon(SoHD,NgayHD,MaKH,MaNV,TriGia) VALUES (1016,'01/01/2007','KH07','NV02',12500)
INSERT INTO HoaDon(SoHD,NgayHD,MaKH,MaNV,TriGia) VALUES (1017,'02/01/2007','KH08','NV03',35000)
INSERT INTO HoaDon(SoHD,NgayHD,MaKH,MaNV,TriGia) VALUES (1018,'13/01/2007','KH08','NV03',330000)
INSERT INTO HoaDon(SoHD,NgayHD,MaKH,MaNV,TriGia) VALUES (1019,'13/01/2007','KH01','NV03',30000)
INSERT INTO HoaDon(SoHD,NgayHD,MaKH,MaNV,TriGia) VALUES (1020,'14/01/2007','KH09','NV04',70000)
INSERT INTO HoaDon(SoHD,NgayHD,MaKH,MaNV,TriGia) VALUES (1021,'16/01/2007','KH10','NV03',67500)
INSERT INTO HoaDon(SoHD,NgayHD,MaKH,MaNV,TriGia) VALUES (1022,'16/01/2007',NULL,'NV03',7000)
INSERT INTO HoaDon(SoHD,NgayHD,MaKH,MaNV,TriGia) VALUES (1023,'17/01/2007',NULL,'NV01',330000)

INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1001,'TV02',10)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1001,'ST01',5)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1001,'BC01',5)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1001,'BC02',10)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1001,'ST08',10)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1002,'BC04',20)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1002,'BB01',20)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1002,'BB02',20)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1003,'BB03',10)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1004,'TV01',20)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1004,'TV02',10)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1004,'TV03',10)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1004,'TV04',10)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1005,'TV05',50)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1005,'TV06',50)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1006,'TV07',20)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1006,'ST01',30)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1006,'ST02',10)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1007,'ST03',10)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1008,'ST04',8)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1009,'ST05',10)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1010,'TV07',50)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1010,'ST07',50)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1010,'ST08',100)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1010,'ST04',50)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1010,'TV03',100)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1011,'ST06',50)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1012,'ST07',3)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1013,'ST08',5)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1014,'BC02',80)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1014,'BB02',100)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1014,'BC04',60)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1014,'BB01',50)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1015,'BB02',30)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1015,'BB03',7)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1016,'TV01',5)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1017,'TV02',1)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1017,'TV03',1)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1017,'TV04',5)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1018,'ST04',6)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1019,'ST05',1)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1019,'ST06',2)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1020,'ST07',10)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1021,'ST08',5)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1021,'TV01',7)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1021,'TV02',10)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1022,'ST07',1)
INSERT INTO CTHD(SoHD,MaSP,SL) VALUES (1023,'ST04',6)

GO

ALTER TABLE HoaDon ADD CONSTRAINT FK_HD_KH FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH)
ALTER TABLE HoaDon ADD CONSTRAINT FK_HD_NV FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV)
ALTER TABLE CTHD ADD CONSTRAINT FK_CTHD_HD FOREIGN KEY (SoHD) REFERENCES HoaDon(SoHD)
ALTER TABLE CTHD ADD CONSTRAINT FK_CTHD_SP FOREIGN KEY (MaSP) REFERENCES SanPham(MaSP)
