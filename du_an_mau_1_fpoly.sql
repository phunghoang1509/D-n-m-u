-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 19, 2023 lúc 05:38 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `du_an_mau_1_fpoly`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `cart_detail_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `cart_detail_id`, `product_id`, `quantity`) VALUES
(1, 1, 2, 3),
(2, 1, 5, 1),
(3, 1, 6, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts_detail`
--

CREATE TABLE `carts_detail` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `carts_detail`
--

INSERT INTO `carts_detail` (`id`, `user_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Máy ảnh & máy quay phim'),
(2, 'Thiết bị điện gia dụng'),
(3, 'Máy tính và laptop'),
(4, 'Thiết bị điện tử'),
(5, 'Điện thoại và phụ kiện');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `content`, `product_id`, `user_id`, `date`) VALUES
(5, '345', 3, 1, '2023-02-01 13:17:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `view` int(11) NOT NULL,
  `received_date` date NOT NULL,
  `special` int(1) NOT NULL,
  `category_id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `quantity`, `discount`, `image`, `description`, `view`, `received_date`, `special`, `category_id`) VALUES
(1, 'Túi máy ảnh giá tốt cho máy ảnh máy quay', 18, 157, 5, '../uploads/product/358782e5f51972ff42cd2e2d117f14f6.jfif', 'SỨC CHỨA 1 BODY + 2 LENS LOẠI TRUNG, CÓ NGĂN ĐỰNG PHU KIỆN, FLASH, LINH TINH…\r\nCHẤT LIỆU CHỐNG THẤM NƯỚC, VẢI MÚT DÀY DẶN CHỐNG SỐC, BẢO ĐẢM AN TOÀN CHO MÁY ẢNH\r\nSize 26x14x19cm', 64, '9792-02-17', 0, 1),
(2, 'Bàn phím không dây Bluetooth Logitech K380 - giảm ồn, gọn nhẹ, đa thiết bị, Mac/ PC', 70, 72, 10, '../uploads/product/sg-11134201-22100-i2h29b52llivbc.jfif', 'THÔNG TIN CHI TIẾT\r\n\r\nLoại kết nối: Bluetooth Cổ điển (3.0)\r\n\r\nPhạm vi không dây: 10 m (33 ft) - 1 Phạm vi không dây có thể thay đổi tùy theo điều kiện môi trường và sử dụng máy tính\r\n\r\nHỗ trợ phần mềm:\r\n\r\n- Logitech Options dành cho Windows 10 trở lên\r\n\r\n- Logitech Options dành cho Mac (OS X 10.8 trở lên)\r\n\r\n- Logitech Flow\r\n\r\nPin: 2 x AAA\r\n\r\nTuổi thọ pin: 12 tháng\r\n\r\nĐèn chỉ báo (LED): LED pin, 3 LED kênh Bluetooth\r\n\r\nCác phím đặc biệt: Các phím nóng (Home, Back, Công tắc ứng dụng, Menu theo ứng dụng cụ thể), Easy-Switch™\r\n\r\nKết nối / Nguồn: Công tắc bật/tắt\r\n\r\nThương hiệu Logitech Thụy Sỹ\r\n\r\nSản xuất tại Trung Quốc\r\n\r\nBảo hành chính hãng 12 tháng\r\n\r\nKÍCH THƯỚC\r\n\r\nChiều cao: 124 mm\r\n\r\nChiều rộng: 279 mm\r\n\r\nĐộ sâu: 16 mm\r\n\r\nTrọng lượng: 423 g bao gồm pin\r\n\r\nYÊU CẦU HỆ THỐNG\r\n\r\n- Các thiết bị có bật Bluetooth\r\n\r\n- Windows 10 trở lên\r\n\r\n- macOS 10.15 trở lên\r\n\r\n- iPadOS 13.1 trở lên\r\n\r\n- iOS 11 trở lên\r\n\r\n- Chrome OS\r\n\r\n- Android 7 trở lên\r\n\r\n- Hoạt động với Surface\r\n\r\n- Kết nối Internet (để tải về phần mềm tùy chọn)', 48, '2022-09-22', 0, 3),
(3, 'Loa máy tính vi tính mini laptop LED để bàn bass giá rẻ LUVIBA LO46', 25, 182, 10, '../uploads/product/c8ab6e6e9fb734e8dff0704b22f2594e.jfif', 'Loa máy tính vi tính mini laptop LED để bàn bass giá rẻ LUVIBA LO46\r\n\r\nLOA MÁY TÍNH\r\n\r\nLOA VI TÍNH\r\n\r\n????THÔNG SỐ KỸ THUẬT\r\n\r\nKích thước (D x R x C): 7 x 6 x 10 cm\r\n\r\nĐiện trở: 4 ôm\r\n\r\nOutput power: 3W x 2\r\n\r\nÂm tần: 100Hz - 20KHz \r\n\r\nS/N: >= 70db\r\n\r\nNguồn cấp USB 2.0, âm thanh Jack 3.5mm\r\n\r\nTương thích: Máy tính, laptop, điện thoại có hỗ trợ chân cắm tai nghe 3.5mm\r\n????LƯU Ý: Bắt buộc phải cắm đồng thời cả 2 chân cắm của LOA khi muốn sử dụng', 30, '2022-09-20', 0, 4),
(4, 'Giá đỡ Laptop , Giá kê MacBook , Ultrabook chất liệu bằng nhôm điều chỉnh độ cao , chống mỏi cổ, dễ gấp gọn', 16, 85, 4, '../uploads/product/a52a641c419abfb4c12f9abcaad574b6.jfif', ' Mẫu Z3 (***) : Đây là mẫu gia công lại từ mẫu N3 và được đặt tên lại là Z3  Chất lượng gia công tốt hơn N3, nhược điểm là hợp kim nhôm pha tạp => khá nặng , cả 2 màu đều sơn nhũ tĩnh điện ( thích hợp máy < 14”)\r\n\r\nMẫu Z23 : Bản nâng cấp từ Z3 để  phù hợp máy 15.6 - 17.3 ( gaming laptop) - nhược điểm nhỏ : KHỚP KẾT NỐI HƠI ĐẶC BIỆT NÊN SẼ HƠI PHỨC TẠP KHI MỚI SỬ DỤNG\r\n\r\nMẫu N3 ver 2 là mẫu được nâng cấp sau này, kích thước có lớn hơn 1 chút, chất liệu nhôm và được sơn tĩnh điện nên không sáng bóng như đời đầu nhưng chất lượng gia công tốt hơn - thích hợp dùng cho các máy <15.6\" ( máy không quá to)\r\n\r\nMẫu N3 ver 3 : Là N3 ver 2 nhưng phủ full silicone\r\n\r\nMẫu P2 cố định : Chất liệu nhôm , anode sáng bóng ( cả 2 màu bạc và xám đều anode). - thích hợp dùng cho mọi loại máy, kể cả máy 17.3\" - điểm trừ duy nhất là không xếp gọn được nhưng vì vậy kê bao chắc chắn.\r\n\r\nMẫu L200 cố định: Chất liệu nhôm , sơn tĩnh điện - thích hợp dùng cho mọi loại máy, kể cả máy 17.3\" - điểm trừ duy nhất là không xếp gọn được nhưng vì vậy kê bao chắc chắn.\r\n\r\nMẫu Z1 cố định : Chất liệu nhôm , anode sáng bóng ( cả 2 màu bạc và xám đều anode) - thích hợp dùng cho mọi loại máy\r\n\r\nMẫu PL1 / PL1 Ver 2 (Phiên bản nâng cấp của PL1, bổ sung full đệm silicone chống trượt): vật liệu kim loại, một số chi tiết bằng nhựa và nhôm, nước sơn nhũ không sáng bóng - thích hợp dùng cho các máy <15.6\"\r\n\r\nMẫu LS501 / LS501 Ver 2 : Phiên bản kết hợp giữa N3 và D103 - Chất liệu bằng nhôm được sơn tĩnh điện, chất lượng tốt, có khả năng dùng được laptop cỡ lớn 15.6\" \r\n\r\nMẫu LS501 / LS501 Ver 2 Bạc : Bản nâng cấp nhẹ về ngoại hình so với LS501 và LS501 ver 2, về mặt được Anode như các mẫu cao cấp và tặng túi nỉ thay vì túi vải như các mẫu khác\r\n\r\nN8 2 tầng : Là giá đỡ 2 tầng, tương tự N3 ver 2  với lớp sơn tĩnh điện 2 màu bạc xám và xám không gian, phù hợp máy dùng bàn phím rời\r\n\r\nMẫu N3 - Cao cấp: Đúng như tên gọi, bản nhôm anode sáng bóng cao cấp, bản nhôm dày 5mm cực kì chắc chắn, sử dụng tốt nhất cho máy <15.6\" không quá to.\r\n\r\nMẫu C4 - Cao cấp : Phiên bản cao cấp shop nhập về hạn chế vì hàng săn sales - số lượng hạn chế, chất liệu nhôm - anode sáng bóng, bản nhôm dày  5mm - phù hợp máy 15.6 - 17.3 ( gaming laptop)\r\n\r\nMẫu R1 - Bạc : Chất liệu nhôm - anode sáng bóng, bản nhôm dày  - phù hợp máy 15.6 - 17.3 ( gaming laptop)\r\n\r\nMẫu X6 : Chất liệu nhôm - anode sáng bóng, bản nhôm dày  - phù hợp máy 15.6 - 17.3 ( gaming laptop)', 7, '6071-03-07', 0, 3),
(5, 'Nồi nấu cháo chậm Bear 0,8L cho bé ăn dặm - Ninh hầm hấp cách thuỷ chưng yến đa năng SUBE001', 75, 321, 18, '../uploads/product/7f41cd23bcc630227814529f30527477.jfif', 'Phân biệt các màu:\r\n\r\n   Nồi màu hồng, màu nâu và màu vàng: Có thể vừa nấu cháo vừa hấp củ quả cùng lúc. Bên dưới nấu cháo, bên trên hấp củ quả\r\n\r\n   Nồi màu xanh: Nấu cháo riêng, hấp riêng. Nấu và hấp không cùng lúc\r\n\r\n  Các loại nồi chất lượng như nhau, Mamasu shop đều tặng Decal dán bảng điều khiển tiếng việt, hướng dẫn sử dụng tiếng việt nên các mẹ có thể thoải mái lựa chọn bản theo ý thích nha\r\n\r\n    Nồi nấu cháo nhìn cũng phải kute phomai que mới chịu các mẹ ạ ????????????\r\n\r\n     Nhà Mamasu mới về nồi Ninh hầm các thuỷ Bear, nấu cháo, nấu chè, hầm gà, chưng yến gì cũng được ạ \r\n\r\n      Đặc biệt hơn tất cả các loại các loại nồi trên thị trường hiện nay vì nồi Bear có thể vừa nấu cháo vừa hấp củ quả được.\r\n\r\n\r\n     Các mẹ chỉ việc cho đồ cần nấu vào nồi rồi ấn nút là bé đã có 1 bữa cháo ngon lành đầy đủ chất dinh dưỡng. Không lo cháy, không lo trào, không phải trông nồi. Nấu quá nhàn mà vẫn đầy đủ chất dinh dưỡng cho bé \r\n\r\n      Dung tích 0,8L được gần 3 bát con, các mẹ có thể nấu từ tối hôm trước để sáng hôm sau bé dậy có cháo ăn luôn, hết thời gian nấu nồi tự chuyển sang chế độ giữ nhiệt\r\n\r\n      Các mẹ nhanh tay sắm cho bé yêu nhà mình 1 chiếc đi ạ, có nồi xinh mẹ rảnh tay nấu nướng', 10, '2022-10-07', 0, 2),
(6, 'Android TV box MXQ PRO 4K Android:10.1 Đã cài sãn xem truyền hình trên 200 kênh YouTube Facebook', 35, 254, 8, '../uploads/product/f3cd07c05655904a516eed1ed748e597.jfif', 'Nâng cấp cho tất cả TV THƯỜNG thành TV ANDROID CAO CẤP.\r\n\r\nPhát hiện chỗ nào rẻ hơn liên hệ Cty để có giá tốt hơn\r\n\r\nMáy đã được kỹ thuật cài sẵn tất cả ứng dụng cần thiết chỉ kết nối tivi nhập bass wifi là sử dụng thôi\r\n\r\nCấu hình Ram2gb+16gb Android 10\r\n\r\nThiết bị bảo hành 12 tháng\r\n\r\nCAM KẾT CHẠY MƯỢT TẤT CẢ ỨNG DỤNG.KHÔNG LAG NHƯ ANDROID ĐỜI THẤP\r\n\r\nChỉ cần có wifi miễn phí xem trên 200 kênh truyền hình,Bóng đá thả ga,YouTube,Google,Facebook,karaoke Game vvv\r\n\r\nCÁC TÍNH NĂNG KHÁC:\r\n\r\nHàng nghìn ứng dụng học tập Giải Trí cho bé yêu\r\n\r\nXem bóng đá đỉnh cao Ngoại hạng Anh, Ý, C1...\r\n\r\nXem hơn #200 kênh truyền hình HD Miễn Phí ???? không tốn tiền hàng tháng\r\n\r\nXem Youtube, Phim rạp_HD thoải mái\r\n\r\nHàng nghìn phim bom tấn chuẩn 1080p, 4K\r\n\r\nLướt net, truy cập internet, đọc báo trên màn hình tivi\r\n\r\nXem chương trình thiếu nhi cho bé vui chơi, học tập\r\n\r\nNghe nhạc đỉnh cao chất lượng\r\n\r\nHọc tập ngay trên TIVI với hàng nghìn App trên CH-PLAY\r\n\r\nXem Phim Online, Youtube trên Tivi đời cũ.\r\n\r\nHát Karaoke cực đỉnh điều khiển và chọn bài trên điện thoại', 21, '2022-09-13', 0, 4),
(7, 'Instax Mini 11 Máy ảnh lấy ngay Fujifilm Chính hãng BH 1 năm Tặng kèm 10 film', 800, 129, 20, '../uploads/product/eaaa0c291d3ae027a1fbaf9e022c7ea3.jfif', 'Thông số kỹ thuật:\r\n_Độ dài tiêu cự: 60mm\r\n_Khẩu độ: f/12.7\r\n_Cách lấy nét: Fix\r\n_Lấy nét gần: 30 cm\r\n_Kính ngắm: Trực tiếp, quang học\r\n_Độ mở kính ngắm: 0.37x\r\n_Chế độ chụp: Tự động\r\n_Tốc độ chụp: 1/2 tới 1/250 giây\r\n_Flash sẵn: Có\r\n_Cự ly Flash: 0.3 tới 2.7 mét\r\n_Chế độ Flash: Tự động\r\n_Nạp Flash: 0 tới 6.5 giây\r\n_Pin: 2 viên x AA Alkaline LR6 AM3\r\n_(Dài x Cao x Rộng): 107.6 x 121.2 x 67.3 mm\r\n_Khối lượng: 293 g\r\n_Khối lượng đóng gói: 442 g\r\n_Kích thước hộp (Dài x Cao x Rộng): 121.9 x 142.2 x 76.2 mm\r\n_Thành phần: 1 x Máy ảnh Mini 11, 2 x Pin AA LR6, 1 x Strap đeo tay, 1 x Pack cover nút bấm chụp, sách hướng dẫn, Phiếu bảo hành (nếu có)\r\n_Made in Thailand', 34, '0000-00-00', 0, 4),
(8, 'Kính cường lực iphone 2.5D trong suốt 6/6plus/6s/6splus 7/7plus 8/8plus x/xs 11/12/13/pro/max/promax/Shin Case/Ốp lưng', 1, 314, 0, '../uploads/product/ef3846d1626a77b88749b0fb192fc5d9.jfif', 'Mô tả sản phẩm:\r\n- Chất liệu: kính\r\n- Dòng máy tương thích: Ốp iphone 5/5s/6/6plus/6s/6s plus/6/7/7plus/8/8plus/x/xs/xs max/11/11 pro/11 promax\r\n- Xuất xứ: Việt Nam\r\n\r\nQuý khách lưu ý:\r\n- Khi đặt hàng Quý khách vui lòng ghi chú vào đơn hàng khi cần có thêm thông tin như : màu sắc, kiểu, dáng thời gian Quý khách có thể nhận hàng.\r\n- Khi nhận được hàng Quý khách vui lòng bỏ chút thời gian để đánh giá cho shop, để shop có chiều hướng phục vụ tốt hơn cho Quý khách.\r\n', 18, '2022-09-14', 0, 5),
(9, 'Nồi chiên không dầu dung tích 7 lít CAMEL Bảo hành 6 tháng', 100, 291, 10, '../uploads/product/af85fa38315b9ddd27af8cd5f7f1f135.jfif', 'bộ nồi chiên không dầu CAMEL mã hàng F261-1\r\ndung tích : 5L-7L\r\ncông xuất : 1350W\r\nnguồn điện : 220v, 50Hz\r\ntrọng lượng : 4.3kg\r\nkích thước : 257 *317*290mm\r\nkích thước đóng gói : 325*325*325mm\r\nBảo hành : 06 tháng', 4, '2022-10-08', 0, 2),
(10, 'Pin sạc BESTON AA AAA, Sạc pin chính hãng BESTON, BẢO HÀNH 1 NĂM | Mic không dây, máy ảnh, điều khiển ( Pin 1.2V )', 10, 492, 5, '../uploads/product/a01d01a58c4d04998a7c4bf140163419.jfif', 'Lưu ý:  \r\nInput: Micro USB 5V/1A: Sạc C833, M7001, M7005, C9009, C9001, C8001\r\nInput: Micro USB 5V/1.5A: Sạc DC401L\r\nInput: Micro USB 5V/2A: Sạc C9010\r\nChân cắm trực tiếp: Sạc C807B, C833\r\n- Pin sạc NiMh có điện áp 1,2v, dùng thay cho pin 1,5v. Tuy nhiên, có thể không phù hợp với máy hút sữa Philips Avent, chuột Fuhlen, máy đo huyết áp và một số thiết bị điện tử đòi đúng 1,5v. \r\n- Không được sạc pin loại dùng một lần mua ở tiệm, cố tình sạc thì sẽ xảy ra cháy nổ, không được bảo hành.\r\n- Quý khách lựa chọ kỹ lưỡng, trong phần phân loại shop đã để riêng pin và sạc cho khách dễ lựa chọn\r\n\r\n- Pin tiểu sạc Beston1200 mAh - (Dung lượng thực 900mAh)\r\n- Pin tiểu sạc Beston2000 mAh - (Dung lượng thực 1300mAh) Dòng pin sạc có độ tự xả thấp và tuổi thọ cao\r\n- Pin tiểu sạc Beston3000 mAh - (Dung lượng thực 2100mAh)\r\n- Pin tiểu sạc Beston3300 mAh - (Dung lượng thực 2450mAh)\r\nPin sạc BESTON AAA có sẵn các dung lượng 800mAh 1100mAh, 1300mAh cho khách hàng có nhiều lựa chọn.:\r\n- Pin sạc 1.2V Ni-Mh Kích thước: dài 44mm x 11mm\r\n- Bộ 04 pin AAA được đựng trong hộp nhựa chắc chắn\r\nPin sạc BESTON AA có sẵn các dung lượng 1200mAh 2000mAh, 3000mAh, 3300mAh cho khách hàng có nhiều lựa chọn.:\r\n- Pin sạc 1.2V Ni-Mh Kích thước: dài 49mm x 14mm\r\n- Bộ 04 pin AA được đựng trong hộp nhựa chắc chắn\r\nBộ sản phẩm có các tùy chọn khác nhau tùy theo mục đích sử dụng của khách hàng:\r\nSạc pin AA dòng 700ma / Pin AAA dòng 700ma\r\nNguồn vào 5V 1A\r\nCực an toàn và tăng tuổi thọ cho pin sạc.\r\nCó 2 led báo quá trình nạp mỗi led báo chung cho 2 pin một bên:\r\n    - Led đỏ sáng liên tục -> đang sạc pin\r\n    - Led xanh sáng liên tục -> pin đầy, bộ sạc ngắt điện khỏi pin.\r\n    - Led đỏ nháy -> pin bất thường, kiểm tra lại tiếp xúc hoặc loại pin\r\nCó thể sạc tối đa 4 pin AA hoặc 4 pin AAA cùng lúc, sạc độc lập từng pin. \r\n (sạc đầy pin AA 3000mah trong vòng hơn 3 tiếng)\r\nBộ sạc được bảo hành 1 tháng nếu có lỗi của nhà sản xuất. Khách hàng lưu ý không dùng sạc để sạc cho pin dùng 1 lần hay pin kém chất lượng để tránh những hỏng hóc không mong muốn.\r\n * Sạc BESTON \r\n- Hãng sản xuất: BESTON - chính hãng\r\n- Dùng được cho các cỡ Pin : AA, AAA.\r\n- Dùng cho Pin có thể sạc được; Điện áp 1.2V Ni-Mh/Ni-Cd. \r\n- Dòng sạc/Viên: Pin AA 150mA; Pin AAA 130mA\r\n- Sạc bằng cáp micro USB (có kèm theo)\r\n- Sạc không tự ngắt, sạc pin từ 6-8h để đầy pin. Có thể cắm sạc lâu mà không sợ chai pin vì sạc có chế độ tự cân chỉnh dòng sạc vào pin khi pin đầy.\r\n***Cách Dùng: \r\n+ Khi pin hết hoặc pin yếu ta cài pin vào bộ sạc để sạc, chú ý đúng chiều âm (-), dương (+). Khi cài pin vào sẽ có đèn đỏ báo hiệu đang sạc.\r\n+ Thời gian sạc Pin tiểu AA dung lượng 1200mAh sạc đầy trong vòng 7h-8h, Pin đũa AAA dung lượng 800mAh sạc đầy trong vòng 6h-7h. Đèn đỏ hiển thị sẽ vẫn sáng khi sạc đầy, sạc không tự ngắt, không có đèn báo đầy, nhưng bộ sạc sẽ tự cân chỉnh dòng sạc vào pin để giữ tuổi thọ pin lâu dài mà không bị chai pin.\r\n', 15, '2022-09-25', 0, 1),
(11, 'Lót chuột - Pad chuột máy tính (11 họa tiết khác nhau)', 5, 532, 0, '../uploads/product/728be845ab309807076e0cc2d3668af0.jfif', 'Hình Chữ Nhật,dày 2- 3mm, kích thước 21 x 26 cm\r\n\r\nChất liệu cao su mềm mại, chống trơn trượt\r\n\r\nMàu sắc tươi tắn, hình ảnh dễ thương góp phần tô điểm hơn cho bàn làm việc của bạn\r\n\r\nNhiều mẫu mã chọn lựa phù hợp theo cá tính riêng.\r\n\r\nTrên bài đăng chỉ tối đa 8 ảnh, khách hàng muốn xem thêm 3 màu còn lại chat cho shop nhé!\r\n\r\nShop chuyên sỉ lẻ lót chuột 26x21cm, 80x30cm giá cực tốt, liên hệ 0335.937.937\r\n\r\nChất liệu: Mặt trên phủ vải chuyên dụng, đế cao su chống trượt\r\n\r\nCông ty sản xuất: Công ty TNHH In XinXin Quảng Châu\r\n\r\nĐịa chỉ: Quảng Châu, Trung Quốc', 2, '2022-09-14', 0, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `image` varchar(255) NOT NULL,
  `role` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `address`, `phone`, `email`, `password`, `status`, `image`, `role`) VALUES
(1, 'admin', '1', 'Hà Nội', '0987654321', 'admin@gmail.com', 'admin', 1, '../uploads/user/mvt.jpg', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_CART_CARTDETAIL` (`cart_detail_id`),
  ADD KEY `FK_CART_PRODUCT` (`product_id`);

--
-- Chỉ mục cho bảng `carts_detail`
--
ALTER TABLE `carts_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_CARTDETAIL_USER` (`user_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_COMMNENTS_PRODUCTS` (`product_id`) USING BTREE,
  ADD KEY `FK_COMMENTS_USERS` (`user_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PRODUCTS_CATEGORIES` (`category_id`);
ALTER TABLE `products` ADD FULLTEXT KEY `name` (`name`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `carts_detail`
--
ALTER TABLE `carts_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `FK_CART_CARTDETAIL` FOREIGN KEY (`cart_detail_id`) REFERENCES `carts_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CART_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `carts_detail`
--
ALTER TABLE `carts_detail`
  ADD CONSTRAINT `FK_CARTDETAIL_USER` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `FK_COMMENTS_USERS` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_COMMNENTS_PRODUCTS_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_PRODUCTS_CATEGORIES` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
