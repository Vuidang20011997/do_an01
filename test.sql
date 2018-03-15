





create database do_an_001;
use do_an_001;
create table can_bo_quan_ly
(
	ma_cb char(5),
	ten_cb nvarchar(50) not null,
	ngay_sinh date not null,
	gioi_tinh bit not null,
	chuc_vu nvarchar(50) not null,
	email char(30) not null,
	que_quan nvarchar(50) not null,
	dia_chi nvarchar(200) not null,
	noi_toi_nghiep nvarchar(200) not null,
	so_fax char(12) not null,
	primary key (ma_cb)
);
create table hoc_vien
(
	ma_hv char(5)not null,
	ho_ten nvarchar(50) not null,
	phai bit not null,
	ngay_sinh date not null,
	que_quan nvarchar(200) not null,
	sdt char(12) not null,
	email char(30) not null,
	primary key (ma_hv)
);
create table kh_hoc
(
	ma_kh char(5),
	ten_kh nvarchar(50) not null,
	primary key (ma_kh)
);
create table lop_hoc
(
	ma_lop char(5),
	ten_lop nvarchar(50) not null,
	siso int not null,
	tinh_trang bit not null,
	primary key (ma_lop)
);
create table module_dayhoc
(
	ma_module char(5),
	ten_module nvarchar(50) not null,
	primary key (ma_module)
);
create table phong_hoc
(
	ma_phong char(5),
	ten_phong nvarchar(50) not null,
	primary key (ma_phong)
);
create table giao_vien
(
	ma_gv char(5),
	ten_gv nvarchar(50) not null,
	gioi_tinh bit not null,
	ngay_sinh date not null,
	dia_chi nvarchar(50) not null,
	sdt char(11) not null,
	primary key (ma_gv)
);
create table kqua_thi
(
	diem_chu nvarchar(50) not null,
	diem_so tinyint not null,
	ma_phong char(5)not null,
	ma_cb char(5)not null,
	ma_hv char(5)not null,
	foreign key (ma_phong) references phong_hoc(ma_phong),
	foreign key (ma_hv) references hoc_vien(ma_hv),
	foreign key (ma_cb) references can_bo_quan_ly(ma_cb)
);
create table lich_day_hoc
(
	thoi_gian_bat_dau date not null,
	thoi_gian_ket_thuc date not null,
	ma_module char(5) not null,
	ma_gv char(5) not null,
	ma_hv char(5) not null,
	foreign key (ma_module) references module_dayhoc(ma_module),
	foreign key (ma_gv) references giao_vien(ma_gv),
	foreign key (ma_hv) references hoc_vien(ma_hv)
);
create table phieu_dk
(
	ma_phieu char(5),
	ma_kh char(5),
	ho_ten nvarchar(50) not null,
	gioi_tinh bit not null,
	noi_sinh nvarchar(50) not null,
	so_cmnd char(10) not null,
	ngay_cap date not null,
	noi_cap nvarchar(50)not null,
	sdt char(12) not null,
	que_quan nvarchar(50) not null,
	ngay_sinh date not null,
	lop nvarchar(50) not null,
	buoi nvarchar(50) not null,
	foreign key (ma_kh) references kh_hoc(ma_kh),
	primary key (ma_phieu)
);

insert into can_bo_quan_ly
values ('CB001',N'Lê Diễm Phượng','1997-01-01',0,N'Thư kí','phuongle@gmail','Cần Thơ','An Giang','Đại học Cần Thơ','012345');
insert into can_bo_quan_ly
values ('CB002',N'Đặng Thị Mộng Vui','1997-01-20',0,N'Thư kí','dangvui@gmail.com','Trà Vinh','Cần Thơ','Đại học Cần Thơ','012345');
insert into can_bo_quan_ly
values ('CB003',N'Lê Hải Triều','1997-01-20',0,N'Toàn quyền chủ tịch','dangvui@gmail.com','ngoài không gian','Cần Thơ','Đại học Cần Thơ','012345');

insert into hoc_vien 
values ('HV001',N'Lê Huyền',0,'1995-03-29',N'Cần Thơ','01652323040','huyenle@gmail.com');
insert into hoc_vien
values ('HV002', N'chào bi ahihi', 0, '1995-03-29', N'Cần Thơ', '01652323040', 'bi@gmail.com');
insert into hoc_vien
values ('HV003', N'Đặng Tuấn Nghĩa', 0, '1995-03-29', N'Cần Thơ', '01652323040', 'nghia@gmail.com');

insert into kh_hoc
values ('CB201',N'Chứng chỉ quốc gia CNTT cơ bản');
insert into kh_hoc
values ('NC201',N'Chứng chỉ quốc gia CNTT nâng cao');

insert into lop_hoc
values ('KTPM1', 'Kỹ thuật phần mềm', 80, 1);
insert into lop_hoc
values ('KHMT1', 'Khoa học máy tính', 80, 1);
insert into lop_hoc
values ('HTTT1', 'Hệ thống thông tin', 80, 1);

insert into module_dayhoc
values ('MD001',N'Word cơ bản');
insert into module_dayhoc
values ('MD002',N'Excel cơ bản');
insert into module_dayhoc
values ('MD003',N'Powerpoint cơ bản');

insert into phong_hoc
values ('PH001', N'phòng học 1');
insert into phong_hoc
values ('PH002', N'phòng học 2');

insert into giao_vien
values ('GV001',N'Lê Hải Triều',0,'1996-03-27',N'Cần Thơ','01283764862');
insert into giao_vien
values ('GV002',N'Phạm Duy',0,'1996-03-27',N'Cần Thơ','01283764862');
insert into giao_vien
values ('GV003',N'Lê Hải Yến',0,'1996-03-27',N'Cần Thơ','01283764862');
insert into giao_vien
values ('GV004',N'Lê gì gì đó',0,'1996-03-27',N'Cần Thơ','01283764862');

insert into kqua_thi
values (N'mười điểm ahihi',10,'PH001','CB001','HV001');
insert into kqua_thi
values (N'tám điểm ahihi',8,'PH002','CB002','HV002');

insert into lich_day_hoc
values('2018-01-01','2018-03-01','MD001','GV001','HV001');
insert into lich_day_hoc
values ('2018-02-03','2018-01-5','MD001','GV002','HV002');
insert into lich_day_hoc
values ('2018-02-03','2018-01-5','MD002','GV003','HV002');
insert into lich_day_hoc
values ('2018-02-03','2018-01-5','MD002','GV004','HV002');

insert into phieu_dk
values ('DK001','CB201','Nguyễn Ngọc Hân ',0,'Trà Vinh','334863544','25/03/2015','Trà Vinh',
'01652323040','Trà Vinh','20/01/1997','Chứng chỉ công nghệ thông tin cơ bản','Lớp:tối thứ 2,3,4,5,6');
insert into phieu_dk
values ('DK002','NC201','Nguyễn Ngọc Hà ',0,'Trà Vinh','334863545','26/03/2015','Trà Vinh',
'01652323044','Trà Vinh','20/01/1996','Chứng chỉ công nghệ thông tin nâng cao','Lớp:tối thứ 2,3,4,5 và sáng chủ nhật');
