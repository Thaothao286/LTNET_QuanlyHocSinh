CREATE DATABASE qlhs_17_DTPThaoVMPhuongPTTTrang
GO
USE qlhs_17_DTPThaoVMPhuongPTTTrang
GO
CREATE TABLE dangnhap
(
	username VARCHAR(32) PRIMARY KEY NOT NULL,
	password NVARCHAR(64) NOT NULL,
	fullname NVARCHAR(64) NOT NULL,
	email VARCHAR(32),
	mod	NVARCHAR(16) NOT NULL,
	state NVARCHAR(32) NOT NULL,
)
GO
CREATE TABLE lop
(
	malop VARCHAR(32) PRIMARY KEY NOT NULL,
	tenlop NVARCHAR(64) NOT NULL,
	email VARCHAR(32),
	hotenlt	NVARCHAR(64)
)
GO
CREATE TABLE hocsinh
(
	mahs VARCHAR(32) PRIMARY KEY NOT NULL,
	hoten NVARCHAR(64) NOT NULL,
	ngaysinh DATETIME NOT NULL,
	gioitinh NVARCHAR(16) NOT NULL,
	quequan	NVARCHAR(64),
	diemtb	DECIMAL(12,2),
	malop VARCHAR(32) FOREIGN KEY REFERENCES lop(malop) NOT NULL
)
GO
INSERT INTO dangnhap (username,password,fullname,email,mod,state)VALUES(N'AD',N'123456',N'Thảo - Phương - Trang',N'tpt@gmail.com',N'Quản trị viên',N'Còn sử dụng')
INSERT INTO dangnhap (username,password,fullname,email,mod,state)VALUES(N'US',N'123456',N'User thường',N'us@gmail.com',N'Người dùng',N'Còn sử dụng')
INSERT INTO dangnhap (username,password,fullname,email,mod,state)VALUES(N'THAO',N'123456',N'Đoàn Thị Phương Thảo',N'thao2806@gmail.com',N'Người dùng',N'Còn sử dụng')
INSERT INTO dangnhap (username,password,fullname,email,mod,state)VALUES(N'TRANG',N'123456',N'Phạm Thị Thu Trang',N'trang1311@gmail.com',N'Người dùng',N'Còn sử dụng')
INSERT INTO dangnhap (username,password,fullname,email,mod,state)VALUES(N'PHUONG',N'123456',N'Vũ Minh Phượng',N'phuong1802@gmail.com',N'Người dùng',N'Còn sử dụng')
GO
-- Insert 5 dòng vào tabble lop
INSERT INTO lop (malop,tenlop,email,hotenlt)VALUES(N'LOP01',N'Tin12A1',N'LOP01@gmail.com',N'Trần Lê Nguyễn')
INSERT INTO lop (malop,tenlop,email,hotenlt)VALUES(N'LOP02',N'Tin12A2',N'LOP02@gmail.com',N'Nguyễn Lê Văn')
INSERT INTO lop (malop,tenlop,email,hotenlt)VALUES(N'LOP03',N'Tin12A1',N'LOP03@gmail.com',N'Đoàn Thị Phương Thảo')
INSERT INTO lop (malop,tenlop,email,hotenlt)VALUES(N'LOP04',N'Tin12A2',N'LOP04@gmail.com',N'Phạm Thị Thu Trang')
INSERT INTO lop (malop,tenlop,email,hotenlt)VALUES(N'LOP05',N'Tin12A1',N'LOP05@gmail.com',N'Vũ Minh Phượng')
-- Insert 5 dòng vào tabble hocsinh
GO
INSERT INTO hocsinh (mahs,hoten,ngaysinh,gioitinh,quequan,diemtb,malop)VALUES(N'SV01',N'Đoàn Thị Phương Thảo','Jun 28 2000 12:00:00:000AM',N'Nữ',N'Hà Nội',9.80,N'LOP01')
INSERT INTO hocsinh (mahs,hoten,ngaysinh,gioitinh,quequan,diemtb,malop)VALUES(N'SV02',N'Phạm Thị Thu Trang','Nov 13 2000 12:00:00:000AM',N'Nữ',N'Cà Mau',8.60,N'LOP01')
INSERT INTO hocsinh (mahs,hoten,ngaysinh,gioitinh,quequan,diemtb,malop)VALUES(N'SV03',N'Vũ Minh Phượng','Feb 18 2000 12:00:00:000AM',N'Nữ',N'Đà Năng',10.00,N'LOP02')
INSERT INTO hocsinh (mahs,hoten,ngaysinh,gioitinh,quequan,diemtb,malop)VALUES(N'SV04',N'Nguyễn Lê Văn','Mar  1 2000 12:00:00:000AM',N'Nam',N'Bình Dương',9.50,N'LOP01')
INSERT INTO hocsinh (mahs,hoten,ngaysinh,gioitinh,quequan,diemtb,malop)VALUES(N'SV05',N'Trần Lê Nguyễn','Jun  8 2000 12:00:00:000AM',N'Nữ',N'Đà Nẵng',8.30,N'LOP01')
