create database pocomart;

drop database pocomart;
show databases;
use pocomart;
create table products (
	id int primary key auto_increment,
    category_id tinyint default 1,
    name varchar(255),
    imgSrc varchar(255),
    priceNew double default 0,
    priceLast double default 0,
    description text null
);

drop table products;
insert into products (category_id, name, imgSrc, priceNew, priceLast, description) value(1, "Điện thoại iPhone 13 Pro Max 128GB", "https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-xanh-1.jpg", 28790000, 33990000, "Điện thoại iPhone 13 Pro Max 128 GB - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách. Thiết kế đẳng cấp hàng đầu iPhone mới kế thừa thiết kế đặc trưng từ iPhone 12 Pro Max khi sở hữu khung viền vuông vức, mặt lưng kính cùng màn hình tai thỏ tràn viền nằm ở phía trước.");
insert into products(name, category_id, imgSrc, priceNew, priceLast, description) value("Điện thoại Samsung Galaxy S22 Ultra 5G 128GB", 1, "https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-1-1.jpg", 25990000, 30990000, "Galaxy S22 Ultra 5G chiếc smartphone cao cấp nhất trong bộ 3 Galaxy S22 series mà Samsung đã cho ra mắt. Tích hợp bút S Pen hoàn hảo trong thân máy, trang bị vi xử lý mạnh mẽ cho các tác vụ sử dụng vô cùng mượt mà và nổi bật hơn với cụm camera không viền độc đáo mang đậm dấu ấn riêng. Sở hữu một diện mạo đầy nổi bật Galaxy S22 Ultra 5G được kế thừa form thiết kế từ những dòng Note trước đây của hãng đem đến cho bạn có cảm giác vừa mới lạ vừa hoài niệm. Trọng lượng của máy 228 g cho cảm giác cầm nắm đầm tay, khi cầm máy trần thì hơi có cảm giác dễ trượt.");
insert into products(name, category_id, imgSrc, priceNew, priceLast, description) value("Điện thoại iPhone 11 64GB", 1, "https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-den-1-1-1-org.jpg", 11490000, 14990000, "Apple đã chính thức trình làng bộ 3 siêu phẩm iPhone 11, trong đó phiên bản iPhone 11 64GB có mức giá rẻ nhất nhưng vẫn được nâng cấp mạnh mẽ như iPhone Xr ra mắt trước đó. Nâng cấp mạnh mẽ về camera Nói về nâng cấp thì camera chính là điểm có nhiều cải tiến nhất trên thế hệ iPhone mới.");
insert into products(name, category_id, imgSrc, priceNew, priceLast, description) value("Điện thoại iPhone 13 Pro Max 128GB", 1, "https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-xanh-1.jpg", 28790000, 33990000, "Điện thoại iPhone 13 Pro Max 128 GB - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách. Thiết kế đẳng cấp hàng đầu iPhone mới kế thừa thiết kế đặc trưng từ iPhone 12 Pro Max khi sở hữu khung viền vuông vức, mặt lưng kính cùng màn hình tai thỏ tràn viền nằm ở phía trước.");
insert into products(name, category_id, imgSrc, priceNew, priceLast, description) value("Điện thoại Samsung Galaxy Z Fold3 5G 256GB", 1, "https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-1-3.jpg",31990000, 41990000, "Samsung Galaxy Z Fold3 5G, chiếc điện thoại được nâng cấp toàn diện về nhiều mặt, đặc biệt đây là điện thoại màn hình gập đầu tiên trên thế giới có camera ẩn (08/2021). Sản phẩm sẽ là một “cú hit” của Samsung góp phần mang đến những trải nghiệm mới cho người dùng. Thiết kế nâng tầm smartphone màn hình gập Có thể thấy mẫu smartphone Galaxy Z Fold3 lần này vẫn giữ nguyên ngoại hình cùng cơ chế màn hình gập mở dạng quyển sách như của tiền nhiệm, ""hô biến"" chiếc smartphone thành một chiếc máy tính bảng mini một cách dễ dàng và ngược lại.");
insert into products(name, category_id, imgSrc, priceNew, priceLast, description) value("Điện thoại OPPO Find X5 Pro 5G", 1, "https://cdn.tgdd.vn/Products/Images/42/250622/oppo-find-x5-pro-1-1.jpg", 33990000, 32990000, "OPPO Find X5 Pro 5G có lẽ là cái tên sáng giá được xướng tên trong danh sách điện thoại có thiết kế ấn tượng trong năm 2022. Máy được hãng cho ra mắt với một diện mạo độc lạ chưa từng có, cùng với đó là những nâng cấp về chất lượng ở camera nhờ sự hợp tác với nhà sản xuất máy ảnh Hasselblad. Tỏa sáng với ngoại hình bắt mắt đầy sang trọng Điều làm mình mê hoặc ngay từ cái nhìn đầu tiên là mặt lưng hết sức bóng bẩy, với phiên bản màu đen thì mình hoàn toàn có thể sử dụng chiếc máy với công dụng tương tự như một chiếc gương soi tiện ích.");
insert into products(name, category_id, imgSrc, priceNew, priceLast, description) value("Điện thoại Vivo X80", 1, "https://cdn.tgdd.vn/Products/Images/42/253138/vivo-x80-glr-xanh-1.jpg", 18990000, 19990000, "Vivo X80 được xem là thiết bị hướng đến đối tượng người dùng chuyên nhiếp ảnh trên điện thoại, bằng việc hợp tác cùng nhà sản xuất ống kính nổi tiếng mang thương hiệu ZEISS. Với những tính năng mới mẻ hay chế độ quay - chụp độc đáo, X80 hứa hẹn mang đến cho bạn những trải nghiệm đầy mới lạ và chất lượng. Nổi bật với thiết kế đầy sang trọng Ấn tượng đầu tiên khi mình trên tay chiếc Vivo X80 là máy có tổng thể kích thước tương đối lớn, theo mình ước chừng máy có độ dài gần bằng một gang tay.");
insert into products(name, category_id, imgSrc, priceNew, priceLast, description) value("Điện thoại Samsung Galaxy S22+ 5G 128GB", 1, "https://cdn.tgdd.vn/Products/Images/42/242439/samsung-galaxy-s22-plus-trang-1-1.jpg", 20990000, 25990000, "Samsung Galaxy S22+ 5G 128GB được Samsung cho ra mắt với với ngoại hình không có quá nhiều thay đổi nhưng được nâng cấp đáng kể về thông số cấu hình bên trong và thời gian sử dụng, chắc hẳn sẽ mang lại những trải nghiệm thú vị dành cho bạn. Galaxy S22+ 5G thiết kế bền bỉ với khung viền từ hợp kim Armor Aluminum cứng cáp, trang bị kính cường lực Gorilla Glass Victus+ giúp hạn chế trầy xước cho bạn thoải mái sử dụng thiết bị hơn khi sử dụng.");
insert into products(name, category_id, imgSrc, priceNew, priceLast, description) value("Điện thoại OPPO Reno7 Z 5G", 1, "https://cdn.tgdd.vn/Products/Images/42/271717/oppo-reno7-z-1-1.jpg", 9990000, 10990000, "OPPO đã trình làng mẫu Reno7 Z 5G với thiết kế OPPO Glow độc quyền, camera mang hiệu ứng như máy DSLR chuyên nghiệp cùng viền sáng kép, máy có một cấu hình mạnh mẽ và đạt chứng nhận xếp hạng A về độ mượt. Dễ dàng nổi bật giữa đám đông Điện thoại OPPO Reno7 Z 5G có khung viền vát phẳng, vuông vức trendy làm cho máy toát lên nét hiện đại và năng động. Bốn góc được bo cong mềm mại tạo cảm giác thoải mái và nhẹ nhàng (chỉ 173 g). Với thiết kế nguyên khối làm tổng thể máy trở nên cực kỳ chắc chắn, không chỉ đẹp mà còn tăng độ bền.");

insert into products(name, category_id, imgSrc, priceNew, priceLast, description) value("Quần âu nam hàn quốc dáng baggy suông đen, kem vải dày dặn co giãn tốt thương hiệu JBAGY - JA0101", 2, "https://cf.shopee.vn/file/f65fbbd3f19939d3cbac5c5c5e92f202", 149000, 280000, "Bạn muốn chọn 1 chiếc quần vải kém chất lượng về không mặc nổi hay chọn 1 chiếc quần cao cấp với chất lượng hoàn toàn xứng đáng giúp bạn thoải mái và tự tin? Bạn quá thất vọng với những chiếc quần tây giá rẻ hình ảnh nịnh mắt bán tràn lan trên Shopee nhưng mặc vào thì bí bách, vải quá dày hay quá mỏng, cạp quần màu sắc trông già nua lỗi thời, đường chỉ thì thưa thớt thừa tùm lum.  Việc lạm dụng và làm giảm chất lượng quần của các nhà bán hàng đã làm phai mờ đi rất nhiều giá trị của 1 chiếc quần Tây. Suốt Lịch sử thời trang hình ảnh 1 chiếc quần Tây luôn đại diện cho sự trang trọng, lịch thiệp đảm bảo phong thái thoải mái, tự tin của nam giới. Chính vì vậy, JBAGY có mặt tại đây để giúp các bạn định hình lại giá trị của 1 chiếc Âu vừa giữ được vẻ Lịch Thiệp vừa đem đến phong cách Tân Thời với Chất lượng vải cotton Hàn dày dặn, thoáng mát, co giãn cao. Mặt vải mềm mịn, mướt tay. Kiểu dáng baggy phong cách thiết kế 1 Cúc cài tinh tế. ");
insert into products(name, category_id, imgSrc, priceNew, priceLast, description) value("Giày mule Playball Origin", 2, "https://product.hstatic.net/1000284478/product/50l_32shs1111_1_45793aa1b8064f5f9221d9847dc3f662_large.jpg", 1690000, 2000000, "MLB là tên viết tắt của Major League Baseball – tổ chức thể thao chuyên nghiệp của môn bóng chày. Thương hiệu MLB thuộc tập đoàn F&F đã mở cửa hàng MLB Korea đầu tiên vào năm 1997. Thương hiệu chuyên thiết kế và sản xuất trang phục, giày & phụ kiện cho nam, nữ lấy cảm hứng từ logo của những đội bóng chày danh tiếng đem đến những bộ sưu tập kết hợp giữa tiện ích và thời trang. Cho đến nay, MLB đã có 250 cửa hàng tại khắp khu vực Châu Á.");
insert into products(name, category_id, imgSrc, priceNew, priceLast, description) value("Áo polo nam ngắn tay Heart Small Logo", 2, "https://product.hstatic.net/1000284478/product/50ivs_3lpqh1023_2_35b94cc1b531483cb8c20f8bb30aea03_large.jpg", 2090000, 2500000, "Chất liệu vải: 100% Cotton Kiểu dáng áo polo tay ngắn nam tính, thời thượng Cổ bẻ phối nút cài thanh lịch Thiết kế lấy cảm hứng từ hiệp hội bóng chày MLB Chất vải mềm mịn, co giãn Gam màu hiện đại dễ dàng phối với nhiều trang phục và phụ kiện Xuất xứ thương hiệu: Hàn Quốc");
insert into products(name, category_id, imgSrc, priceNew, priceLast, description) value("Áo blazer nam phố khóa zip Relaxed", 2, "https://product.hstatic.net/1000284478/product/900_s74bn1134_1_07771b3243c04e35b8649c0bbfa5e336_large.jpg", 42300000, 43000000, "Kiểu dáng áo blazer nam phom suông lịch lãm Cổ âu, tay dài Phối 3 nút cài tròn và zip cài sáng bóng, độc đáo Túi nắp hai bên Chất liệu cao cấp, đứng phom dáng Gam màu hiện đại dễ dàng phối với nhiều trang phục và phụ kiện Xuất xứ thương hiệu: Ý");
insert into products(name, category_id, imgSrc, priceNew, priceLast, description) value("Áo sơ mi lụa nữ tay dài họa tiết da báo thời trang", 2, "https://product.hstatic.net/1000284478/product/leo01_fccl25031k_7_052d742d59db499bb48d921d11f7c338_large.jpg", 7120000, 7500000, "Chất liệu: 100% Silk Kiểu dáng áo sơ mi phom suông thời trang Cổ gập, tay dài Hàng nút cài tròn bằng nhựa ở giữa Họa tiết da báo độc đáo Chất lụa cao cấp mềm mại, thoáng mát Gam màu hiện đại dễ dàng phối với nhiều trang phục và phụ kiện Xuất xứ thương hiệu: Pháp");
insert into products(name, category_id, imgSrc, priceNew, priceLast, description) value("Quần legging nữ lưng thun Basic Big Logo", 2, "https://product.hstatic.net/1000284478/product/50bks_3flgb0124_3_164834dcfd134ff89d778e282c12dd49_large.jpg", 2190000, 2500000, "Thành phần vải: 76% nylon, 24% polyurethane Kiểu dáng quần legging nữ hiện đại Phom ôm, độ co giãn dễ chịu Lưng thun cao Phối logo bóng chày in nổi bật ở bên hông ống quần trái Thích hợp cho các bạn nữ mặc phối cùng đồ khi đi chơi, chạy bộ Xuất xứ thương hiệu: Hàn Quốc");
insert into products(name, category_id, imgSrc, priceNew, priceLast, description) value("Thẻ treo phối ví nhỏ Mini Tabby Bag Charm", 2, "https://product.hstatic.net/1000284478/product/v5cah_1616_1_e254c093f6d84d549324d48217c40e01_large.jpg", 2170000, 3100000, "Thành phần chất liệu: Da thật Thẻ treo có thể tháo rời Phối ví nhỏ in họa tiết hoa nhỏ nổi bật Sử dụng thẻ treo túi xách hoặc móc khóa Xuất xứ thương hiệu: NewYork");
insert into products(name, category_id, imgSrc, priceNew, priceLast, description) value("Áo croptop nữ ngắn tay thời trang", 2, "https://product.hstatic.net/1000284478/product/00_g1201d202209_1_80e3a61ac70a4ad4b52f33160f615236_large.jpg", 350000, 690000, "Thành phần vải: 100% Cotton  Thiết kế áo croptop nữ phom suông thời trang Ngắn tay, cổ tròn In logo thương hiệu ở ngực nổi bật Chất vải mềm mịn, thoáng mát Thích hợp cho các bạn nữ mặc đi chơi, đi học,... Gam màu hiện đại dễ dàng phối với nhiều loại trang phục  Xuất xứ thương hiệu: Việt Nam");

insert into products(name, category_id, imgSrc, priceNew, priceLast, description) value("Smart Tivi LG 4K 43 inch 43UP7750PTB", 3, "https://cdn.tgdd.vn/Products/Images/1942/236886/led-lg-43up7750ptb-2.jpg", 11370000, 15400000, "Thiết kế trang nhã, chắc chắn, hòa hợp trong mọi không gian Smart Tivi LG 4K 55 inch 55UP7750PTB được thiết kế màu đen thanh lịch, trang nhã, màn hình tivi siêu mỏng cho trải nghiệm xem tuyệt vời nhất. Bên cạnh đó, tivi còn sở hữu giá đỡ chữ V úp ngược chắc chắn giúp tivi luôn đứng vững. Tivi LG 55 inch dễ dàng lắp đặt để kệ tủ hay treo tường, sử dụng phù hợp cho phòng khách, phòng ngủ gia đình, hay phòng họp nhỏ...");
insert into products(name, category_id, imgSrc, priceNew, priceLast, description) value("Bộ 3 nồi inox 5 đáy nắp kính Kangaroo KG876", 3, "https://cdn.tgdd.vn/Products/Images/2402/233622/kangaroo-kg876-1-1-org.jpg", 1202000, 1440000, "Bộ 3 nồi inox 5 đáy Kangaroo, có kiểu dáng hiện đại, màu bạc inox sáng đẹp, bộ 3 sản phẩm dễ dùng Đường kính của từng nồi lần lượt là 18, 22 và 26 cm. Trong đó nồi 26 cm có thể luộc được gà 2 kg, nồi 22 cm luộc được 1 kg thịt còn nồi 18 cm thích hợp để nấu cháo, súp cho bé ăn dặm, luộc được 5 - 6 trứng vịt cùng lúc.");
insert into products(name, category_id, imgSrc, priceNew, priceLast, description) value("Bếp từ hồng ngoại lắp âm Sunhouse Mama MMB9100VN", 3, "https://cdn.tgdd.vn/Products/Images/1982/234842/hong-ngoai-sunhouse-mmb9100vn-1-1-org.jpg", 5088000, 5300000, "Bếp từ hồng ngoại Sunhouse MMB9100VN thiết kế thời trang, thanh lịch, có thể lắp đặt âm dưới kệ bếp Giúp tăng diện tích trống, cho không gian bếp thông thoáng hơn, thích hợp sử dụng trong khách sạn, quán ăn, gia đình,... ");
insert into products(name, category_id, imgSrc, priceNew, priceLast, description) value("Máy lọc nước RO AVA AVW-32009H 9 lõi", 3, "https://cdn.tgdd.vn/Products/Images/3385/236441/ro-ava-avw-32009h-9-loi-1-org.jpg", 3990000, 5990000, "Thông tin sản phẩm Máy lọc nước AVA thiết kế tinh tế, bề mặt kính cường lực mỹ thuật sang trọng Vỏ tủ thép sơn tĩnh điện bền chắc, bố trí gọn gàng trong phòng bếp, phòng khách,... Các lõi được bố trí hợp lý, đảm bảo an toàn khi dùng và dễ thay lõi với phần điện và phần nước được tách riêng.");
select * from products;
select * from products where id = 1;
select * from products where category_id = ?;
SELECT * FROM products ORDER BY id DESC LIMIT 10;
desc products;  
alter table products add column category_id int;

insert into products(name, category_id, imgSrc, priceNew, priceLast, description) value("Điện thoại iPhone 13 Pro Max 128GB", 1, "https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-xanh-1.jpg", 28790000, 33990000, "Điện thoại iPhone 13 Pro Max 128 GB - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách. Thiết kế đẳng cấp hàng đầu iPhone mới kế thừa thiết kế đặc trưng từ iPhone 12 Pro Max khi sở hữu khung viền vuông vức, mặt lưng kính cùng màn hình tai thỏ tràn viền nằm ở phía trước.");
create table categorys  (
	id int auto_increment primary key,
    name varchar(255)
);

insert into categorys(name) value('Phone');
insert into categorys(name) value('Fashion');
insert into categorys(name) value('Appliances');


drop table categorys;
select * from categorys ;
alter table category drop name;
alter table category rename to categorys;
alter table category add column category varchar(255);
alter table category change column name category varchar(255);


select * from products join categorys on categorys.id = products.categoryId where categoryId = 1;

alter table users add column phone varchar(255) null;
insert users(firstName, lastName, phone, email, password) values (?, ?, ?, ?, ?);
desc users;

drop table users;
select * from users;

create table accounts (
	id int auto_increment primary key,
    username varchar(45),
    password varchar(45),
    isSell tinyint,
    isAdmin tinyint
);

insert accounts(username, password, isSell, isAdmin) values ("admin", "123456", 0, 0);
select * from accounts;
alter table accs modify id_sell int;
alter table accs modify id_admin int;
alter table acc rename accs;
drop table accounts;
select * from accounts where username = "admin" and password = "12345";

create table newspappers (
	id int auto_increment primary key,
    name varchar(255) null,
    description varchar(255) null,
    imgSrc varchar(255) null
);

desc newspappers;

select * from newspappers;

select * from products join categorys on categorys.id = products.category_id where category_id = 1;

select * from products where name like '%điện thoại%';

create table order_detail (
	id int auto_increment primary key,
    order_id int,
    product_id int,
    quantity int,
    price int
    
);

create table orders (
	id int auto_increment primary key,
    order_name varchar(255),
    address varchar(255),
    phone varchar(255),
    total int
    
);

drop table logins;
select * from logins 