-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2025 at 01:11 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `al_bussiness`
--

-- --------------------------------------------------------

--
-- Table structure for table `ai`
--

CREATE TABLE `ai` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `things_needed_to_start` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `market_analysis` text NOT NULL,
  `marketing_strategy` text NOT NULL,
  `financial_plan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `operations_plan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `executive_summary` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ai`
--

INSERT INTO `ai` (`id`, `user_id`, `title`, `created_at`, `updated_at`, `things_needed_to_start`, `market_analysis`, `marketing_strategy`, `financial_plan`, `operations_plan`, `executive_summary`) VALUES
(1, NULL, 'poultry Business Plan', '2025-05-22 00:13:49', '2025-05-22 00:13:49', '{}', '', '', '{}', '', '{\n  \"title\": \"Feathered Delights: Poultry Farming Business\",\n  \"executive_summary\": \"Feathered Delights is a poultry farming business located in the bustling city of Abuja, Nigeria. Our target audience is adults looking for high-quality, locally sourced poultry products. With a capital investment of $12345, our goal is to establish a profitable poultry business within the next 3 months. \n\nFeathered Delights will focus on providing fresh, organic poultry products to meet the growing demand for healthy food options in the local market. Our commitment to quality and sustainability sets us apart from competitors, ensuring customer loyalty and business growth.\n\nWith a strong emphasis on ethical farming practices, Feathered Delights aims to become a leader in the local poultry industry, providing customers with premium products and exceptional service.\",\n  \"things_needed_to_start\": \"1. Land for poultry farm - $5000\n2. Poultry housing and equipment - $3000\n3. Initial stock of chicks - $1000\n4. Feed and supplements - $1500\n5. Marketing and branding materials - $1000\n6. Licensing and permits - $845\",\n  \"setup_checklist\": \"1. Secure land for poultry farm\n2. Construct poultry housing and install equipment\n3. Purchase initial stock of chicks\n4. Set up feeding and watering systems\n5. Develop marketing and branding materials\n6. Obtain necessary licensing and permits\",\n  \"market_analysis\": \"The poultry industry in Abuja, Nigeria is a growing market with increasing demand for high-quality, locally sourced products. Competitors in the area primarily focus on mass-produced poultry products, leaving a gap in the market for premium, organic options. By targeting adults with disposable income and a preference for healthy food choices, Feathered Delights can capitalize on this demand and establish a loyal customer base.\",\n  \"marketing_strategy\": \"1. Launch social media campaigns highlighting our commitment to quality and sustainability\n2. Partner with local restaurants and grocery stores to showcase our products\n3. Offer exclusive promotions and discounts to attract new customers\n4. Attend local farmers markets and food fairs to introduce our brand to the community\",\n  \"pricing_strategy\": \"1. Fresh whole chicken - $10\n2. Organic eggs - $5 per dozen\n3. Free-range chicken cuts - $15 per kg\n4. Specialty poultry products - prices vary based on product type\nOur pricing strategy is competitive with market prices while reflecting the premium quality of our products.\",\n  \"financial_plan\": \"Monthly Revenue Targets:\n- Month 1: $2000\n- Month 2: $4000\n- Month 3: $6000\n\nExpense Breakdown:\n- Cost of Goods Sold: 60%\n- Marketing and Advertising: 10%\n- Operating Expenses: 20%\n- Miscellaneous: 10%\",\n  \"operations_plan\": \"1. Daily activities will include feeding, watering, and monitoring the health of the poultry\n2. Staff requirements will initially include a farm manager and 2 farm hands to assist with daily operations\n3. As the business grows, additional staff may be hired to manage increased production and sales\",\n  \"growth_ideas\": \"1. Expand product offerings to include value-added poultry products such as marinated cuts and ready-to-cook meals\n2. Establish partnerships with local hotels and restaurants to supply premium poultry products\n3. Explore opportunities for exporting products to neighboring markets\n4. Invest in technology and automation to increase efficiency and production capacity\"\n}'),
(2, NULL, 'Abuja Poultry Farm', '2025-05-22 00:16:40', '2025-05-22 00:16:40', '{\"Land for Farming\":\"$2000\",\"Chicken Coops\":\"$3000\",\"Chickens (100)\":\"$1000\",\"Feed and Supplements (1 month)\":\"$500\",\"Equipment and Tools\":\"$2000\",\"Initial Marketing Budget\":\"$1000\",\"Contingency Fund\":\"$845\"}', 'In Abuja, there is a growing demand for fresh and locally sourced poultry products among adults who prioritize quality and health. Competitors in the market mainly focus on quantity over quality, providing us with an opportunity to differentiate ourselves through premium products and excellent customer service.', 'Our marketing strategy will focus on targeted online advertising, partnerships with local restaurants and markets, and engaging with potential customers through social media platforms. We will also offer promotions and discounts to attract new customers and build brand loyalty.', '{\"Monthly Revenue Target\":\"$5000\",\"Expense Breakdown\":{\"Feed and Supplies\":\"$1500\",\"Labor Costs\":\"$1000\",\"Marketing Expenses\":\"$500\",\"Miscellaneous Expenses\":\"$1000\"}}', '[object Object]', 'Abuja Poultry Farm is a startup poultry business located in Abuja, Nigeria. We aim to provide high-quality poultry products to the adult population in the region while generating profit within the next 3 months. With a capital investment of $12345, we plan to establish a sustainable business model that meets the local demand for fresh and healthy poultry products.'),
(3, NULL, 'Sparkle Shine Car Wash', '2025-05-22 00:22:33', '2025-05-22 00:22:33', '{\"land\":\"$2,000\",\"car wash equipment\":\"$5,000\",\"water supply system\":\"$1,500\",\"cleaning products\":\"$1,000\",\"staff uniforms\":\"$500\",\"miscellaneous expenses\":\"$1,345\"}', 'In Abuja, there is a growing demand for convenient and high-quality car wash services. While there are several competitors in the market, there is still room for a premium car wash service that focuses on customer satisfaction and attention to detail. By offering competitive pricing and exceptional service, Sparkle Shine Car Wash can quickly establish a loyal customer base.', 'To attract customers, Sparkle Shine Car Wash will implement a targeted marketing strategy that includes online advertising, social media promotions, and partnerships with local businesses. We will also offer discounts and promotions to first-time customers to encourage repeat business.', '{\"monthly_revenue_targets\":\"$5,000\",\"expense_breakdown\":{\"staff salaries\":\"$2,000\",\"equipment maintenance\":\"$500\",\"cleaning products\":\"$300\",\"utilities\":\"$200\",\"marketing expenses\":\"$500\",\"miscellaneous expenses\":\"$500\"}}', '[object Object]', 'Sparkle Shine Car Wash is a premium car wash service located in Abuja, Nigeria. We aim to provide top-notch car cleaning services to everyone in the area, focusing on quality, efficiency, and customer satisfaction. With a capital investment of $12,345, our goal is to turn a profit within 3 months of operation.'),
(29, 12, 'SunRay Car Wash - Automated Car Wash Center', '2025-07-13 04:34:28', '2025-07-13 04:34:28', '1. Land for location ($25,000) \n2. Building construction ($40,000) \n3. Car wash equipment (express, touchless, and self-serve stations) ($60,000) \n4. Water and sewage system ($15,000) \n5. General business equipment (cash register, office supplies, etc.) ($3,000) \n6. Marketing materials (signage, brochures, online ads) ($5,000) \n7. Employee training and uniforms ($5,000) \n8. Initial inventory (cars wash chemicals, etc.) ($3,000) \n9. Utilities deposit and connection fees ($5,000) \n10. Miscellaneous expenses (legal fees, licenses, permits, etc.) ($5,000) \nTotal: $123,500', 'Abuja, Nigeria has a population of over 3.5 million people, with an increasing number of vehicles on the road. The car wash industry in Abuja is mainly dominated by small, manual car wash stations. However, there is a growing demand for automated, efficient, and eco-friendly car wash services. SunRay Car Wash aims to capture this market by offering a superior experience, competitive pricing, and convenient locations.', '1. Develop a strong online presence through a professional website and social media platforms. \n2. Utilize targeted online and offline ads (newspaper, flyers, etc.) to reach a wide audience. \n3. Offer exclusive discounts and loyalty programs to encourage repeat business. \n4. Partner with local businesses and car dealerships to offer promotional deals and packages. \n5. Engage in community events and sponsorships to increase visibility and goodwill.', 'SunRay Car Wash aims to achieve profitability within three months of operations. By pricing our services competitively and controlling costs, we project the following monthly revenue and expense breakdown: \nMonthly Revenue:\n- Express Wash: N600,000\n- Touchless Wash: N1,200,000\n- Self-Serve Wash: N1,800,000\nTotal Monthly Revenue: N3,600,000 \nMonthly Expenses:\n- Staff Salaries: N1,000,000 \n- Utilities: N200,000 \n- Equipment Maintenance: N150,000 \n- Marketing: N100,000 \n- Miscellaneous Expenses: N200,000\nTotal Monthly Expenses: N1,650,000 \nNet Monthly Profit: N1,950,000', 'SunRay Car Wash will operate Monday through Sunday from 7:00 AM to 7:00 PM. Staff will be scheduled in shifts to ensure efficient service. Daily activities will include: \n1. Opening and closing procedures \n2. Monitoring equipment and water usage \n3. Customer service \n4. Regular equipment maintenance and cleanliness checks \n5. Employee performance evaluations and training \n6. Weekly inventory checks \n7. Financial reporting and record keeping', 'SunRay Car Wash is an innovative, automated car wash center designed to cater to the growing transportation and hygiene needs of Abuja, Nigeria. With a focus on customer convenience, eco-friendliness, and excellent service, SunRay aims to revolutionize the car wash industry in Abuja by providing a top-quality, affordable, and efficient car cleaning experience for all. This three-month business plan outlines the steps needed to set up SunRay Car Wash, market it effectively, price competitively, and achieve profitability within the specified timeline.'),
(30, 12, 'ClearGloss Car Wash - Automotive Services', '2025-07-13 04:50:28', '2025-07-13 04:50:28', '[{\"item\": \'Car Wash Equipment\', \"quantity\": \'5 units\', \"price\": \'1,500,000 NGN\'}, {\"item\": \'Building & Utility Fittings\', \"quantity\": \'est. 20 items\', \"price\": \'1,250,000 NGN\'}, {\"item\": \'Marketing Materials\', \"quantity\": \'1000\', \"price\": \'500,000 NGN\'}, {\"item\": \'Wages for Initial Staff\', \"quantity\": \'5 employees\', \"price\": \'480,000 NGN\'}, {\"item\": \'Working Capital\', \"quantity\": null, \"price\": \'3,324,000 NGN\'}]', 'Abuja\'s automotive market is robust, with an increasing number of vehicles on the road. Car wash services are essential for maintaining vehicle appearance and hygiene. However, competition is stiff, with approximately 30 established car wash services in Abuja. To differentiate itself, ClearGloss will offer a budget-friendly, eco-friendly, and high-quality service, leveraging technological advancements to improve efficiency and customer experience.', 'ClearGloss will employ multi-channel marketing strategies, including social media advertising, local radio advertising, and billboard placements. In addition, partnerships with car dealerships and automotive associations will be established to increase brand visibility and attract new customers. Loyalty programs will be implemented to encourage repeat business.', 'Revenue Targets:\n- First Month: 1,500,000 NGN\n- Second Month: 3,000,000 NGN\n- Third Month: 5,000,000 NGN\nExpenses:\n- Salaries & Wages - 960,000 NGN/month\n- Rent & Utilities - 800,000 NGN/month\n- Equipment Maintenance - 200,000 NGN/month\n- Marketing - 500,000 NGN/quarter\n- Profit (month 3 onwards) - 1,040,000 NGN/month', 'Operations will run from 7:00 AM to 8:00 PM, serving an estimated 100 vehicles per day. Staff requirements include a manager, 3 cleaners, and 1 cashier/attendant. Staff will receive training in car washing techniques, customer service, and proper use of equipment.', 'ClearGloss Car Wash offers a comprehensive range of car washing services to cater to the diverse needs of Abuja\'s growing automotive market. With a focus on customer satisfaction, eco-friendliness, and efficiency, ClearGloss aims to become the go-to car wash service in Abuja within 3 months, achieving projected profits within the first year.'),
(31, 12, 'Smart Wash Car Wash', '2025-07-13 04:54:07', '2025-07-13 04:54:07', 'To start Smart Wash Car Wash, we need the following items at their estimated prices:\n\n- Vehicle wash machine: NGN 2,000,000\n- High-pressure water pump: NGN 1,000,000\n- Water filtration system: NGN 1,500,000\n- Vehicle lifts: NGN 3,000,000\n- Detergents and cleaning products: NGN 2,500,000\n- Business registration and licenses: NGN 2,000,000\n- Cash register and POS system: NGN 1,500,000\n- Office furniture and equipment: NGN 2,000,000\n- Marketing materials: NGN 1,000,000\n- Working capital (for 3 months): NGN 12,345,000\n\nOverall, the estimated cost to start Smart Wash Car Wash is NGN 30,890,000. This amount includes the cost of setting up the car wash facility and purchasing all necessary equipment, as well as working capital to cover operational expenses for three months.', 'The car wash industry in Abuja is highly competitive, with several established car wash businesses and several independent car washers operating within the city. However, there is still room for expansion, especially in the premium segment of the market. Based on our research, the top car wash companies in Abuja charge anywhere from NGN 1,000 to NGN 5,000 per car, depending on the type of service. Our pricing strategy will be to offer competitive pricing, while providing superior quality and service.', 'Smart Wash Car Wash will leverage a combination of online and offline marketing strategies to reach its target audience. The website will serve as the main hub for online marketing activities, including social media marketing, search engine optimization, and targeted online ads. Offline marketing activities will include flyers, billboards, and word-of-mouth marketing. Additionally, Smart Wash Car Wash will offer loyalty programs and discounts to repeat customers to boost customer retention and encourage positive reviews and referrals.', 'The financial plan for Smart Wash Car Wash is to generate a monthly revenue of NGN 5,000,000 in the first year, increasing to NGN 8,000,000 in the second year and NGN 12,000,000 in the third year. The cost structure for the business includes salaries for employees (including the owner), utilities, maintenance, and advertising and marketing expenses. The break-even point for the business is estimated to be around the 10th month of operation, assuming an average of 50 cars per day and an average revenue per car of NGN 2,000.', 'Smart Wash Car Wash will operate from 8:00 am to 5:00 pm, Monday to Saturday, with the option to extend operating hours during peak periods. The business will have two car wash bays and two vehicle lifts, which will enable it to wash up to 100 cars per day. The daily operations will involve cleaning and maintaining the car wash facility, ensuring sufficient stock of detergents and cleaning products, and managing customer relations. The business will employ a team of experienced car wash professionals and will provide comprehensive training on customer service and product knowledge.', 'Smart Wash Car Wash is a top-notch car wash business located in Abuja, Nigeria. The business offers a comprehensive car wash service that utilizes the latest technology and eco-friendly products to ensure customers\' cars are cleaned to perfection. The business aims to revolutionize the car wash industry in Abuja by providing an unparalleled customer experience at competitive prices.'),
(32, 12, 'Sparkle Car Wash', '2025-07-13 04:55:47', '2025-07-13 04:55:47', '1. Car wash equipment (including high-pressure washer, soft cloths, chamois leather, and specialty tools for cleaning wheels, tires, and exterior surfaces) - N500,000.00\n2. Source of water for washing - N30,000.00\n3. Vehicle for transporting equipment and water - N7,000,000.00\n4. Insurance coverage for vehicles and equipment - N50,000.00\n5. Marketing materials (business cards, flyers, website, social media pages) - N250,000.00\n6. Startup capital (to cover initial expenses and operating costs during the first few months) - N1,234,500.00', 'The car wash industry in Nigeria is growing, driven by increasing vehicle ownership and rising demand for convenience. Abuja, being a major city, has a large population of busy professionals and families who would be willing to pay for high-quality car washing services. The mobile car wash segment is particularly promising, as it offers a convenient and affordable alternative to traditional car washes. The target market for Sparkle Car Wash includes individuals, corporate clients, and car dealerships.', 'Sparkle Car Wash\'s marketing strategy includes the following key elements:', 'Monthly revenue targets for the first six months are as follows:', 'Operations will be managed by a team of trained professionals, including a car wash manager, assistant manager, and several car wash attendants. The schedule will be designed to maximize productivity while ensuring that customers\' needs are met promptly and efficiently.', 'A premium mobile car wash service that caters to the needs of busy individuals in Abuja, Nigeria. Our mission is to provide convenient, high-quality car washing services at competitive prices. With our affordable pricing, we aim to attract a wide range of customers and establish a loyal customer base. We plan to grow our business by expanding our services to other cities in Nigeria and eventually becoming the leading mobile car wash service provider in the country.');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `consultant_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_ratings`
--

CREATE TABLE `blog_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `consultants`
--

CREATE TABLE `consultants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `specialization` text NOT NULL,
  `experience` text NOT NULL,
  `cv_path` varchar(255) NOT NULL,
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `rejection_reason` text DEFAULT NULL,
  `reviewed_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_path` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_05_19_031854_create_business_plans_table', 2),
(6, '2025_05_19_032451_create__ai-reponse', 3),
(7, '2025_05_19_032820_create__ai', 4),
(8, '2025_05_21_035522_update__ai', 5),
(9, '2025_05_21_041407_update__ago', 6),
(10, '2025_05_22_035519_create_savecons_table', 7),
(11, '2025_06_10_041536_tracker', 8),
(12, '2025_07_01_014233_add_type_to_users_table', 9),
(13, '2025_07_01_193836_create_consultants_table', 10),
(14, '2025_07_03_115307_blog', 11),
(15, '2025_07_03_141923_create_blogs_table', 12),
(16, '2025_07_03_141924_create_ratings_table', 12),
(17, '2025_07_03_145817_update_blogs_table', 13),
(18, '2025_07_03_185550_drop_consultant_foreign_key_from_blogs', 14),
(19, '2025_07_03_122236_blog_ratings', 15),
(20, '2025_07_11_161255_add_deleted_at_to_users_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'api-token', '3d7383eb91f71eba9c8907c18924f50eb624ed639b579117cf123bca9991ffb1', '[\"*\"]', '2025-05-22 00:54:12', NULL, '2025-05-22 00:44:46', '2025-05-22 00:54:12'),
(2, 'App\\Models\\User', 1, 'api-token', '3ae7e5d6705d48efa0d148715a4d7f3fa047d950d6bb56f283cdb9baf9d42663', '[\"*\"]', '2025-05-22 01:03:28', NULL, '2025-05-22 00:54:53', '2025-05-22 01:03:28'),
(3, 'App\\Models\\User', 4, 'api-token', '254f78374113f517eb45b81780c53a619abd9f27883f336a6bd379d524cf5e07', '[\"*\"]', '2025-05-22 04:31:30', NULL, '2025-05-22 01:05:51', '2025-05-22 04:31:30'),
(4, 'App\\Models\\User', 1, 'api-token', '4082f6843d517c2b6edb8e8114f63dedd649a9670da621f867cad6218129f6c2', '[\"*\"]', NULL, NULL, '2025-05-22 04:53:05', '2025-05-22 04:53:05'),
(5, 'App\\Models\\User', 1, 'api-token', '69c88827a2a997a95ed412cf6c36cf36e51592a9bc72c7cf91c2f70d2849a701', '[\"*\"]', '2025-05-25 16:20:28', NULL, '2025-05-25 16:11:40', '2025-05-25 16:20:28'),
(6, 'App\\Models\\User', 1, 'api-token', '3cfbf43ad6fb9fff0024e3ee280cd49174e11dadc86bf890326c3a16abbfb3cf', '[\"*\"]', '2025-05-26 02:43:18', NULL, '2025-05-26 01:06:42', '2025-05-26 02:43:18'),
(7, 'App\\Models\\User', 1, 'api-token', 'f0276782df776aee15d5994217958b7c06c374c0a069065627d717a42cf46954', '[\"*\"]', '2025-05-29 02:26:40', NULL, '2025-05-29 01:35:08', '2025-05-29 02:26:40'),
(8, 'App\\Models\\User', 1, 'api-token', '1c83efb40f38927ad737fddaf6c26f279b31be01040ecba199117fd98b6da78c', '[\"*\"]', '2025-05-30 01:16:04', NULL, '2025-05-30 00:50:06', '2025-05-30 01:16:04'),
(9, 'App\\Models\\User', 1, 'api-token', '9f1586c351b8ba74dfac03eef0833e00826d7f55e3dd2a17dc6391a6858d8acb', '[\"*\"]', '2025-05-30 03:59:23', NULL, '2025-05-30 02:34:53', '2025-05-30 03:59:23'),
(10, 'App\\Models\\User', 1, 'api-token', '5a5eb70f83fe9b48c7fb49424883257e3658bc0e7e2206a9460e62d05bbebca3', '[\"*\"]', '2025-06-02 01:20:20', NULL, '2025-06-02 00:53:04', '2025-06-02 01:20:20'),
(11, 'App\\Models\\User', 1, 'api-token', '1d450f1d4df1a76a0968f66a181c595011a15449c00f56c0944d7c22f8d73e9b', '[\"*\"]', '2025-06-10 03:42:56', NULL, '2025-06-09 23:29:16', '2025-06-10 03:42:56'),
(12, 'App\\Models\\User', 6, 'api-token', 'e330e09e92ec48f9aa2c9202f83627106c6aa14922bb6fcb6b40a81e7144c253', '[\"*\"]', '2025-06-10 14:49:47', NULL, '2025-06-10 14:37:43', '2025-06-10 14:49:47'),
(13, 'App\\Models\\User', 1, 'api-token', '9c4c502dd6c1a10236a23044fa5740a60cd6740ece8f66dccf765a623767bc1b', '[\"*\"]', '2025-06-18 08:17:29', NULL, '2025-06-18 07:15:32', '2025-06-18 08:17:29'),
(14, 'App\\Models\\User', 1, 'api-token', '796fe4461e742b56be1fede6c3e2ceb36c0d4866a1d358ac1f68bbbbfe25a4bb', '[\"*\"]', '2025-06-24 01:33:23', NULL, '2025-06-18 08:24:14', '2025-06-24 01:33:23'),
(15, 'App\\Models\\User', 1, 'api-token', '9fe9a4869b30e9f56a27a23f85150c492497ea9dc9025c1c3f733d167fc9c0cd', '[\"*\"]', NULL, NULL, '2025-06-24 01:38:19', '2025-06-24 01:38:19'),
(16, 'App\\Models\\User', 1, 'api-token', '4faa287acaebd9ae2f13d3fa98b56fcfe693db161266909bd2d8252f2f4c09ba', '[\"*\"]', NULL, NULL, '2025-06-24 01:39:18', '2025-06-24 01:39:18'),
(17, 'App\\Models\\User', 1, 'api-token', '3ae5c044912f72b1b7aafb94945679650d0978ce2c0b3d59c0fbf72bcf4ad039', '[\"*\"]', NULL, NULL, '2025-06-24 02:30:12', '2025-06-24 02:30:12'),
(18, 'App\\Models\\User', 1, 'api-token', '8f60e8553130e836b2e823bc925b725134b346ea95a2187d2da7b310d865423c', '[\"*\"]', '2025-06-24 03:17:46', NULL, '2025-06-24 03:15:39', '2025-06-24 03:17:46'),
(19, 'App\\Models\\User', 1, 'api-token', '8d516b3d1d0d354207e245616bae95891247a0118948f2f965d43fac0f839054', '[\"*\"]', NULL, NULL, '2025-06-25 03:45:02', '2025-06-25 03:45:02'),
(20, 'App\\Models\\User', 1, 'api-token', '17c510cb1b1db88930929667660ae61214241b4942a4ea1fb78e0f953d80181f', '[\"*\"]', '2025-06-30 23:27:07', NULL, '2025-06-25 03:59:16', '2025-06-30 23:27:07'),
(21, 'App\\Models\\User', 1, 'api-token', 'fe02921bd859ffccc235dc1e2b22fd261aa09c539d1dc84bd3b1025969370310', '[\"*\"]', '2025-06-30 23:29:04', NULL, '2025-06-30 23:28:56', '2025-06-30 23:29:04'),
(22, 'App\\Models\\User', 1, 'api-token', '42ddc9e7a49c8d2e49f3fa103baaa0014c84c6d73484f3e79bfc54ef8e249555', '[\"*\"]', '2025-06-30 23:33:50', NULL, '2025-06-30 23:33:24', '2025-06-30 23:33:50'),
(23, 'App\\Models\\User', 7, 'api-token', '0c973a9c9482fd83f78731ffde80fe6d0c9a8bbee6eb7cc6b69f0862ce5e9929', '[\"*\"]', '2025-06-30 23:38:38', NULL, '2025-06-30 23:38:21', '2025-06-30 23:38:38'),
(24, 'App\\Models\\User', 1, 'api-token', 'e1b5b6353bd4cf4625cd5011f7c08d9fcba653c8cc1f1d4210814776ed1386a4', '[\"*\"]', '2025-07-01 00:06:02', NULL, '2025-07-01 00:05:56', '2025-07-01 00:06:02'),
(25, 'App\\Models\\User', 1, 'api-token', '93623d5ba0374426eb2e185ad44ae9674e09d72aeb1f4ad3302dd3f1a831f902', '[\"*\"]', '2025-07-01 00:10:32', NULL, '2025-07-01 00:10:26', '2025-07-01 00:10:32'),
(26, 'App\\Models\\User', 1, 'api-token', 'd7812e66799e53ec2921071ea2d275bc22a2cdfc3907731004e43611b91b38d4', '[\"*\"]', '2025-07-01 01:26:56', NULL, '2025-07-01 01:26:47', '2025-07-01 01:26:56'),
(27, 'App\\Models\\User', 10, 'api-token', 'e3dd6cbc84f5a33a07ec583e07481e647dba356bfea580a6f61f3074d9f58190', '[\"*\"]', '2025-07-01 01:27:40', NULL, '2025-07-01 01:27:33', '2025-07-01 01:27:40'),
(28, 'App\\Models\\User', 11, 'api-token', 'bc432cae16a67881cbe0966ffcf64b51d11585f22b4ddc9421ae4814532dd67d', '[\"*\"]', '2025-07-01 01:28:08', NULL, '2025-07-01 01:28:01', '2025-07-01 01:28:08'),
(29, 'App\\Models\\User', 1, 'api-token', 'a4d450b7aff5ecb89e37101dfad8d66c30ee69815537ad184042492ce2080963', '[\"*\"]', '2025-07-01 01:47:05', NULL, '2025-07-01 01:36:34', '2025-07-01 01:47:05'),
(30, 'App\\Models\\User', 1, 'api-token', '3c79000d41cd9ce66f4adc02a26367edc1bffc5d2f229c469697c37ae7a6e13a', '[\"*\"]', '2025-07-01 19:11:16', NULL, '2025-07-01 18:14:38', '2025-07-01 19:11:16'),
(31, 'App\\Models\\User', 1, 'api-token', '27d4f04581e606ab6fb76a608cdb81e88c03fe6be6031d7ba2d5da358581ac2b', '[\"*\"]', '2025-07-01 19:36:18', NULL, '2025-07-01 19:17:26', '2025-07-01 19:36:18'),
(32, 'App\\Models\\User', 1, 'api-token', '5ace421fcf2159287d684b48dfe0c847f00fdd577cccbb84474a25695d0a8bc8', '[\"*\"]', '2025-07-02 02:56:34', NULL, '2025-07-02 01:58:05', '2025-07-02 02:56:34'),
(33, 'App\\Models\\User', 1, 'api-token', '095ad344ba89e607ddc9cceafbd1cace75152980fc22bac85e18ee16e55c7737', '[\"*\"]', '2025-07-02 04:04:52', NULL, '2025-07-02 03:05:59', '2025-07-02 04:04:52'),
(34, 'App\\Models\\User', 1, 'api-token', '01aab55325bf20c08fbbeb89a255edc9b64c6be0668eb3add9ee0290d19f972c', '[\"*\"]', '2025-07-02 04:13:33', NULL, '2025-07-02 04:09:37', '2025-07-02 04:13:33'),
(35, 'App\\Models\\User', 1, 'api-token', 'ef66760864db2e511cafb6068d1cc5eebe289e3274fafed55e3cbb9d873bf935', '[\"*\"]', '2025-07-03 00:54:05', NULL, '2025-07-03 00:48:50', '2025-07-03 00:54:05'),
(36, 'App\\Models\\User', 11, 'api-token', 'd56fe529b980fc92ed80dd408fcd957b6471b1c0614db1306b89cc4f52e6ccd1', '[\"*\"]', '2025-07-03 01:14:08', NULL, '2025-07-03 00:58:12', '2025-07-03 01:14:08'),
(37, 'App\\Models\\User', 1, 'api-token', '2aff59ea0cf6e631e0fe130f8193fe242acfdb92e862757aecce8dd786b43c09', '[\"*\"]', '2025-07-03 02:11:08', NULL, '2025-07-03 01:28:54', '2025-07-03 02:11:08'),
(38, 'App\\Models\\User', 1, 'api-token', 'be40c4729b5ccb004adcc988ee2ffcef387a32a43790df9815f493a55dcadd74', '[\"*\"]', '2025-07-03 02:43:47', NULL, '2025-07-03 02:12:45', '2025-07-03 02:43:47'),
(39, 'App\\Models\\User', 1, 'api-token', 'f7d94d279cfc85c0a601cb06526b15c18bee9041ef5cf2c415ec6e4deae1c36a', '[\"*\"]', '2025-07-03 02:51:51', NULL, '2025-07-03 02:44:37', '2025-07-03 02:51:51'),
(40, 'App\\Models\\User', 1, 'api-token', 'b8d945cb31db12a756758b2e72c543086c00448bf6c8ecbbe61f314d325f076d', '[\"*\"]', '2025-07-03 02:52:42', NULL, '2025-07-03 02:52:34', '2025-07-03 02:52:42'),
(41, 'App\\Models\\User', 1, 'api-token', '85e9a6ee659c79923c963e60c619ec624e60f718108edc84647bbeed4c1c3870', '[\"*\"]', '2025-07-03 05:24:46', NULL, '2025-07-03 05:24:38', '2025-07-03 05:24:46'),
(42, 'App\\Models\\User', 12, 'api-token', '4ba872b3245348855a8b227e46bc8d78a6cddafca1f4a03561541d7b024de2d1', '[\"*\"]', '2025-07-03 05:36:03', NULL, '2025-07-03 05:34:57', '2025-07-03 05:36:03'),
(43, 'App\\Models\\User', 12, 'api-token', '85911469123bcafc7d9299ea8c632a325907702c5a1f823f11edf96e5bae1faa', '[\"*\"]', '2025-07-03 05:37:07', NULL, '2025-07-03 05:36:23', '2025-07-03 05:37:07'),
(44, 'App\\Models\\User', 12, 'api-token', '03d021d9b39e881d97ce2fc7ca6f71115450a1f7d665ab54e3856119d200c719', '[\"*\"]', '2025-07-03 05:38:19', NULL, '2025-07-03 05:37:26', '2025-07-03 05:38:19'),
(45, 'App\\Models\\User', 12, 'api-token', '1785e9182a1c6de6614af604ded46ee53321e6635bf2d3becd7aacef786bff74', '[\"*\"]', '2025-07-03 05:51:53', NULL, '2025-07-03 05:38:39', '2025-07-03 05:51:53'),
(46, 'App\\Models\\User', 12, 'api-token', 'c1f239a8c2f2b8c8fce3b7f8c4eb58672306e74b027490991811e42bdef89b31', '[\"*\"]', '2025-07-03 07:58:49', NULL, '2025-07-03 07:34:40', '2025-07-03 07:58:49'),
(47, 'App\\Models\\User', 13, 'api-token', 'a805371bdcd3d18be1df2c35a32ed9032ffbd97d0208d772a5f7098fac285d08', '[\"*\"]', '2025-07-03 08:00:25', NULL, '2025-07-03 08:00:19', '2025-07-03 08:00:25'),
(48, 'App\\Models\\User', 12, 'api-token', 'ca54eb039c60c0a257842f015d7b2e4d0cd90f3a75176d65932feea83c5ed0f3', '[\"*\"]', '2025-07-03 08:49:33', NULL, '2025-07-03 08:00:46', '2025-07-03 08:49:33'),
(49, 'App\\Models\\User', 12, 'api-token', '6484e21bfc3958c2b43282928c0a5e6c521d722922b2700b88eb71471a7d3774', '[\"*\"]', '2025-07-03 10:00:45', NULL, '2025-07-03 09:02:23', '2025-07-03 10:00:45'),
(50, 'App\\Models\\User', 12, 'api-token', '1ae390cd4b79f7e5666691f0b54a551ed50c6c3f0949a67db0c052bee7cc3cb8', '[\"*\"]', '2025-07-03 10:10:23', NULL, '2025-07-03 10:08:55', '2025-07-03 10:10:23'),
(51, 'App\\Models\\User', 14, 'api-token', '1da842f4fe9aa0852979d5ac54d382027a8767b1e70963598c20a462df9468f0', '[\"*\"]', '2025-07-03 10:14:59', NULL, '2025-07-03 10:14:52', '2025-07-03 10:14:59'),
(52, 'App\\Models\\User', 12, 'api-token', '311e5412ad386389f4919f172a014f32bb4f5b0e6f3e96b94b9804a10e27c4d0', '[\"*\"]', '2025-07-03 10:34:55', NULL, '2025-07-03 10:16:04', '2025-07-03 10:34:55'),
(53, 'App\\Models\\User', 14, 'api-token', 'c022498cae93bd0e9678d307bb33e0446070092fad6f3ab49376a3b6836a8ec1', '[\"*\"]', '2025-07-03 11:14:50', NULL, '2025-07-03 10:36:21', '2025-07-03 11:14:50'),
(54, 'App\\Models\\User', 14, 'api-token', '1729f2f57091c6b6a488644b44521ed81e8679613ffa3bc52f3886a3bbf976bb', '[\"*\"]', '2025-07-03 11:55:36', NULL, '2025-07-03 11:55:25', '2025-07-03 11:55:36'),
(55, 'App\\Models\\User', 12, 'api-token', '08847ec051db206ce8f034aead6b2cea84c31096441bdb950383714d6765d166', '[\"*\"]', '2025-07-03 13:49:42', NULL, '2025-07-03 13:34:30', '2025-07-03 13:49:42'),
(56, 'App\\Models\\User', 12, 'api-token', '3ef759fabfb8a547b9d2434d9e5c47a17e13ddc141c67d6cb6994c6612c471d0', '[\"*\"]', '2025-07-03 19:02:13', NULL, '2025-07-03 18:27:20', '2025-07-03 19:02:13'),
(57, 'App\\Models\\User', 12, 'api-token', 'f24caf5080dc297fa9161459546a2ac13a9af300c7762ac65dc75bc2bd324329', '[\"*\"]', '2025-07-03 20:33:46', NULL, '2025-07-03 19:43:17', '2025-07-03 20:33:46'),
(58, 'App\\Models\\User', 12, 'api-token', '9908f0a0a5589767037a1d741923f96bab68ad719d4cdd13850fed4708941d2f', '[\"*\"]', '2025-07-03 20:47:32', NULL, '2025-07-03 20:47:25', '2025-07-03 20:47:32'),
(59, 'App\\Models\\User', 14, 'api-token', '32344990f441b1b32eeca3170b4aff8c19a512ed48d5bafe0767e1abb3355338', '[\"*\"]', '2025-07-03 21:18:38', NULL, '2025-07-03 21:17:09', '2025-07-03 21:18:38'),
(60, 'App\\Models\\User', 12, 'api-token', '7a735bce05dd02c4aafbe75c98ee7ac3b946dbd4c1991cbacdb53ea4571c9b9a', '[\"*\"]', '2025-07-04 10:48:31', NULL, '2025-07-04 10:48:23', '2025-07-04 10:48:31'),
(61, 'App\\Models\\User', 14, 'api-token', '7a92e4a7d9699d76bf5d7705c9571d784882abdaa4c7562cf618b1d882212de6', '[\"*\"]', '2025-07-04 11:49:43', NULL, '2025-07-04 10:50:10', '2025-07-04 11:49:43'),
(62, 'App\\Models\\User', 12, 'api-token', '22f0a5bfc4f9a455bbec75adcc446f473c30f7cac611770534f60ae0c67a5fa2', '[\"*\"]', '2025-07-04 12:47:39', NULL, '2025-07-04 11:53:47', '2025-07-04 12:47:39'),
(63, 'App\\Models\\User', 12, 'api-token', '2eb79ae432808ab8c445366af480d46010de705e4a4f9ba9c0b60f968288fe8f', '[\"*\"]', '2025-07-04 13:51:37', NULL, '2025-07-04 12:54:24', '2025-07-04 13:51:37'),
(64, 'App\\Models\\User', 12, 'api-token', 'c2d6dff60c422e93e9a6a2b6373710e3a4547a41344c1982c843a1618417611d', '[\"*\"]', '2025-07-04 14:35:20', NULL, '2025-07-04 13:55:56', '2025-07-04 14:35:20'),
(65, 'App\\Models\\User', 14, 'api-token', 'dde24e11450409267f423c66e0eb282ced0d7d7dff123f8ed18759c6d83128f3', '[\"*\"]', '2025-07-04 15:24:22', NULL, '2025-07-04 14:36:37', '2025-07-04 15:24:22'),
(66, 'App\\Models\\User', 12, 'api-token', '045d821ee1df527bb0e45e35c3dd6c1b1a5da1504f71c642a6815e279e00b3c3', '[\"*\"]', '2025-07-04 16:32:45', NULL, '2025-07-04 15:37:39', '2025-07-04 16:32:45'),
(67, 'App\\Models\\User', 12, 'api-token', '356385ac6414dd051f7222757a34e05d564e27aa3fbc9afdb418e561e50487c2', '[\"*\"]', '2025-07-04 16:56:40', NULL, '2025-07-04 16:45:14', '2025-07-04 16:56:40'),
(68, 'App\\Models\\User', 14, 'api-token', '97ff8b7c862d31013e2ca6bbdc8ba7a355d2b7343a457d25c5858f37e9526915', '[\"*\"]', '2025-07-05 10:23:45', NULL, '2025-07-04 18:15:41', '2025-07-05 10:23:45'),
(69, 'App\\Models\\User', 15, 'api-token', '84e68131f7a607dd422dbc715b8b89b6632753a80dd804b248e66285238fced2', '[\"*\"]', '2025-07-05 10:25:53', NULL, '2025-07-05 10:24:35', '2025-07-05 10:25:53'),
(70, 'App\\Models\\User', 15, 'api-token', 'f53c3056acc81d57f7d84d4054fa371f1e4467c0313fb28d05ca0190a2ab50ce', '[\"*\"]', '2025-07-05 19:50:10', NULL, '2025-07-05 19:26:18', '2025-07-05 19:50:10'),
(71, 'App\\Models\\User', 12, 'api-token', '3f16644c0aaa7a3d31824c4901bd57ccb0b10f7b59fcd598895d19556300106e', '[\"*\"]', '2025-07-05 20:03:22', NULL, '2025-07-05 19:50:50', '2025-07-05 20:03:22'),
(72, 'App\\Models\\User', 14, 'api-token', 'f7411d59e1529a5b8fb27c47c74d80bf97d8f477d380ce44c9e9c697fbf5d64a', '[\"*\"]', '2025-07-05 20:51:00', NULL, '2025-07-05 20:04:18', '2025-07-05 20:51:00'),
(73, 'App\\Models\\User', 16, 'api-token', '52dc7dd7eea0f1a134770f310d9e98a009d8be3690007f79198856373bd1eee5', '[\"*\"]', '2025-07-05 21:14:50', NULL, '2025-07-05 20:51:58', '2025-07-05 21:14:50'),
(74, 'App\\Models\\User', 12, 'api-token', '3b066fe547a4749948bc3ac749749348e84fa2395c7646317377d393b0576260', '[\"*\"]', '2025-07-05 21:15:59', NULL, '2025-07-05 21:15:23', '2025-07-05 21:15:59'),
(75, 'App\\Models\\User', 16, 'api-token', '31169a3b563ee607531a893e53c5f1963626245e2047e6cc97d87c06e8378bc2', '[\"*\"]', '2025-07-05 22:11:28', NULL, '2025-07-05 21:16:22', '2025-07-05 22:11:28'),
(76, 'App\\Models\\User', 16, 'api-token', '0c85238487150771cddf01dc0aff9762267707b3711ba24b5f52722884a4ead7', '[\"*\"]', '2025-07-05 22:21:56', NULL, '2025-07-05 22:20:08', '2025-07-05 22:21:56'),
(77, 'App\\Models\\User', 16, 'api-token', 'efca7e31b1199ff5e7cf980045647eaf6b83e6f26b3a904661d903a07129aea9', '[\"*\"]', '2025-07-06 20:06:38', NULL, '2025-07-06 19:09:26', '2025-07-06 20:06:38'),
(78, 'App\\Models\\User', 16, 'api-token', '40aa144556eb439829ec8193a5ed517e8de339b1487567c3b5950dac8973f4b4', '[\"*\"]', '2025-07-06 20:26:14', NULL, '2025-07-06 20:20:04', '2025-07-06 20:26:14'),
(79, 'App\\Models\\User', 16, 'api-token', '14cc75dba170f25e40835f3732d0d89e49f701aaef05a43b797c217e1256634d', '[\"*\"]', '2025-07-07 00:31:29', NULL, '2025-07-06 23:33:07', '2025-07-07 00:31:29'),
(80, 'App\\Models\\User', 16, 'api-token', '39307969988879947869881010cf239f97a9255ab3e097faef71fd6a0ee0551d', '[\"*\"]', '2025-07-07 00:55:06', NULL, '2025-07-07 00:38:54', '2025-07-07 00:55:06'),
(81, 'App\\Models\\User', 16, 'api-token', '04cea88314da0fec217c55e4d23127284eee32485daa0f7946315c83c262efde', '[\"*\"]', '2025-07-08 01:31:44', NULL, '2025-07-08 00:38:20', '2025-07-08 01:31:44'),
(82, 'App\\Models\\User', 12, 'api-token', '1263e0a39cc912e44bb58a6f46fe687344b901ba508d5300172e992b278a0b8a', '[\"*\"]', '2025-07-08 02:06:30', NULL, '2025-07-08 01:40:49', '2025-07-08 02:06:30'),
(83, 'App\\Models\\User', 16, 'api-token', '847b678e00d212835359cda0054caa92943624007a3e0ac09338883861e8455d', '[\"*\"]', '2025-07-08 03:51:42', NULL, '2025-07-08 02:59:28', '2025-07-08 03:51:42'),
(84, 'App\\Models\\User', 12, 'api-token', '10cc13e57c15a9b807f48a96914031962257ff37f03c777d8d9b471ab73f795a', '[\"*\"]', '2025-07-08 04:46:43', NULL, '2025-07-08 04:04:08', '2025-07-08 04:46:43'),
(85, 'App\\Models\\User', 16, 'api-token', '5c01fd5e78fc584eca44339340b0ee6af80fca6088a54ec0df1f03d11f0b472f', '[\"*\"]', '2025-07-08 04:47:46', NULL, '2025-07-08 04:47:38', '2025-07-08 04:47:46'),
(86, 'App\\Models\\User', 17, 'api-token', '5a1c24c6c35985aee0b0142a9ca99705274f9da3733dbeb682f100a1eede5d0c', '[\"*\"]', '2025-07-08 04:49:53', NULL, '2025-07-08 04:49:47', '2025-07-08 04:49:53'),
(87, 'App\\Models\\User', 12, 'api-token', '32543cbaffe1ec36ef70e3ce851aae96fb32dd15861de1f5aab3c59a354b9133', '[\"*\"]', '2025-07-09 00:31:11', NULL, '2025-07-09 00:19:58', '2025-07-09 00:31:11'),
(88, 'App\\Models\\User', 15, 'api-token', '84120decb5cf17357a8d28211bb825afefaf36300d25d58e04b6a59ce228d295', '[\"*\"]', '2025-07-09 00:37:59', NULL, '2025-07-09 00:33:04', '2025-07-09 00:37:59'),
(89, 'App\\Models\\User', 13, 'api-token', 'b7a334046bfbb98cc0725cb6aa6fa83e2d57294a79c80d9d7ca19d2ea5f63dc1', '[\"*\"]', '2025-07-09 00:55:50', NULL, '2025-07-09 00:38:34', '2025-07-09 00:55:50'),
(90, 'App\\Models\\User', 17, 'api-token', '722cbd371b71ab93fac0055403a4ea47ce75c2e531ee97d513b0ecde483fc271', '[\"*\"]', '2025-07-09 01:01:07', NULL, '2025-07-09 00:59:37', '2025-07-09 01:01:07'),
(91, 'App\\Models\\User', 12, 'api-token', '06acaab3fb864ce5fa982be3345e5a4f13877d5f1c0653590cfa0ccc0386be0f', '[\"*\"]', '2025-07-09 01:04:30', NULL, '2025-07-09 01:01:34', '2025-07-09 01:04:30'),
(92, 'App\\Models\\User', 17, 'api-token', '62e1a80cf38b17fe77b842a53c0ae645321c07e634ac6692b7f96c53d25b1c5e', '[\"*\"]', '2025-07-09 01:57:57', NULL, '2025-07-09 01:05:01', '2025-07-09 01:57:57'),
(93, 'App\\Models\\User', 17, 'api-token', 'b474ca31f1ba74b5eaecc728f90909657725cbdb186ba92b0a21194a644acbe5', '[\"*\"]', '2025-07-09 03:00:32', NULL, '2025-07-09 02:05:54', '2025-07-09 03:00:32'),
(94, 'App\\Models\\User', 15, 'api-token', '26df69e59c94dac8dfb8ddaf1c66dada87e3e09d85d4e50b6888b2edcf300011', '[\"*\"]', '2025-07-09 03:06:43', NULL, '2025-07-09 03:04:07', '2025-07-09 03:06:43'),
(95, 'App\\Models\\User', 17, 'api-token', '89878ac0200b72b0e88858a670ec288a3bccab9b0cd223a6ecad9d4a6e937610', '[\"*\"]', '2025-07-09 04:05:28', NULL, '2025-07-09 03:07:06', '2025-07-09 04:05:28'),
(96, 'App\\Models\\User', 17, 'api-token', '13588e7105d6eea43a1a815b390ed89c2169de1423cc71b2bb4e3574a66cc6e0', '[\"*\"]', '2025-07-09 04:20:14', NULL, '2025-07-09 04:09:37', '2025-07-09 04:20:14'),
(97, 'App\\Models\\User', 16, 'api-token', 'd4ecd70329f42a56111fd9d7e4a1ac5a2c1b6cf8ed2b1895d433b57e85560948', '[\"*\"]', '2025-07-10 00:14:52', NULL, '2025-07-09 23:30:51', '2025-07-10 00:14:52'),
(98, 'App\\Models\\User', 12, 'api-token', 'e4785ce220b2a8eaf1b7756168a1a5d248072ebd37921b05a7bfde94d038e386', '[\"*\"]', '2025-07-10 04:48:38', NULL, '2025-07-10 00:16:15', '2025-07-10 04:48:38'),
(99, 'App\\Models\\User', 15, 'api-token', 'b823e581f6aca0fa707c620d62951122970d9dff7f6a916bcad81d445eb626a6', '[\"*\"]', '2025-07-10 05:10:46', NULL, '2025-07-10 04:51:44', '2025-07-10 05:10:46'),
(100, 'App\\Models\\User', 17, 'api-token', '9200ffb483e334d4adc4bccd730d3a8c4e09e40851e7bec3b85aa10220d02d37', '[\"*\"]', '2025-07-10 15:57:01', NULL, '2025-07-10 15:13:01', '2025-07-10 15:57:01'),
(101, 'App\\Models\\User', 17, 'api-token', 'e59fb6dc333ebb83e9cb7bd7a64c013fc5a453c0d63963f27c016c28cae5f045', '[\"*\"]', '2025-07-10 16:52:50', NULL, '2025-07-10 16:36:59', '2025-07-10 16:52:50'),
(102, 'App\\Models\\User', 17, 'api-token', 'f4650a9790f2fa7a21adb6b7ced6b9b366d0fc8890bf0d828fd5c020e9e2d9af', '[\"*\"]', '2025-07-10 21:16:01', NULL, '2025-07-10 20:16:27', '2025-07-10 21:16:01'),
(103, 'App\\Models\\User', 17, 'api-token', 'e3df752de5d742bb3850409ff505f4e165e6e36d0655e6813de1c6bee6e384a1', '[\"*\"]', '2025-07-10 22:12:05', NULL, '2025-07-10 21:16:57', '2025-07-10 22:12:05'),
(104, 'App\\Models\\User', 17, 'api-token', '7da11890a840121bea782cfefc056ef92ba61c0d30e9a25a64bdc56936786ece', '[\"*\"]', '2025-07-10 23:21:30', NULL, '2025-07-10 22:25:32', '2025-07-10 23:21:30'),
(105, 'App\\Models\\User', 17, 'api-token', '44946ff4426304c866b415494cc2095c7b3bfcb45f8ecd279e2f443b563100d2', '[\"*\"]', '2025-07-10 23:41:06', NULL, '2025-07-10 23:30:57', '2025-07-10 23:41:06'),
(106, 'App\\Models\\User', 17, 'api-token', 'ca6071a91621a36417f74778f72e939e6b4b19c1b69a12b7e09d4107dbc66214', '[\"*\"]', '2025-07-11 01:48:24', NULL, '2025-07-11 00:54:47', '2025-07-11 01:48:24'),
(107, 'App\\Models\\User', 17, 'api-token', '14e572b423e0cd72be4310ac1bb1db38d49d596bb3c65cfd8057e63542a6e49f', '[\"*\"]', '2025-07-11 14:29:34', NULL, '2025-07-11 13:44:30', '2025-07-11 14:29:34'),
(111, 'App\\Models\\User', 12, 'api-token', 'faa5a5ddb7bd7aba0677c180f40fa29cc69f4fe82e8f288b0399d70e25496a36', '[\"*\"]', '2025-07-11 15:05:52', NULL, '2025-07-11 15:05:45', '2025-07-11 15:05:52'),
(114, 'App\\Models\\User', 18, 'api-token', '35206e3975466377c557471336238d29d9c41f8311d5a167fe199e09ae53ccd2', '[\"*\"]', '2025-07-11 15:42:08', NULL, '2025-07-11 15:36:20', '2025-07-11 15:42:08'),
(115, 'App\\Models\\User', 12, 'api-token', 'ec5783b19780f3b1e350426e76847b04b2a9842f195db9f7c64c0881174a878c', '[\"*\"]', '2025-07-11 15:44:47', NULL, '2025-07-11 15:42:54', '2025-07-11 15:44:47'),
(116, 'App\\Models\\User', 18, 'api-token', '597e544dc3e90c3a53781e31e19d9fda0df4bfbe9c152fb6d4e48e65cbde61a6', '[\"*\"]', '2025-07-11 15:45:16', NULL, '2025-07-11 15:45:07', '2025-07-11 15:45:16'),
(117, 'App\\Models\\User', 12, 'api-token', '37fa651ff6865f7d113e511d95db432b1a52c88cfab297b1fadaad3b73508b24', '[\"*\"]', '2025-07-11 22:07:10', NULL, '2025-07-11 21:19:54', '2025-07-11 22:07:10'),
(118, 'App\\Models\\User', 18, 'api-token', '9ba396fa080bd6071579933c3fb5c38a7c976aa158a2664d047510120591a90f', '[\"*\"]', '2025-07-12 08:12:02', NULL, '2025-07-12 07:25:01', '2025-07-12 08:12:02'),
(119, 'App\\Models\\User', 15, 'api-token', 'c6ef01cd054c9a7747f8af987a2839afb5ba89787deef227e5c04c5017e52aef', '[\"*\"]', '2025-07-12 08:14:59', NULL, '2025-07-12 08:13:27', '2025-07-12 08:14:59'),
(120, 'App\\Models\\User', 12, 'api-token', '30d34bd0fad747499b87e91632754b4ca3f1dd1f5a6b8c6b5cd0cdde67cf671b', '[\"*\"]', '2025-07-12 08:15:41', NULL, '2025-07-12 08:15:19', '2025-07-12 08:15:41'),
(121, 'App\\Models\\User', 15, 'api-token', 'fe0d4d6cd35c408d10bc70fee1bc3c9544035dac4ed88371256e9c3affa9ecff', '[\"*\"]', '2025-07-12 08:33:49', NULL, '2025-07-12 08:19:11', '2025-07-12 08:33:49'),
(122, 'App\\Models\\User', 18, 'api-token', '3ba60721288c53740c614ff1ee87530f042127e718159a3624feeb629893a3fa', '[\"*\"]', '2025-07-12 10:26:45', NULL, '2025-07-12 09:59:43', '2025-07-12 10:26:45'),
(123, 'App\\Models\\User', 18, 'api-token', 'de7b4e213a88f580d2b06b36e0206087474f5a76726cacd22852a042520a03d0', '[\"*\"]', '2025-07-12 11:50:05', NULL, '2025-07-12 11:10:37', '2025-07-12 11:50:05'),
(124, 'App\\Models\\User', 12, 'api-token', 'cecbf55390f1741e5c62db18daa586d86016bc0cd33cc53a89ed7c352ebaf42d', '[\"*\"]', '2025-07-12 12:48:58', NULL, '2025-07-12 11:59:18', '2025-07-12 12:48:58'),
(125, 'App\\Models\\User', 18, 'api-token', 'abee8b9a3dac74a88f0a77b4c91436de3b3b241c7bd90e84f6be520954b4defa', '[\"*\"]', '2025-07-12 18:46:07', NULL, '2025-07-12 18:45:49', '2025-07-12 18:46:07'),
(126, 'App\\Models\\User', 12, 'api-token', 'e027caf4caa116fb5715b5389eab8f3bf7157ac99d1e7270236a4adba14dd8b1', '[\"*\"]', '2025-07-12 19:30:02', NULL, '2025-07-12 18:46:40', '2025-07-12 19:30:02'),
(127, 'App\\Models\\User', 12, 'api-token', '3ee1640e3dde1f21409bb1720588df466ac2ad441e5f041ebe09d393777915b2', '[\"*\"]', '2025-07-13 05:26:41', NULL, '2025-07-13 04:25:50', '2025-07-13 05:26:41'),
(128, 'App\\Models\\User', 18, 'api-token', '3481167d06c405119f3a038060d20795b035e6b04843b5ffe01874785adb8bf3', '[\"*\"]', '2025-07-13 05:36:09', NULL, '2025-07-13 05:26:59', '2025-07-13 05:36:09'),
(129, 'App\\Models\\User', 12, 'api-token', '53095dafa849202f50d89ad67f4c5e20dd016aa2e01b270e65c1d51f8209ab37', '[\"*\"]', '2025-07-13 05:57:32', NULL, '2025-07-13 05:38:05', '2025-07-13 05:57:32'),
(130, 'App\\Models\\User', 18, 'api-token', 'b018f0c45fe69c8f229aa995a41f3ea2bd1cbf185e9dcf89c0ca0c9bb2e24f2e', '[\"*\"]', '2025-07-17 07:32:16', NULL, '2025-07-13 05:57:55', '2025-07-17 07:32:16'),
(131, 'App\\Models\\User', 12, 'api-token', '5b5e9ddb58768c845fcc3f88ba0fdbc2fab7f5b3b94c72c8036ed015c4fe7333', '[\"*\"]', '2025-07-17 08:14:51', NULL, '2025-07-17 07:33:25', '2025-07-17 08:14:51'),
(132, 'App\\Models\\User', 19, 'api-token', 'b01db99195dc3f7afd8d054e13c67b179a3ccc9e8cd54824ef4720434bedda47', '[\"*\"]', '2025-07-17 13:39:12', NULL, '2025-07-17 10:28:38', '2025-07-17 13:39:12'),
(133, 'App\\Models\\User', 12, 'api-token', '3a72828cf58e0ce5ba988ec45514aedb7d9eebddff06bce507d2584d7da01bb1', '[\"*\"]', '2025-07-17 13:40:47', NULL, '2025-07-17 13:40:08', '2025-07-17 13:40:47'),
(134, 'App\\Models\\User', 19, 'api-token', 'af1fec4300dfbe2664115a952742a7f6134d2a8231984955663533b531de3400', '[\"*\"]', '2025-07-17 13:41:33', NULL, '2025-07-17 13:41:07', '2025-07-17 13:41:33'),
(135, 'App\\Models\\User', 12, 'api-token', '87bc6dcea1f6b0af801ae0dc5650eac3ebdae3928412a3e5a3c7ce5fc095528d', '[\"*\"]', '2025-07-17 13:51:24', NULL, '2025-07-17 13:48:33', '2025-07-17 13:51:24');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `consultants_id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(10) UNSIGNED NOT NULL,
  `review` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `savecons`
--

CREATE TABLE `savecons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `Address_the_suitation` text NOT NULL,
  `Suggest_a_bunch_of_solutions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `Review_best_option_to_solve_issue_and_why` text NOT NULL,
  `Give_a_step_by_step_guide_to_carry_out_the_solution` text NOT NULL,
  `Best_way_to_improve_business_with_business_properties` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `savecons`
--

INSERT INTO `savecons` (`id`, `user_id`, `title`, `Address_the_suitation`, `Suggest_a_bunch_of_solutions`, `Review_best_option_to_solve_issue_and_why`, `Give_a_step_by_step_guide_to_carry_out_the_solution`, `Best_way_to_improve_business_with_business_properties`, `created_at`, `updated_at`) VALUES
(8, 12, 'Comprehensive Business Plan for TechHub: A Cutting-Edge Computer Learning Center', '', '[{\"solution\":\"Rent Computer Centers\",\"description\":\"Rent computer centers in strategic locations and equip them with a range of computers for adult learners.\"},{\"solution\":\"Online Learning Platform\",\"description\":\"Create an online learning platform offering computer courses, tutorials, and certifications accessible on demand.\"},{\"solution\":\"Community Outreach\",\"description\":\"Engage with local communities, schools, and organizations to promote computer learning and provide free or subsidized access to adult learners.\"}]', 'Based on market analysis and feasibility studies, the best solution is to offer both physical (rented computer centers) and online (virtual classrooms) learning options.', '[{\"step\":\"Secure funding for initial startup costs.\",\"description\":\"Secure N10 million in funding from investors, grants, or loans to cover rental fees, equipment, and marketing expenses.\"},{\"step\":\"Rent computer centers in strategic locations.\",\"description\":\"Rent 5 computer centers in busy locations in Lagos, such as Ikeja, Surulere, and Ojota, with a total capacity of 100 computers.\"},{\"step\":\"Develop an online learning platform.\",\"description\":\"Create a user-friendly online platform offering a range of computer courses, tutorials, and certifications, with a dedicated customer support team.\"},{\"step\":\"Hire and train staff.\",\"description\":\"Hire 10 instructors and 5 customer support staff, and provide them with comprehensive training on computer hardware, software, and teaching methodologies.\"},{\"step\":\"Launch marketing campaign.\",\"description\":\"Launch a targeted marketing campaign across social media, print, and digital channels to promote the computer learning center and online platform.\"}]', '[{\"idea\":\"Host Tech Workshops and Events.\",\"description\":\"Host regular workshops, conferences, and hackathons to promote tech skills, innovation, and entrepreneurship, and generate revenue through partnerships and sponsorships.\"},{\"idea\":\"Collaborate with Local Businesses.\",\"description\":\"Partner with local businesses to offer customized computer training programs, IT support services, and digital marketing solutions to their employees and customers.\"},{\"idea\":\"Develop a Referral Program.\",\"description\":\"Develop a referral program to incentivize existing clients to refer their friends and family to the computer learning center and online platform.\"}]', '2025-07-17 13:50:56', '2025-07-17 13:50:56');

-- --------------------------------------------------------

--
-- Table structure for table `tracker`
--

CREATE TABLE `tracker` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `BA` varchar(255) DEFAULT NULL,
  `Exp` varchar(255) DEFAULT NULL,
  `Sales` varchar(255) DEFAULT NULL,
  `TL` varchar(255) DEFAULT NULL,
  `FS` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` tinyint(4) NOT NULL DEFAULT 2 COMMENT '0=Super Admin, 1=Admin, 2=Regular User',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `user_type`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(12, 'MAster', 'Ocquayeavid38@gmail.com', NULL, '$2y$12$1EbfFRC7BuWuxkhWnGrtUeXPVNAMmZGuOCqSohPOmF2QHYa.EmeFC', 0, NULL, '2025-07-03 05:34:36', '2025-07-12 12:39:07', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ai`
--
ALTER TABLE `ai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ai_user_id_foreign` (`user_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_consultants_id_foreign` (`consultant_id`);

--
-- Indexes for table `blog_ratings`
--
ALTER TABLE `blog_ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_ratings_blog_id_foreign` (`blog_id`),
  ADD KEY `blog_ratings_user_id_foreign` (`user_id`);

--
-- Indexes for table `consultants`
--
ALTER TABLE `consultants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `consultants_email_unique` (`email`),
  ADD KEY `consultants_reviewed_by_foreign` (`reviewed_by`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_user_id_foreign` (`user_id`),
  ADD KEY `ratings_consultant_id_foreign` (`consultants_id`),
  ADD KEY `ratings_blog_id_foreign` (`blog_id`);

--
-- Indexes for table `savecons`
--
ALTER TABLE `savecons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `savecons_user_id_foreign` (`user_id`);

--
-- Indexes for table `tracker`
--
ALTER TABLE `tracker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ai`
--
ALTER TABLE `ai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `blog_ratings`
--
ALTER TABLE `blog_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `consultants`
--
ALTER TABLE `consultants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `savecons`
--
ALTER TABLE `savecons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tracker`
--
ALTER TABLE `tracker`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ai`
--
ALTER TABLE `ai`
  ADD CONSTRAINT `ai_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_consultants_id_foreign` FOREIGN KEY (`consultant_id`) REFERENCES `consultants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_ratings`
--
ALTER TABLE `blog_ratings`
  ADD CONSTRAINT `blog_ratings_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `consultants`
--
ALTER TABLE `consultants`
  ADD CONSTRAINT `consultants_reviewed_by_foreign` FOREIGN KEY (`reviewed_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`),
  ADD CONSTRAINT `ratings_consultant_id_foreign` FOREIGN KEY (`consultants_id`) REFERENCES `consultants` (`id`),
  ADD CONSTRAINT `ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `savecons`
--
ALTER TABLE `savecons`
  ADD CONSTRAINT `savecons_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tracker`
--
ALTER TABLE `tracker`
  ADD CONSTRAINT `tracker_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
