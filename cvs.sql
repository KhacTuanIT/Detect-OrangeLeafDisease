-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2021 at 08:29 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cvs`
--

-- --------------------------------------------------------

--
-- Table structure for table `anh`
--

CREATE TABLE `anh` (
  `ID` int(11) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `anh`
--

INSERT INTO `anh` (`ID`, `Image`, `created_at`, `updated_at`) VALUES
(5, 'bankUN3Y779JRU.png', '2021-01-08 05:55:16', '2021-01-08 05:55:16'),
(6, 'b2O1H2LDVEXB.png', '2021-01-08 05:56:32', '2021-01-08 05:56:32'),
(7, 'b24V3XDWUVTV.png', '2021-01-08 05:58:43', '2021-01-08 05:58:43'),
(8, 'b2JPYBSOCJPB.png', '2021-01-08 06:00:56', '2021-01-08 06:00:56'),
(9, 'b2YX7CBX5B0O.png', '2021-01-08 06:03:21', '2021-01-08 06:03:21'),
(10, 'b2O35G1CIPFE.png', '2021-01-08 06:05:53', '2021-01-08 06:05:53'),
(11, 'b23CFEZ3PI97.png', '2021-01-08 06:06:50', '2021-01-08 06:06:50'),
(12, 'b2ZMWCOQ868E.png', '2021-01-08 06:12:42', '2021-01-08 06:12:42'),
(13, 'b2YVATTLGL2Q.png', '2021-01-08 06:13:32', '2021-01-08 06:13:32'),
(14, 'b26XWULB0FRZ.png', '2021-01-08 06:14:32', '2021-01-08 06:14:32'),
(15, 'b2M9OLGB2072.png', '2021-01-08 06:15:16', '2021-01-08 06:15:16'),
(16, 'b2QYEDFKH18Q.png', '2021-01-08 06:16:01', '2021-01-08 06:16:01'),
(17, 'b2978GSRJE4C.png', '2021-01-08 06:16:48', '2021-01-08 06:16:48'),
(18, 'b21MNRLMMV8C.png', '2021-01-08 06:17:14', '2021-01-08 06:17:14'),
(19, 'b2Y4M7UJWN1J.png', '2021-01-08 06:18:24', '2021-01-08 06:18:24'),
(20, 'b2FHHP3K0VGP.png', '2021-01-08 06:19:16', '2021-01-08 06:19:16'),
(21, 'b23XD0IUOB1E.png', '2021-01-08 06:20:23', '2021-01-08 06:20:23'),
(22, 'b2S9NFUQ3B00.png', '2021-01-08 06:21:42', '2021-01-08 06:21:42'),
(23, 'b2EC8TI3CFLT.png', '2021-01-08 06:24:31', '2021-01-08 06:24:31'),
(24, 'b2LETRMKO5D1.png', '2021-01-08 06:25:22', '2021-01-08 06:25:22'),
(25, 'b24AVVYL1O56.png', '2021-01-08 06:39:49', '2021-01-08 06:39:49'),
(26, 'b23A0FBISAYT.png', '2021-01-08 06:41:15', '2021-01-08 06:41:15'),
(27, 'b28OLYAR94CQ.png', '2021-01-08 06:41:41', '2021-01-08 06:41:41'),
(28, 'b2CC77HBQQHV.png', '2021-01-08 06:44:02', '2021-01-08 06:44:02'),
(29, 'b2MQLBET4BDD.png', '2021-01-08 06:45:10', '2021-01-08 06:45:10'),
(30, 'b27MICRPD64N.png', '2021-01-08 06:46:29', '2021-01-08 06:46:29'),
(31, 'b2R7DSH2PKSK.png', '2021-01-08 06:47:26', '2021-01-08 06:47:26'),
(32, 'b2SRT57EEI0Z.png', '2021-01-08 06:49:09', '2021-01-08 06:49:09'),
(33, 'b5XUZ9I8MJOX.png', '2021-01-08 06:51:34', '2021-01-08 06:51:34'),
(34, 'b112V5VKJVXFP.png', '2021-01-08 06:54:25', '2021-01-08 06:54:25'),
(35, 'b140OHMRZCFD5.png', '2021-01-08 06:54:48', '2021-01-08 06:54:48'),
(36, 'b14T6NLXUVJWA.png', '2021-01-08 06:56:40', '2021-01-08 06:56:40'),
(37, 'b14ENHLGQCOUT.png', '2021-01-08 07:02:28', '2021-01-08 07:02:28'),
(38, 'b14JFQ8WVPO5L.png', '2021-01-08 07:19:45', '2021-01-08 07:19:45');

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE `disease` (
  `ID` int(11) NOT NULL,
  `disease_name` varchar(100) NOT NULL,
  `disease_symptom` text NOT NULL,
  `healing` text NOT NULL,
  `disease_vnname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `disease`
--

INSERT INTO `disease` (`ID`, `disease_name`, `disease_symptom`, `healing`, `disease_vnname`) VALUES
(1, 'Blackspot', 'Triệu chứng:\r\n- Đầu tiên vết bệnh là những chấm nhỏ màu nâu, sau đó lớn dần, có viền màu nâu.\r\n- Trên trái quýt Tiều, bên trong vết bệnh có màu trắng xám, đôi khi có những chấm nhỏ màu đen.\r\n- Trên trái cam Mật vết bệnh có màu nâu, viền nâu đậm; nhiều vết bệnh có thể liên kết lại với nhau thành vết bất dạng\r\n- Bệnh thường gây hại nặng ở những vườn cây già, trái ở tầng trên hoặc trái phơi ra ngoài nắng.\r\n- Bệnh làm trái cam mật rất dễ bị rụng. ', 'Biện pháp phòng trừ:\r\n- Thu gom những trái bị bệnh đem tiêu hủy.\r\n- Những vườn thường bị bệnh xảy ra, nên phun ngừa định kỳ từ khi trái được 2 tháng tuổi cho đến trước khi thu hoạch 15 ngày.\r\n- Giai đoạn đầu phun 30 ngày/lần, giai đoạn chuẩn bị lên da lươn đến thu hoạch phun 10 ngày/lần.\r\nLipman 80WP\r\n700 g/200 lit nươc\r\nBemyl 50WP\r\n600 g/200 lít nước\r\nCatcat 250EC\r\n150 ml/200 lít nước\r\nTop 70WP\r\n200 g/200 lit nước\r\nCarbenda Supper 50SC\r\n300 ml/200 lit nước', 'Bệnh ghẻ lõm'),
(2, 'Melanose', 'Triệu chứngLá: Các tổn thương bắt đầu dưới dạng các vết lõm nhỏ, đậm màu, hình tròn, có viền vàng. Khi bệnh tiến triển, các đốm này nhô cao và chuyển sang màu nâu đậm. Lá chuyển sang màu vàng và rụng sớm. Trái: Các đốm này ban đầu là các đốm nhỏ, có màu nâu nhạt, và trũng. Khi bệnh tiến triển, các đốm này nhô cao và chuyển sang màu đậm. Các đốm ở gần nhau có thể kết hợp tạo thành một bề mặt thô ráp không đều hoặc thô ráp. Tổn thương thường chỉ ở bên ngoài đối với trái. Thường có thể thấy các tổn thương ở các cành con đang chết.', 'Kiểm soát melanose cam quýt, một khi nó đã phát triển trong một cây hoặc vườn cây, liên quan đến việc sử dụng thuốc diệt nấm. Loại phổ biến nhất được sử dụng là thuốc diệt nấm đồng, nhưng bạn có thể nhận được các khuyến nghị và hướng dẫn sử dụng từ vườn ươm hoặc khuyến nông địa phương.', 'Bệnh hắc tố cam quýt'),
(3, 'canker', 'Triệu chứng:\r\n- Vết bệnh xuất hiện ở mặt trên và mặt dưới của lá, lúc đầu nhỏ, sũng ướt, màu xanh tối, sau đó biến thành màu nâu nhạt, mọc nhô lên trên mặt lá hay vỏ trái. Kích thước vết bệnh thay đổi tuỳ theo loại cây, từ 1-2 mm trên quít, 3-5 mm trên cam mật và hơn 10 mm trên cam sành, bưởi. Chung quanh vết bệnh trên lá có quầng màu vàng lớn nhỏ tuỳ loại cây, bề mặt vết bệnh sần sùi.\r\n- Trên trái, vết bệnh tương tự như trên lá nhưng khó thấy quầng vàng xung quanh. Bệnh nặng các vết bệnh liên kết lại với nhau thành từ mãng lớn và bất dạng, đặc biệt là bệnh nhiễm theo các vết đục của sâu vẽ bùa.\r\n- Bệnh gây hại ở vỏ trái làm giảm giá trị thương phẩm, phần thịt của múi trái có thể bị chai, trong điều kiện ẩm độ cao trái bệnh bị nứt chảy nhựa cuối cùng trái vàng và rụng đi. Cành non cũng thường bị nhiễm nặng, các đốm sần sùi đóng dày đặc làm khô chết cành ', 'Biện pháp phòng trừ:\r\n- Tránh trồng cây con bị bệnh.\r\n- Không trồng mật độ quá dày, thường xuyên vệ sinh vườn, tỉa cành tạo tán cho vườn cây thông thoáng.\r\n- Vườn ươm, vườn trồng phải cao ráo, tránh đọng nước.\r\n- Cắt bỏ cành lá bệnh và mang ra khỏi vườn tiêu hủy, dụng cụ làm vườn phải được khử trùng bằng Javel hoặc hơ với lửa.\r\n- Bón phân cân đối hợp lý theo từng giai đoạn để tránh ra đọt non liên tục.\r\n- Khi trong vườn có bệnh xuất hiện, không nên tưới nước thẳng lên tán cây sẽ làm cho mầm bệnh lây lan mạnh.\r\n- Phun thuốc định kỳ bảo vệ các đợt lộc non và trái non, phun 2-3 lần, mỗi lần cách nhau 7 - 10 ngày.\r\nBonny 4SL\r\n400-500ml/200 lít nước', 'Bệnh loét trên cây có múi'),
(4, 'greening', 'Triệu chứng:\r\n- Lá: Trên cây bị bệnh phiến lá hẹp và nhọn như hình tai thỏ, khoảng cách giữa các lá ngắn lại, lá vàng nhưng gân chính và gân phụ vẫn còn xanh, người ta thường gọi vàng lá gân xanh.\r\n- Trái: Cây ra hoa nhiều đợt, có thể trên cùng một nhánh cây vừa mang trái vừa có hoa. Trái nhỏ hơn bình thường, méo mó, khi bổ dọc trái ra thì tâm trái bị lệch hẳn sang một bên, trái chín ngược. Trên trái bị bệnh hạt thường bị thui đi, có màu nâu.\r\n- Rễ: khi bị bệnh hệ thống rễ cây cũng bị thối nhiều, đa số những rễ tơ bị mất đi chỉ còn lại hệ thống rễ chính, thậm chí rễ chính cũng thối. ', 'Biện pháp phòng trừ:\r\n- Sử dụng biện pháp phòng trừ đồng bộ và diện rộng trong vùng mới đạt hiệu quả cao.\r\n- Cách ly nguồn nhiễm bệnh: vườn trồng cam quýt nhất thiết phải có đê bao và cây chắn gió (như tràm, bình linh, gòn…) để tránh rầy chổng cánh xâm nhập.\r\n- Trồng cây giống khỏe, sạch bệnh. Có thể trồng xen ổi.\r\n- Trồng với mật độ hợp lý tránh giao tán.\r\n- Tạo tán, tỉa cành tạo vườn thông thoáng.\r\n- Loại bỏ cây nhiễm bệnh, kiểm soát và phòng trừ rầy trên vườn và trên các cây ký chủ.\r\n- Diệt rầy chổng cánh bằng biện pháp phun thuốc hóa học định kỳ để bảo vệ các đợt lá non vì rầy luôn chọn các đọt non để đẻ trứng.\r\n- Phun thuốc để trừ rầy chổng cánh .\r\nApplaud 10WP\r\n500 g/200 lít nước\r\nMospilan 3EC\r\n400 ml/200 lit nước\r\nHoppecin 50EC\r\n600 ml/200 lit nước\r\nHopsan 75EC\r\n600 ml/200 lit nước\r\nWellof 330EC\r\n500 ml/200 lit nước', 'Bệnh vàng lá gân xanh trên nhóm cây có múi'),
(5, 'healthy', '', 'Vườn cây của bạn khá khỏe mạnh. Hãy tiếp tục chăm sóc tốt để thu được lợi nhuận cao.', 'Cây khỏe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anh`
--
ALTER TABLE `anh`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `disease`
--
ALTER TABLE `disease`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anh`
--
ALTER TABLE `anh`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `disease`
--
ALTER TABLE `disease`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
