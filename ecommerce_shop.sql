create database ecommerce_shop;

alter database ecommerce_shop
collate Latin1_General_100_CI_AS_SC_UTF8;

use ecommerce_shop;
go

create table categories (
	id	int not null identity(1,1) primary key,
	name nvarchar(45) not null,
);

insert into categories(name) values
('Quần áo'), ('Giày dép'), ('Phụ kiện');

create table products (
	id int not null identity(1,1) primary key,
	category_id int,
	name nvarchar(255) not null,
	description nvarchar(255) not null,
	image varchar(255) not null,
	price float not null,
	quantity int not null,
	brand nvarchar(45) not null,
);

insert into products(category_id, name, description, image, price, quantity, brand) values
(1, 'Quần Jean nam', 'Quần Jeans Đen Trơn Dáng Ôm Chất Bò Mềm Mịn Đẹp Co Giãn Nhẹ Giữ Dáng Không Bai Phong Cách Trẻ Trung', 
'https://down-vn.img.susercontent.com/file/facbbaa35f6b21fe984916351f3ff993@resize_w900_nl.webp', 
171.000, 100, 'Korea'),
(1, 'Quần Kaki nam', 'Quần kaki nam ống suông Phú Vy Fashion chất đẹp, quần dài nam trẻ trung phù hợp đi học đi làm', 
'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lkixozy1lnl44e.webp', 
138.999, 100, 'Korea'),
(2, 'Giày tây nam Timan', 'Giày tây nam Timan kiểu buộc dây chất liệu da bò cao cấp giày DERBY khâu đế công sở lịch lãm bảo hành 5 năm GT100', 
'https://down-vn.img.susercontent.com/file/vn-11134207-7ras8-m3x983dxgjhk6a@resize_w900_nl.webp', 
759.000, 100, 'Korea'),
(2, 'Dép Adilette Aqua', 'Dép Adilette Aqua màu trắng sọc đen', 
'https://down-vn.img.susercontent.com/file/0549cafe6b889d1ae41ee4edac37e1cd.webp', 
598.000, 100, 'Korea'),
(3, 'Bộ vệ sinh máy ảnh laptop', 'Bộ vệ sinh máy ảnh laptop 5in1 chính hãng FB01', 
'https://down-vn.img.susercontent.com/file/sg-11134253-7rdxt-mdg1ttzm81gq1d.webp', 
69.000, 100, 'Korea'),
(3, 'Dây đeo cổ tay máy ảnh', 'Dây đeo cổ tay máy ảnh cao cấp BJ02 có khoá tháo rời tiện lợi và chắn chắn', 
'https://down-vn.img.susercontent.com/file/vn-11134207-7ras8-m35ypmb22wwpec.webp', 
69.000, 100, 'Korea'),
(null, 'Kem Chống Nắng', 'Kem Chống Nắng Skin1004 Madagascar Centella Air-fit Suncream', 
'https://down-vn.img.susercontent.com/file/sg-11134253-7rdxt-mdg1ttzm81gq1d.webp', 
69.000, 100, 'Korea'),
(null, 'Nước dưỡng tóc', 'Nước dưỡng tóc tinh dầu bưởi ( pomelo hair tonic ) Cocoon 140ml thuần chay', 
'https://down-vn.img.susercontent.com/file/vn-11134207-7ras8-m35ypmb22wwpec.webp', 
69.000, 100, 'Korea')
;

use ecommerce_shop;
go

drop table products;

select * from categories;
select * from products;

select c.id as category_id, c.name as category_name, 
		p.id as product_id, p.name as product_name, 
		p.description as product_description,
		p.image as product_image, p.price as product_price, 
		p.quantity as product_quantity, p.brand as product_brand
from categories c
inner join products p
	on c.id = p.category_id;

insert into categories(name) values
('Đồ điện tử'), ('Đồ gia dụng');

select * from categories;

select c.id as category_id, c.name as category_name, 
		p.id as product_id, p.name as product_name, 
		p.description as product_description,
		p.image as product_image, p.price as product_price, 
		p.quantity as product_quantity, p.brand as product_brand
from categories c
left join products p
	on c.id = p.category_id;

select c.id as category_id, c.name as category_name, 
		p.id as product_id, p.name as product_name, 
		p.description as product_description,
		p.image as product_image, p.price as product_price, 
		p.quantity as product_quantity, p.brand as product_brand
from categories c
right join products p
	on c.id = p.category_id;

select * from categories;
select * from products;

-- ứng với 1 dòng bảng bên trái sẽ nối với tất cả các dòng bảng bên phải
select c.id as category_id, c.name as category_name, 
		p.id as product_id, p.name as product_name, 
		p.description as product_description,
		p.image as product_image, p.price as product_price, 
		p.quantity as product_quantity, p.brand as product_brand
from categories c
cross join products p;

select * from products;