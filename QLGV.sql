CREATE DATABASE QLGV
GO
USE QLGV
GO
CREATE TABLE Khoa
(
	MaKhoa VARCHAR(4),
	TenKhoa VARCHAR(40),
	NgTLap SMALLDATETIME,
	TrgKhoa CHAR(4),
	CONSTRAINT PK_Khoa PRIMARY KEY (MaKhoa)
)
GO
CREATE TABLE MonHoc
(
	MaMH VARCHAR(10),
	TenMH VARCHAR(40),
	TCLT TINYINT,
	TCTH TINYINT,
	MaKhoa VARCHAR(4),
	CONSTRAINT PK_MonHoc PRIMARY KEY (MaMH)
)
GO
CREATE TABLE DieuKien
(
	MaMH VARCHAR(10),
	MaMH_Truoc VARCHAR(10),
	CONSTRAINT PK_DieuKien PRIMARY KEY  (MaMH, MaMH_Truoc)
)
GO
CREATE TABLE GiaoVien
(
	MaGV CHAR(4),
	HoTen VARCHAR(40),
	HocVi VARCHAR(10),
	HocHam VARCHAR(10),
	GioiTinh VARCHAR(3),
	NgSinh SMALLDATETIME,
	NgVL SMALLDATETIME,
	HeSo NUMERIC(4,2),
	MucLuong MONEY,
	MaKhoa VARCHAR(4),
	CONSTRAINT PK_GiaoVien PRIMARY KEY (MaGV)
)
GO
CREATE TABLE Lop
(
	MaLop CHAR(3),
	TenLop VARCHAR(40),
	TrgLop CHAR(5),
	SiSo TINYINT,
	MaGVCN CHAR(4),
	CONSTRAINT PK_Lop PRIMARY KEY (MaLop)
)
GO
CREATE TABLE HocVien
(
	MaHV CHAR(5),
	Ho VARCHAR(40),
	Ten VARCHAR(10),
	NgSinh SMALLDATETIME,
	GioiTinh VARCHAR(3),
	NoiSinh VARCHAR(40),
	MaLop CHAR(3),
	CONSTRAINT PK_HocVien PRIMARY KEY (MaHV)
)
GO
CREATE TABLE GiangDay
(
	MaLop CHAR(3),
	MaMH VARCHAR(10),
	MaGV CHAR(4),
	HocKy TINYINT,
	Nam SMALLINT,
	TuNgay SMALLDATETIME,
	DenNgay SMALLDATETIME,
	CONSTRAINT PK_GiangDay PRIMARY KEY (MaLop, MaMH)
)
GO
CREATE TABLE KetQuaThi
(
	MaHV CHAR(5),
	MaMH VARCHAR(10),
	LanThi TINYINT,
	NgThi SMALLDATETIME,
	Diem NUMERIC(4,2),
	KQua VARCHAR(10),
	CONSTRAINT PK_KetQuaThi PRIMARY KEY (MaHV, MaMH, LanThi)
)

GO
SET DATEFORMAT DMY

GO

INSERT INTO KHOA VALUES ('KHMT','Khoa Hoc May Tinh','07/06/2005','GV01')
INSERT INTO KHOA VALUES ('HTTT','He Thong Thong Tin','07/06/2005','GV02')
INSERT INTO KHOA VALUES ('CNPM','Cong Nghe Phan Mem','07/06/2005','GV04')
INSERT INTO KHOA VALUES ('MTT','Mang Va Truyen Thong','20/10/2005','GV03')
INSERT INTO KHOA VALUES ('KTMT','Ky Thuat May Tinh','20/12/2005',NULL) 

INSERT INTO GIAOVIEN VALUES ('GV01','Ho Thanh Son','PTS','GS','Nam','02/05/1950','11/01/2004','5.00',2250000,'KHMT')
INSERT INTO GIAOVIEN VALUES ('GV02','Tran Tam Thanh','TS','PGS','Nam','17/02/1965','20/04/2004','4.50',2025000,'HTTT')
INSERT INTO GIAOVIEN VALUES ('GV03','Do Nghiem Phung','TS','GS','Nu','01/08/1950','23/09/2004','4.00',1800000,'CNPM')
INSERT INTO GIAOVIEN VALUES ('GV04','Tran Nam Som','TS','PGS','Nam','22/02/1961','12/01/2005','4.50',2025000,'KTMT')
INSERT INTO GIAOVIEN VALUES ('GV05','Mai Thanh Danh','ThS','GV','Nam','12/03/1958','12/01/2005','3.00',1350000,'HTTT')
INSERT INTO GIAOVIEN VALUES ('GV06','Tran Doan Hung','TS','GV','Nam','11/03/1953','12/01/2005','4.50',2025000,'KHMT')
INSERT INTO GIAOVIEN VALUES ('GV07','Nguyen Minh Tien','ThS','GV','Nam','23/11/1971','01/03/2005','4.00',1800000,'KHMT')
INSERT INTO GIAOVIEN VALUES ('GV08','Le Thi Tran','KS','NULL','Nu','26/03/1974','01/03/2005','1.69',760500,'KHMT')
INSERT INTO GIAOVIEN VALUES ('GV09','Nguyen To Lan','ThS','GV','Nu','31/12/1966','01/03/2005','4.00',1800000,'HTTT')
INSERT INTO GIAOVIEN VALUES ('GV10','Le Tran Anh Loan','KS','NULL','Nu','17/07/1972','01/03/2005','1.86',837000,'CNPM')
INSERT INTO GIAOVIEN VALUES ('GV11','Ho Thanh Tung','CN','GV','Nam','12/01/1980','15/05/2005','2.67',1201500,'MTT')
INSERT INTO GIAOVIEN VALUES ('GV12','Tran Van Anh','CN','NULL','Nu','29/03/1981','15/05/2005','1.69',760500,'CNPM')
INSERT INTO GIAOVIEN VALUES ('GV13','Nguyen Linh Dan','CN','NULL','Nu','23/05/1980','15/05/2005','1.69',760500,'KTMT')
INSERT INTO GIAOVIEN VALUES ('GV14','Truong Minh Chau','ThS','GV','Nu','30/11/1976','15/05/2005','3.00',1350000,'MTT')
INSERT INTO GIAOVIEN VALUES ('GV15','Le Ha Thanh','ThS','GV','Nam','04/05/1978','15/05/2005','3.00',1350000,'KHMT')

INSERT INTO LOP VALUES ('K11','Lop 1 Khoa 1','K1108','11','GV07')
INSERT INTO LOP VALUES ('K12','Lop 2 Khoa 1','K1205','12','GV09')
INSERT INTO LOP VALUES ('K13','Lop 3 Khoa 1','K1305','12','GV14')

INSERT INTO MONHOC VALUES ('THDC','Tin Hoc Dai Cuong','4','1','KHMT')
INSERT INTO MONHOC VALUES ('CTRR','Cau Truc Roi Rac','5','0','KHMT')
INSERT INTO MONHOC VALUES ('CSDL','Co So Du Lieu','3','1','HTTT')
INSERT INTO MONHOC VALUES ('CTDLGT','Cau Truc Du Lieu Va Giai Thuat','3','1','KHMT')
INSERT INTO MONHOC VALUES ('PTTKTT','Phan Tich Thiet Ke Thuat Toan','3','0','KHMT')
INSERT INTO MONHOC VALUES ('DHMT','Do Hoa May Tinh','3','1','KHMT')
INSERT INTO MONHOC VALUES ('KTMT','Kien Truc May Tinh','3','0','KTMT')
INSERT INTO MONHOC VALUES ('TKCSDL','Thiet Ke Co So Du Lieu','3','1','HTTT')
INSERT INTO MONHOC VALUES ('PTTKHTTT','Phan Tich Thiet Ke He Thong Thong Tin','4','1','HTTT')
INSERT INTO MONHOC VALUES ('HDH','He Dieu Hanh','4','0','KHMT')
INSERT INTO MONHOC VALUES ('NMCNPM','Nhap Mon Cong Nghe Phan Mem','3','0','CNPM')
iNSERT INTO MONHOC VALUES ('LTCFW','Lap Trinh C For Win','3','1','CNPM')
INSERT INTO MONHOC VALUES ('LTHDT','Lap Trinh Huong Doi Tuong','3','1','CNPM')

INSERT INTO DIEUKIEN VALUES ('CSDL','CTRR')
INSERT INTO DIEUKIEN VALUES ('CSDL','CTDLGT')
INSERT INTO DIEUKIEN VALUES ('CTDLGT','THDC')
INSERT INTO DIEUKIEN VALUES ('PTTKTT','CTDLGT')
INSERT INTO DIEUKIEN VALUES ('PTTKTT','THDC')
INSERT INTO DIEUKIEN VALUES ('DHMT','THDC')
INSERT INTO DIEUKIEN VALUES ('LTHDT','THDC')
INSERT INTO DIEUKIEN VALUES ('PTTKHTTT','CSDL')

INSERT INTO HOCVIEN VALUES ('K1101','Nguyen Van','A','27/01/1986','Nam','TPHCM','K11')
INSERT INTO HOCVIEN VALUES ('K1102','Tran Ngoc','Han','14/03/1986','Nu','Kien Giang','K11')
INSERT INTO HOCVIEN VALUES ('K1103','Ha Duy','Lap','18/04/1986','Nam','Nghe An','K11')
INSERT INTO HOCVIEN VALUES ('K1104','Tran NGoc ','Linh','30/03/1986','Nu','Tay Ninh','K11')
INSERT INTO HOCVIEN VALUES ('K1105','Tran Minh','Long','27/02/1986','Nam','TPHCM','K11')
INSERT INTO HOCVIEN VALUES ('K1106','Le Nhat ','Minh','24/01/1986','Nam','TPHCM','K11')
INSERT INTO HOCVIEN VALUES ('K1107','Nguyen Nhu','Nhut','27/01/1986','Nam','Ha Noi','K11')
INSERT INTO HOCVIEN VALUES ('K1108','Nguyen Manh','Tam','27/02/1986','Nam','Kien Giang','K11')
INSERT INTO HOCVIEN VALUES ('K1109','Phan Thi Thanh','Tam','27/01/1986','Nu','Vinh Long','K11')
INSERT INTO HOCVIEN VALUES ('K1110','Le Hoai','Thuong','05/02/1986','Nu','Can Tho','K11')
INSERT INTO HOCVIEN VALUES ('K1111','Le Ha','Vinh','25/12/1986','Nam','Vinh Long','K11')
INSERT INTO HOCVIEN VALUES ('K1201','NGuyen Van ','B','11/02/1986','Nam','TPHCM','K12')
INSERT INTO HOCVIEN VALUES ('K1202','Nguyen Thi Kim','Duyen','18/01/1986','Nu','TPHCM','K12')
INSERT INTO HOCVIEN VALUES ('K1203','Tran Thi Kim','Duyen','17/09/1986','Nu','TPHCM','K12')
INSERT INTO HOCVIEN VALUES ('K1204','Truong My','Hanh','19/05/1986','Nu','Dong Nai','K12')
INSERT INTO HOCVIEN VALUES ('K1205','Nguyen Thanh','Nam','17/04/1986','Nam','TPHCM','K12')
INSERT INTO HOCVIEN VALUES ('K1206','NGuyen Thi Truc ','Thanh','04/03/1986','Nu','Kien Giang','K12')
INSERT INTO HOCVIEN VALUES ('K1207','Tran Thi Bich ','Thuy','08/02/1986','Nu','Nghe An','K12')
INSERT INTO HOCVIEN VALUES ('K1208','Huynh Thi Kim','Trieu','08/04/1986','Nu','Tay Ninh','K12')
INSERT INTO HOCVIEN VALUES ('K1209','Pham Thanh','Trieu','23/02/1986','Nam','TPHCM','K12')
INSERT INTO HOCVIEN VALUES ('K1210','Ngo Thanh','Tuan','14/02/1986','Nam','TPHCM','K12')
INSERT INTO HOCVIEN VALUES ('K1211','Do Thi','Xuan','09/03/1986','Nu','Ha Noi','K12')
INSERT INTO HOCVIEN VALUES ('K1212','Le Thi Phi','Yen','12/03/1986','Nu','TPHCM','K12')
INSERT INTO HOCVIEN VALUES ('K1301','NGuyen Thi Kim','Cuc','09/06/1986','Nu','Kien Giang','K13')
INSERT INTO HOCVIEN VALUES ('K1302','Truong Thi My','Hien','18/03/1986','Nu','Nghe An','K13')
INSERT INTO HOCVIEN VALUES ('K1303','Le Duc','Hien','21/03/1986','Nam','Tay Ninh','K13')
INSERT INTO HOCVIEN VALUES ('K1304','Le Quang','Hien','18/04/1986','Nam','TPHCM','K13')
INSERT INTO HOCVIEN VALUES ('K1305','Le Thi ','Huong','27/03/1986','Nu','TPHCM','K13')
INSERT INTO HOCVIEN VALUES ('K1306','Nguyen Thai','Huu','30/03/1986','Nam','Ha Noi','K13')
INSERT INTO HOCVIEN VALUES ('K1307','Tran Minh','Man','28/05/1986','Nam','TPHCM','K13')
INSERT INTO HOCVIEN VALUES ('K1308','Huynh Hieu','Nghia','08/04/1986','Nam','Kien Giang','K13')
INSERT INTO HOCVIEN VALUES ('K1309','Nguyen Trung ','Nghia','18/01/1987','Nam','Nghe An','K13')
INSERT INTO HOCVIEN VALUES ('K1310','Tran Thi Hong','Tham','22/04/1986','Nu','Tay Ninh','K13')
INSERT INTO HOCVIEN VALUES ('K1311','Tran Minh','Thuc','04/04/1986','Nam','TPHCM','K13')
INSERT INTO HOCVIEN VALUES ('K1312','Nguyen Thi Kim','Yen','07/09/1986','Nu','TPHCM','K13')

INSERT INTO GIANGDAY VALUES ('K11','THDC','GV07','1','2006','02/01/2006','12/05/2006')
INSERT INTO GIANGDAY VALUES ('K12','THDC','GV06','1','2006','02/01/2006','12/05/2006')
INSERT INTO GIANGDAY VALUES ('K13','THDC','GV15','1','2006','02/01/2006','12/05/2006')
INSERT INTO GIANGDAY VALUES ('K11','CTRR','GV02','1','2006','09/01/2006','17/05/2006')
INSERT INTO GIANGDAY VALUES ('K12','CTRR','GV02','1','2006','09/01/2006','17/05/2006')
INSERT INTO GIANGDAY VALUES ('K13','CTRR','GV08','1','2006','09/01/2006','17/05/2006')
INSERT INTO GIANGDAY VALUES ('K11','CSDL','GV05','2','2006','01/06/2006','15/07/2006')
INSERT INTO GIANGDAY VALUES ('K12','CSDL','GV09','2','2006','01/06/2006','15/07/2006')
INSERT INTO GIANGDAY VALUES ('K13','CTDLGT','GV15','2','2006','01/06/2006','15/07/2006')
INSERT INTO GIANGDAY VALUES ('K13','CSDL','GV05','3','2006','01/08/2006','15/12/2006')
INSERT INTO GIANGDAY VALUES ('K13','DHMT','GV07','3','2006','01/08/2006','15/12/2006')
INSERT INTO GIANGDAY VALUES ('K11','CTDLGT','GV15','3','2006','01/08/2006','15/12/2006')
INSERT INTO GIANGDAY VALUES ('K12','CTDLGT','GV15','3','2006','01/08/2007','15/12/2006')
INSERT INTO GIANGDAY VALUES ('K11','HDH','GV04','1','2007','02/01/2007','18/02/2007')
INSERT INTO GIANGDAY VALUES ('K12','HDH','GV04','1','2007','02/01/2007','20/03/2007')
INSERT INTO GIANGDAY VALUES ('K11','DHMT','GV07','1','2007','18/02/2007','20/03/2007')

INSERT INTO KETQUATHI VALUES ('K1305','CTRR','1','13/05/2006','10.00','Dat')
INSERT INTO KETQUATHI VALUES ('K1101','CSDL','1','20/07/2006','10.00','Dat')
INSERT INTO KETQUATHI VALUES ('K1101','CTDLGT','1','28/12/2006','9.00','Dat')
INSERT INTO KETQUATHI VALUES ('K1101','THDC','1','20/05/2006','9.00','Dat')
INSERT INTO KETQUATHI VALUES ('K1101','CTRR','1','13/05/2006','9.50','Dat')
INSERT INTO KETQUATHI VALUES ('K1102','CSDL','1','20/07/2006','4.00','Khong Dat')
INSERT INTO KETQUATHI VALUES ('K1102','CSDL','2','27/07/2006','4.25','Khong Dat')
INSERT INTO KETQUATHI VALUES ('K1102','CSDL','3','10/08/2006','4.50','Khong Dat')
INSERT INTO KETQUATHI VALUES ('K1102','CTDLGT','1','28/12/2006','4.50','Khong Dat')
INSERT INTO KETQUATHI VALUES ('K1102','CTDLGT','2','05/01/2007','4.00','Khong Dat')
INSERT INTO KETQUATHI VALUES ('K1102','CTDLGT','3','15/01/2007','6.00','Dat')
INSERT INTO KETQUATHI VALUES ('K1102','THDC','1','20/05/2006','5.00','Dat')
INSERT INTO KETQUATHI VALUES ('K1102','CTRR','1','13/05/2006','7.00','Dat')
INSERT INTO KETQUATHI VALUES ('K1103','CSDL','1','20/07/2006','3.50','Khong Dat')
INSERT INTO KETQUATHI VALUES ('K1103','CSDL','2','27/07/2006','8.25','Dat')
INSERT INTO KETQUATHI VALUES ('K1103','CTDLGT','1','28/12/2006','7.00','Dat')
INSERT INTO KETQUATHI VALUES ('K1103','THDC','1','20/05/2006','8.00','Dat')
INSERT INTO KETQUATHI VALUES ('K1103','CTRR','1','13/05/2006','6.25','Dat')
INSERT INTO KETQUATHI VALUES ('K1104','CSDL','1','20/07/2006','3.75','Khong Dat')
INSERT INTO KETQUATHI VALUES ('K1104','CTDLGT','1','28/12/2006','4.00','KHong Dat')
INSERT INTO KETQUATHI VALUES ('K1104','THDC','1','20/05/2006','4.00','Khong Dat')
INSERT INTO KETQUATHI VALUES ('K1104','CTRR','1','13/05/2006','4.00','Khong Dat')
INSERT INTO KETQUATHI VALUES ('K1104','CTRR','2','20/05/2006','3.50','Khong Dat')
INSERT INTO KETQUATHI VALUES ('K1104','CTRR','3','30/06/2006','4.00','Khong Dat')
INSERT INTO KETQUATHI VALUES ('K1201','CSDL','1','20/07/2006','6.00','Dat')
INSERT INTO KETQUATHI VALUES ('K1201','CTDLGT','1','28/12/2006','5.00','Dat')
INSERT INTO KETQUATHI VALUES ('K1201','THDC','1','20/05/2006','8.00','Dat')
INSERT INTO KETQUATHI VALUES ('K1201','CTRR','1','13/05/2006','9.00','Dat')
INSERT INTO KETQUATHI VALUES ('K1202','CSDL','1','20/07/2006','8.00','dat')
INSERT INTO KETQUATHI VALUES ('K1202','CTDLGT','1','28/12/2006','4.00','Khong Dat')
INSERT INTO KETQUATHI VALUES ('K1202','CTDLGT','2','05/01/2007','5.00','Dat')
INSERT INTO KETQUATHI VALUES ('K1202','THDC','1','20/05/2006','4.00','Khong Dat')
INSERT INTO KETQUATHI VALUES ('K1202','THDC','2','27/05/2006','4.00','Khong Dat')
INSERT INTO KETQUATHI VALUES ('K1202','CTRR','1','13/05/2006','3.00','Khong Dat')
INSERT INTO KETQUATHI VALUES ('K1202','CTRR','2','20/05/2006','4.00','Khong dat')
INSERT INTO KETQUATHI VALUES ('K1202','CTRR','3','30/06/2006','6.25','Dat')
INSERT INTO KETQUATHI VALUES ('K1203','CSDL','1','20/07/2006','9.25','Dat')
INSERT INTO KETQUATHI VALUES ('K1203','CTDLGT','1','28/12/2006','9.50','Dat')
INSERT INTO KETQUATHI VALUES ('K1203','THDC','1','20/05/2006','10','Dat')
INSERT INTO KETQUATHI VALUES ('K1203','CTRR','1','13/05/2006','10','Dat')
INSERT INTO KETQUATHI VALUES ('K1204','CSDL','1','20/07/2006','8.50','Dat')
INSERT INTO KETQUATHI VALUES ('K1204','CTDLGT','1','28/12/2006','6.25','dat')
INSERT INTO KETQUATHI VALUES ('K1204','THDC','1','20/05/2006','4.00','Khong Dat')
INSERT INTO KETQUATHI VALUES ('K1204','CTRR','1','13/05/2006','6.00','Dat')
INSERT INTO KETQUATHI VALUES ('K1301','CSDL','1','20/12/2006','4.25','Khong Dat')
INSERT INTO KETQUATHI VALUES ('K1301','CTDLGT','1','25/07/2006','8.00','Dat')
INSERT INTO KETQUATHI VALUES ('K1301','THDC','1','20/05/2006','7.75','Dat')
INSERT INTO KETQUATHI VALUES ('K1301','CTRR','1','13/05/2006','8.00','Dat')
INSERT INTO KETQUATHI VALUES ('K1302','CSDL','1','20/12/2006','6.75','Dat')
INSERT INTO KETQUATHI VALUES ('K1302','CTDLGT','1','13/05/2006','5.00','Dat')
INSERT INTO KETQUATHI VALUES ('K1302','THDC','1','20/05/2006','8.00','Dat')
INSERT INTO KETQUATHI VALUES ('K1302','CTRR','1','13/05/2006','8.50','Dat')
INSERT INTO KETQUATHI VALUES ('K1303','CSDL','1','20/12/2006','4.00','Khong Dat')
INSERT INTO KETQUATHI VALUES ('K1303','CTDLGT','1','25/07/2006','4.50','Khong Dat')
INSERT INTO KETQUATHI VALUES ('K1303','CTDLGT','2','07/08/2006','4.00','Khong Dat')
INSERT INTO KETQUATHI VALUES ('K1303','CTDLGT','3','15/08/2006','4.25','Khong Dat')
INSERT INTO KETQUATHI VALUES ('K1303','THDC','1','20/05/2006','4.50','Khong Dat')
INSERT INTO KETQUATHI VALUES ('K1303','CTRR','1','13/05/2006','3.25','Khong Dat')
INSERT INTO KETQUATHI VALUES ('K1303','CTRR','2','20/05/2006','5.00','Dat')
INSERT INTO KETQUATHI VALUES ('K1304','CSDL','1','20/12/2006','7.75','Dat')
INSERT INTO KETQUATHI VALUES ('K1304','CTDLGT','1','25/07/2006','9.75','Dat')
INSERT INTO KETQUATHI VALUES ('K1304','THDC','1','20/05/2006','5.50','Dat')
INSERT INTO KETQUATHI VALUES ('K1304','CTRR','1','13/05/2006','5.00','Dat')
INSERT INTO KETQUATHI VALUES ('K1305','CSDL','1','20/12/2006','9.25','Dat')
INSERT INTO KETQUATHI VALUES ('K1305','CTDLGT','1','25/07/2006','10.00','Dat')
INSERT INTO KETQUATHI VALUES ('K1305','THDC','1','20/05/2006','8.00','Dat')

ALTER TABLE Khoa ADD CONSTRAINT FK_K_GV FOREIGN KEY (TrgKhoa) REFERENCES GiaoVien(MaGV)
ALTER TABLE MonHoc ADD CONSTRAINT FK_MH_K FOREIGN KEY (MaKhoa) REFERENCES Khoa(MaKhoa)
ALTER TABLE DieuKien ADD CONSTRAINT FK_DK_MH FOREIGN KEY (MaMH) REFERENCES MonHoc(MaMH)
ALTER TABLE DieuKien ADD CONSTRAINT FK_DK_MHT FOREIGN KEY (MaMH_Truoc) REFERENCES MonHoc(MaMH)
ALTER TABLE GiaoVien ADD CONSTRAINT FK_GV_K FOREIGN KEY (MaKhoa) REFERENCES Khoa(MaKhoa)
ALTER TABLE Lop ADD CONSTRAINT FK_L_TL FOREIGN KEY (TrgLop) REFERENCES HocVien(MaHV)
ALTER TABLE Lop ADD CONSTRAINT FK_L_GV FOREIGN KEY (MaGVCN) REFERENCES GiaoVien(MaGV)
ALTER TABLE HocVien ADD CONSTRAINT FK_HV_L FOREIGN KEY (MaLop) REFERENCES Lop(MaLop)
ALTER TABLE GiangDay ADD CONSTRAINT FK_GD_L FOREIGN KEY (MaLop) REFERENCES Lop(MaLop)
ALTER TABLE GiangDay ADD CONSTRAINT FK_GD_MH FOREIGN KEY (MaMH) REFERENCES MonHoc(MaMH)
ALTER TABLE GiangDay ADD CONSTRAINT FK_GD_GV FOREIGN KEY (MaGV) REFERENCES GiaoVien(MaGV)
ALTER TABLE KetQuaThi ADD CONSTRAINT FK_KQT_HV FOREIGN KEY (MaHV) REFERENCES HocVien(MaHV)
ALTER TABLE KetQuaThi ADD CONSTRAINT FK_KQT_MH FOREIGN KEY (MaMH) REFERENCES MonHoc(MaMH)