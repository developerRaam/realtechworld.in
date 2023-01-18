-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 18, 2023 at 12:50 PM
-- Server version: 10.3.37-MariaDB-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ezlilmxi_realtechworld`
--

-- --------------------------------------------------------

--
-- Table structure for table `apps_addimagewatermark`
--

CREATE TABLE `apps_addimagewatermark` (
  `id` bigint(20) NOT NULL,
  `watermark_text` varchar(100) NOT NULL,
  `on_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apps_color`
--

CREATE TABLE `apps_color` (
  `id` bigint(20) NOT NULL,
  `color_name` varchar(50) DEFAULT NULL,
  `color` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apps_contactus`
--

CREATE TABLE `apps_contactus` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `Contact` varchar(13) NOT NULL,
  `message` longtext NOT NULL,
  `on_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apps_qrcode`
--

CREATE TABLE `apps_qrcode` (
  `id` bigint(20) NOT NULL,
  `text` varchar(300) DEFAULT NULL,
  `on_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add add image water mark', 7, 'add_addimagewatermark'),
(26, 'Can change add image water mark', 7, 'change_addimagewatermark'),
(27, 'Can delete add image water mark', 7, 'delete_addimagewatermark'),
(28, 'Can view add image water mark', 7, 'view_addimagewatermark'),
(29, 'Can add qrcode', 8, 'add_qrcode'),
(30, 'Can change qrcode', 8, 'change_qrcode'),
(31, 'Can delete qrcode', 8, 'delete_qrcode'),
(32, 'Can view qrcode', 8, 'view_qrcode'),
(33, 'Can add color', 9, 'add_color'),
(34, 'Can change color', 9, 'change_color'),
(35, 'Can delete color', 9, 'delete_color'),
(36, 'Can view color', 9, 'view_color'),
(37, 'Can add category', 10, 'add_category'),
(38, 'Can change category', 10, 'change_category'),
(39, 'Can delete category', 10, 'delete_category'),
(40, 'Can view category', 10, 'view_category'),
(41, 'Can add blog post', 11, 'add_blogpost'),
(42, 'Can change blog post', 11, 'change_blogpost'),
(43, 'Can delete blog post', 11, 'delete_blogpost'),
(44, 'Can view blog post', 11, 'view_blogpost'),
(45, 'Can add comments', 12, 'add_comments'),
(46, 'Can change comments', 12, 'change_comments'),
(47, 'Can delete comments', 12, 'delete_comments'),
(48, 'Can view comments', 12, 'view_comments'),
(49, 'Can add reply', 13, 'add_reply'),
(50, 'Can change reply', 13, 'change_reply'),
(51, 'Can delete reply', 13, 'delete_reply'),
(52, 'Can view reply', 13, 'view_reply'),
(53, 'Can add contact us', 14, 'add_contactus'),
(54, 'Can change contact us', 14, 'change_contactus'),
(55, 'Can delete contact us', 14, 'delete_contactus'),
(56, 'Can view contact us', 14, 'view_contactus');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$qq0GFi5BPh9Wxi3KV6cQpr$yoxearSdtP4QbPR9gcef36lYPkOj/lD55kKreS7J414=', '2023-01-18 15:03:50.932136', 1, 'realtechworld', '', '', '', 1, 1, '2023-01-15 13:01:05.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs_blogpost`
--

CREATE TABLE `blogs_blogpost` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `on_date` datetime(6) NOT NULL,
  `category_id_id` bigint(20) NOT NULL,
  `views` varchar(11) DEFAULT NULL,
  `post_by` varchar(30) DEFAULT NULL,
  `sub_title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs_blogpost`
--

INSERT INTO `blogs_blogpost` (`id`, `title`, `image`, `slug`, `description`, `on_date`, `category_id_id`, `views`, `post_by`, `sub_title`) VALUES
(1, 'What is SEO (Search Engine Optimization) in digital marketing', 'blogs/posts/seo.jpg', 'what-is-seo-search-engine-optimization-in-digital-', '<p><span style=\"font-size: 14pt;\">Search Engine Optimization (SEO) is the process of improving the visibility of a website in search engine results pages (SERPs). The goal of SEO is to increase the quantity and quality of traffic to a website from search engines like Google, Bing, and Yahoo.</span></p>\r\n<p><span style=\"font-size: 14pt;\"><strong>Steps for optimizing a website for SEO:</strong></span></p>\r\n<ol>\r\n<li><span style=\"font-size: 14pt;\">Conduct keyword research to identify the terms and phrases that people are searching for in relation to your business or industry.</span></li>\r\n<li><span style=\"font-size: 14pt;\">Optimize the website\'s content and meta tags (such as the title and description) to include those keywords.</span></li>\r\n<li><span style=\"font-size: 14pt;\">Improve the website\'s technical aspects such as site speed, mobile responsiveness, and the use of structured data.</span></li>\r\n<li><span style=\"font-size: 14pt;\">Build high-quality inbound links to the website from other reputable websites.</span></li>\r\n<li><span style=\"font-size: 14pt;\">Use analytics tools to track your progress and identify areas for improvement.</span></li>\r\n</ol>\r\n<p><span style=\"font-size: 14pt;\"><strong>Benefits of optimizing a website for SEO:</strong></span></p>\r\n<ul>\r\n<li><span style=\"font-size: 14pt;\">Increased visibility in search engine results pages</span></li>\r\n<li><span style=\"font-size: 14pt;\">Increased website traffic</span></li>\r\n<li><span style=\"font-size: 14pt;\">Cost-effective way to reach potential customers</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\"><strong>Limitations:</strong></span></p>\r\n<ul>\r\n<li><span style=\"font-size: 14pt;\">SEO is a long-term strategy and results may not be immediate</span></li>\r\n<li><span style=\"font-size: 14pt;\">SEO best practices are constantly evolving and require ongoing attention and effort.</span></li>\r\n<li><span style=\"font-size: 14pt;\">SEO ranking is affected by many factors, such as competition, market and so on.</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">Note: SEO is not a one-time effort, it\'s a continuous process. Regularly updating the website content and monitoring your ranking and traffic will help to maintain and improve your search engine visibility over time.</span></p>', '2023-01-15 13:07:30.110397', 4, '6', 'RealTechWord', 'Search Engine Optimization (SEO) is the process of improving the visibility of a website in search engine results pages (SERPs). The goal of SEO is to increase the quantity and quality of traffic to a website from search engines like Google, Bing.'),
(2, 'What is static web development (website)?', 'blogs/posts/static.JPG', 'what-is-static-web-development-website', '<p><span style=\"font-size: 14pt;\">Static web development refers to the building of websites using only HTML, CSS, and JavaScript. These websites do not require a database or any server-side code, and the content is delivered directly to the user\'s browser.</span></p>\r\n<p><span style=\"font-size: 14pt;\"><strong>Steps for creating a static website:</strong></span></p>\r\n<ol>\r\n<li><span style=\"font-size: 14pt;\">Plan the website structure and layout.</span></li>\r\n<li><span style=\"font-size: 14pt;\">Create the HTML markup for the site\'s pages.</span></li>\r\n<li><span style=\"font-size: 14pt;\">Add CSS for styling and layout.</span></li>\r\n<li><span style=\"font-size: 14pt;\">Include JavaScript for interactive elements and dynamic behavior.</span></li>\r\n<li><span style=\"font-size: 14pt;\">Optimize images and other media for faster loading times.</span></li>\r\n<li><span style=\"font-size: 14pt;\">Test the website on different browsers and devices.</span></li>\r\n<li><span style=\"font-size: 14pt;\">Publish the website by uploading the files to a web server.</span></li>\r\n</ol>\r\n<p><span style=\"font-size: 14pt;\"><strong>Benefits of using static web development:</strong></span></p>\r\n<ul>\r\n<li><span style=\"font-size: 14pt;\">Simpler and faster development process</span></li>\r\n<li><span style=\"font-size: 14pt;\">Lower hosting and maintenance costs</span></li>\r\n<li><span style=\"font-size: 14pt;\">Better performance and security</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\"><strong>Limitations:</strong></span></p>\r\n<ul>\r\n<li><span style=\"font-size: 14pt;\">Limited functionality compared to dynamic websites</span></li>\r\n<li><span style=\"font-size: 14pt;\">No real-time data updating</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">Note: Static website also can be hosted on CDN (Content delivery network) or services like netlify, GitHub pages, which provide hosting and domain services with minimal cost.</span></p>', '2023-01-15 13:14:00.129624', 1, '16', 'RealTechWord', 'Static web development refers to the building of websites using only HTML, CSS, and JavaScript. These websites do not require a database or any server-side code, and the content is delivered directly to the user\'s browser.'),
(3, 'What is Dynamic web development (website)?', 'blogs/posts/dynamic.JPG', 'what-is-dynamic-web-development-website', '<div class=\"w-full border-b border-black/10 dark:border-gray-900/50 text-gray-800 dark:text-gray-100 group bg-gray-50 dark:bg-[#444654]\">\r\n<div class=\"text-base gap-4 md:gap-6 m-auto md:max-w-2xl lg:max-w-2xl xl:max-w-3xl p-4 md:py-6 flex lg:px-0\">\r\n<div class=\"relative flex w-[calc(100%-50px)] md:flex-col lg:w-[calc(100%-115px)]\">\r\n<div class=\"flex flex-grow flex-col gap-3\">\r\n<div class=\"min-h-[20px] flex flex-col items-start gap-4 whitespace-pre-wrap\">\r\n<div class=\"markdown prose w-full break-words dark:prose-invert light\">\r\n<p><span style=\"font-size: 14pt;\">Dynamic web development refers to the building of websites using server-side languages and databases. These websites can change content and behavior based on user interactions and data from the server.</span></p>\r\n<p><span style=\"font-size: 14pt;\"><strong>Steps for creating a dynamic website:</strong></span></p>\r\n<ol>\r\n<li><span style=\"font-size: 14pt;\">Plan the website structure and layout.</span></li>\r\n<li><span style=\"font-size: 14pt;\">Choose a server-side language such as PHP, Ruby, or Python.</span></li>\r\n<li><span style=\"font-size: 14pt;\">Choose a database management system such as MySQL, MongoDB, or PostgreSQL.</span></li>\r\n<li><span style=\"font-size: 14pt;\">Create the server-side code to handle user interactions and retrieve data from the database.</span></li>\r\n<li><span style=\"font-size: 14pt;\">Create the HTML, CSS, and JavaScript for the front-end of the website.</span></li>\r\n<li><span style=\"font-size: 14pt;\">Test the website on different browsers and devices.</span></li>\r\n<li><span style=\"font-size: 14pt;\">Deploy the website to a web server or hosting platform.</span></li>\r\n</ol>\r\n<p><span style=\"font-size: 14pt;\"><strong>Benefits of using dynamic web development:</strong></span></p>\r\n<ul>\r\n<li><span style=\"font-size: 14pt;\">Greater functionality and interactivity</span></li>\r\n<li><span style=\"font-size: 14pt;\">Ability to handle large amounts of data and users</span></li>\r\n<li><span style=\"font-size: 14pt;\">Real-time data updates</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\"><strong>Limitations:</strong></span></p>\r\n<ul>\r\n<li><span style=\"font-size: 14pt;\">More complex development process</span></li>\r\n<li><span style=\"font-size: 14pt;\">Higher hosting and maintenance costs</span></li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">Note: When using dynamic web development, it is important to make sure to use security best practices such as sanitizing user input and using secure connections.</span></p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"text-gray-400 flex self-end lg:self-center justify-center mt-2 gap-4 lg:gap-1 lg:absolute lg:top-0 lg:translate-x-full lg:right-0 lg:mt-0 lg:pl-2 visible\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"w-full border-b border-black/10 dark:border-gray-900/50 text-gray-800 dark:text-gray-100 group dark:bg-gray-800\">\r\n<div class=\"text-base gap-4 md:gap-6 m-auto md:max-w-2xl lg:max-w-2xl xl:max-w-3xl p-4 md:py-6 flex lg:px-0\">\r\n<div class=\"w-[30px] flex flex-col relative items-end\">\r\n<div class=\"relative flex\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>', '2023-01-15 13:31:49.651358', 1, '23', 'RealTechWord', 'Dynamic web development refers to the building of websites using server-side languages and databases. These websites can change content and behavior based on user interactions and data from the server.'),
(4, 'What is AI (Artificial Intelligence)', 'blogs/posts/real-tech-world-ai.jpg', 'what-is-ai-artificial-intelligence', '<p><span style=\"font-size: 14pt;\">Artificial Intelligence, or AI, is a broad and rapidly evolving field that involves the development of computer systems that can perform tasks that would typically require human intelligence. This can include tasks such as recognizing speech and images, understanding natural language, making decisions, and problem-solving. The field of AI is interdisciplinary and draws on concepts and techniques from computer science, mathematics, psychology, and other fields.</span></p>\r\n<p><span style=\"font-size: 14pt;\"><strong>There are different types of AI, each with their own strengths and weaknesses. Some examples include:</strong></span></p>\r\n<ul>\r\n<li>\r\n<p><span style=\"font-size: 14pt;\"><strong>Reactive machines:</strong> These AI systems only react to their environment and don\'t have the ability to remember past events. These types of AI systems are typically used for simple, real-time tasks such as playing chess or identifying objects in an image.</span></p>\r\n</li>\r\n<li>\r\n<p><span style=\"font-size: 14pt;\"><strong>Limited Memory:</strong> These AI systems can remember past events and use them to inform future decisions. These types of AI systems are used in applications such as self-driving cars, where the AI needs to remember past events in order to make safe decisions in the present.</span></p>\r\n</li>\r\n<li>\r\n<p><span style=\"font-size: 14pt;\"><strong>Theory of Mind:</strong> AI systems that can understand human emotions, beliefs, and intentions. This type of AI is still being researched and is not yet widely used in practical applications.</span></p>\r\n</li>\r\n<li>\r\n<p><span style=\"font-size: 14pt;\"><strong>Self-Aware</strong>: AI systems that have a sense of self-awareness. This type of AI is still purely fictional and does not exist yet.</span></p>\r\n</li>\r\n</ul>\r\n<p><span style=\"font-size: 14pt;\">AI is being increasingly applied in a variety of fields, such as healthcare, finance, transportation, and manufacturing. AI-based systems and applications are becoming increasingly prevalent in our daily lives, from virtual assistants and chatbots to self-driving cars and personalized recommendations. In healthcare, for example, AI systems are being used to analyze medical images, assist with diagnostics, and help with drug discovery. In finance, AI systems are being used for fraud detection, risk assessment, and portfolio management.</span></p>\r\n<p><span style=\"font-size: 14pt;\">AI can be applied in a variety of fields such as healthcare, finance, transportation, and manufacturing. AI-based systems and applications are becoming increasingly prevalent in our daily lives, from virtual assistants and chatbots to self-driving cars and personalized recommendations.</span></p>\r\n<p><span style=\"font-size: 14pt;\">However, the development of AI also raises ethical and societal concerns, such as job displacement and potential misuse. Therefore, it is important to consider the implications of AI and to actively work towards responsible and ethical development and deployment of AI. As AI continues to advance, it will be important for researchers, policymakers, and the general public to engage in ongoing dialogue about the opportunities and challenges presented by this powerful technology.</span></p>', '2023-01-15 14:53:12.831037', 2, '7', 'RealTechWord', 'AI (Artificial Intelligence) refers to the simulation of human intelligence in machines that are programmed to think and learn like humans. It involves the development of algorithms and computer programs that can perform tasks that would typically require'),
(6, 'What is python in brief. Advantage and Disadvantage?', 'blogs/posts/what-is-python.png', 'what-is-python-in-brief-advantage-and-disadvantage', '<p style=\"text-align: justify;\"><span style=\"font-size: 14pt;\">Python is a high-level, interpreted programming language that is widely used for web development, scientific computing, data analysis, artificial intelligence, and other applications. It was first released in 1991 by Guido van Rossum, and it has since become one of the most popular programming languages in the world.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt;\">One of the main advantages of Python is its readability and simplicity, making it easy to learn and use. It also has a large and active community, which has developed a wide range of libraries and frameworks for various tasks. Additionally, Python supports multiple programming paradigms such as object-oriented, imperative, and functional programming.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt;\">Python is often used for web scraping, data visualization, natural language processing, machine learning and deep learning, automation and so on. Popular libraries and frameworks in Python include NumPy, Pandas, Matplotlib, TensorFlow, and Django.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt;\">Python is a versatile language that can be used for a wide variety of tasks and is supported by many operating systems, such as Windows, macOS, and Linux. It is also commonly used in industry, academia, and government organizations around the world.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt;\"><strong>Advantages of using Python:</strong></span></p>\r\n<ul style=\"text-align: justify;\">\r\n<li><span style=\"font-size: 14pt;\">Easy to learn and read, with a simple and straightforward syntax.</span></li>\r\n<li><span style=\"font-size: 14pt;\">Large and active community, which has developed a wide range of libraries and frameworks for various tasks.</span></li>\r\n<li><span style=\"font-size: 14pt;\">Versatile, can be used for web development, scientific computing, data analysis, artificial intelligence, and many other applications.</span></li>\r\n<li><span style=\"font-size: 14pt;\">Support multiple programming paradigms such as object-oriented, imperative, and functional programming.</span></li>\r\n<li><span style=\"font-size: 14pt;\">Has a large number of libraries for machine learning, natural language processing, and data visualization.</span></li>\r\n<li><span style=\"font-size: 14pt;\">Good performance, due to the presence of built-in data structures and memory management.</span></li>\r\n<li><span style=\"font-size: 14pt;\">High demand in the job market.</span></li>\r\n</ul>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt;\"><strong>Disadvantages of using Python:</strong></span></p>\r\n<ul style=\"text-align: justify;\">\r\n<li><span style=\"font-size: 14pt;\">Can be slower than some other programming languages, such as C or Java, especially for certain types of applications or tasks.</span></li>\r\n<li><span style=\"font-size: 14pt;\">Not always the best choice for mobile or desktop applications.</span></li>\r\n<li><span style=\"font-size: 14pt;\">Some libraries or frameworks may have limited functionality or be less actively maintained than others.</span></li>\r\n<li><span style=\"font-size: 14pt;\">Some errors can only be detected during runtime, rather than at compile time.</span></li>\r\n<li><span style=\"font-size: 14pt;\">Incompatibility with older version, sometimes python 3 is not compatible with python 2.</span></li>\r\n</ul>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt;\">Note: These are just general considerations, and whether Python is the right choice for a specific project or task will depend on the specific requirements and constraints of that project or task.</span></p>\r\n<div class=\"flex flex-grow flex-col gap-3\" style=\"text-align: justify;\">\r\n<div class=\"min-h-[20px] flex flex-col items-start gap-4 whitespace-pre-wrap\">\r\n<div class=\"markdown prose w-full break-words dark:prose-invert light\">\r\n<p><span style=\"font-size: 14pt;\"><strong>Example:</strong></span></p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"text-gray-400 flex self-end lg:self-center justify-center mt-2 gap-4 lg:gap-1 lg:absolute lg:top-0 lg:translate-x-full lg:right-0 lg:mt-0 lg:pl-2 visible\">\r\n<div class=\"flex-1 overflow-hidden\">\r\n<div class=\"react-scroll-to-bottom--css-yqedt-79elbk h-full dark:bg-gray-800\">\r\n<div class=\"react-scroll-to-bottom--css-yqedt-1n7m0yu\">\r\n<div class=\"flex flex-col items-center text-sm h-full dark:bg-gray-800\">\r\n<div class=\"w-full border-b border-black/10 dark:border-gray-900/50 text-gray-800 dark:text-gray-100 group bg-gray-50 dark:bg-[#444654]\">\r\n<div class=\"text-base gap-4 md:gap-6 m-auto md:max-w-2xl lg:max-w-2xl xl:max-w-3xl p-4 md:py-6 flex lg:px-0\">\r\n<div class=\"relative flex w-[calc(100%-50px)] md:flex-col lg:w-[calc(100%-115px)]\">\r\n<div class=\"flex flex-grow flex-col gap-3\">\r\n<div class=\"min-h-[20px] flex flex-col items-start gap-4 whitespace-pre-wrap\">\r\n<div class=\"markdown prose w-full break-words dark:prose-invert light\">\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt;\">A basic example of Python code would be a simple program that prints \"Hello, World!\" to the console. Here is an example of that in Python:</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt;\"><code><span class=\"hljs-built_in\">print</span>(<span class=\"hljs-string\">\"Hello, World!\"</span>)</code></span></p>\r\n<div class=\"flex items-center relative text-gray-200 bg-gray-800  text-xs font-sans\" style=\"text-align: justify;\"><span style=\"font-size: 14pt;\">You can run this program by saving it in a file with the&nbsp;<code>.py</code>&nbsp;extension and then running it using a Python interpreter. Another simple example is a program that prompts the user for their name and then greets them by name:</span></div>\r\n<div class=\"flex items-center relative text-gray-200 bg-gray-800   text-xs font-sans\" style=\"text-align: justify;\">&nbsp;</div>\r\n<div class=\"flex items-center relative text-gray-200 bg-gray-800 text-xs font-sans\">\r\n<div class=\"markdown prose w-full break-words dark:prose-invert light\" style=\"text-align: justify;\"><span style=\"font-size: 14pt;\"><code>name =&nbsp;<span class=\"hljs-built_in\">input</span>(<span class=\"hljs-string\">\"What is your name? \"</span>)</code></span></div>\r\n<div class=\"markdown prose w-full break-words dark:prose-invert light\" style=\"text-align: justify;\"><span style=\"font-size: 14pt;\"><code><span class=\"hljs-built_in\">print</span>(<span class=\"hljs-string\">\"Hello, \"</span>&nbsp;+ name +&nbsp;<span class=\"hljs-string\">\"!\"</span>)</code></span><br />\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt;\">Here the input function is used to capture the user input, and then it is concatenated with the string to greet the user.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt;\">These examples are a small part of the vast capabilities of Python and its simplicity. There are countless other examples and use cases that demonstrate the power and versatility of the Python programming language.</span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2023-01-15 21:37:26.909621', 3, '21', 'RealTechWord', 'Python is a high-level, interpreted programming language that is widely used for web development, scientific computing, data analysis, artificial intelligence, and other applications. It was first released in 1991 by Guido van Rossum.'),
(8, 'Maximizing Your Online Presence: The Importance of SEO for Small Businesses', 'blogs/posts/seo.JPG', 'maximizing-your-online-presence-the-importance-of-', '<h3><strong>Introduction: </strong></h3>\r\n<p>As a small business owner, it\'s important to make the most of your online presence. With so many consumers turning to the internet to find products and services, it\'s crucial to have a website that is easy to find and navigate. One of the best ways to achieve this is through search engine optimization (SEO).</p>\r\n<h3><strong>Body: </strong></h3>\r\n<p>SEO is the process of optimizing your website to rank higher in search engine results. By using a combination of techniques such as keyword research, content creation, and link building, you can improve your website\'s visibility and attract more traffic.</p>\r\n<p>One of the most important aspects of SEO is keyword research. This involves identifying the words and phrases that people are using to search for products and services like yours. Once you know what keywords to target, you can optimize your website\'s content and meta tags to include them. This will help search engines understand what your website is about and make it more likely to appear in search results.</p>\r\n<p>Another key element of SEO is content creation. Having high-quality, relevant, and informative content on your website can help it rank higher in search results. Additionally, regularly updating your website with new content can also help boost your rankings.</p>\r\n<p>Link building is another important aspect of SEO. This refers to the process of getting other websites to link to your site. The more high-quality, relevant links you have pointing to your website, the more likely it is to rank higher in search results.</p>\r\n<h3>Conclusion:</h3>\r\n<p>SEO can be a complex and ever-changing field, but by focusing on keyword research, content creation, and link building, small business owners can improve their online visibility and attract more traffic to their website. It is important to remember that SEO is not a one-time task, but it is an ongoing process that requires patience and persistence.</p>\r\n<p><strong>Note:</strong> This article is written as an example and is not guaranteed to be optimized for SEO. It is always recommended to consult with a SEO experts.</p>', '2023-01-17 23:26:42.972765', 4, '1', 'RealTechWord', 'SEO is the process of optimizing your website to rank higher in search engine results. By using a combination of techniques such as keyword research, content creation, and link building.'),
(9, 'Finding Inner Peace: The Benefits of Yoga for Stress Relief', 'blogs/posts/practicing-yoga.jpg', 'finding-inner-peace-the-benefits-of-yoga-for-stres', '<h3>Introduction:</h3>\r\n<p>Stress is a part of everyday life, but it doesn\'t have to control it. Yoga is an ancient practice that offers a variety of physical and mental benefits, including stress relief. Whether you\'re new to yoga or a seasoned practitioner, incorporating it into your daily routine can help you manage stress and improve your overall well-being.</p>\r\n<h3>Body:</h3>\r\n<p>Yoga is a holistic practice that includes physical postures, breathing techniques, and meditation. The combination of these elements can help reduce stress by calming the mind and relaxing the body.</p>\r\n<p>One of the key benefits of yoga is its ability to lower levels of the stress hormone cortisol. This hormone is released in response to stress, and high levels of it can lead to a variety of health problems, including anxiety and depression. Yoga\'s focus on deep breathing and relaxation can help decrease cortisol levels and promote a sense of calm.</p>\r\n<p>Yoga\'s physical postures, or asanas, can also help alleviate stress. These postures help to release tension in the body and improve flexibility, balance, and strength. Some poses, such as forward bends and twists, can also help calm the nervous system and promote a sense of relaxation.</p>\r\n<p>Yoga\'s meditative aspect can also help reduce stress. Through practices such as mindfulness and visualization, yoga helps to quiet the mind and focus on the present moment. This can help to reduce anxiety and improve overall mental well-being.</p>\r\n<h3>Conclusion:</h3>\r\n<p>Yoga is a powerful tool for stress relief. Its combination of physical postures, breathing techniques, and meditation can help reduce stress hormone levels, alleviate physical tension, and calm the mind. Incorporating yoga into your daily routine can help you manage stress and improve your overall well-being.</p>\r\n<p><strong>Note:</strong> It is always recommended to consult with a doctor before starting any new exercise regimen.</p>', '2023-01-17 23:32:50.229252', 5, '0', 'RealTechWord', 'Stress is a part of everyday life, but it doesn\'t have to control it. Yoga is an ancient practice that offers a variety of physical and mental benefits, including stress relief.'),
(10, 'The Benefits of Eating Organic Foods', 'blogs/posts/organic-vegitables.jpg', 'the-benefits-of-eating-organic-foods', '<p>Eating organic foods has become increasingly popular in recent years, and for good reason. Organic foods are grown without the use of synthetic pesticides, fertilizers, or genetically modified organisms (GMOs). Not only are these foods better for the environment, but they also offer a variety of health benefits.</p>\r\n<p>One of the main benefits of eating organic foods is that they are free from harmful chemicals. Conventional farming practices often rely on the use of synthetic pesticides and fertilizers, which can be harmful to both the environment and human health. Eating organic foods that are grown without these chemicals can reduce your exposure to these toxins and promote overall health.</p>\r\n<p>Organic foods are also generally more nutritious than conventional foods. Studies have shown that organic fruits and vegetables contain higher levels of vitamins and minerals than their non-organic counterparts. Eating a diet rich in these nutrients can help to boost your immune system and prevent chronic diseases.</p>\r\n<p>Eating organic foods can also help to protect the environment. Organic farming practices are generally more sustainable than conventional farming practices, as they rely on natural methods to control pests and fertilize crops. This reduces the amount of chemicals that are released into the environment, and also helps to conserve water and other natural resources.</p>\r\n<p>Another benefit of eating organic foods is that they often taste better than conventional foods. Organic foods are generally fresher and are allowed to ripen on the vine. This means that they have more time to develop their full flavor, resulting in a taste that is more intense and satisfying.</p>\r\n<p>Conclusion: Eating organic foods offers a variety of benefits, including reduced exposure to harmful chemicals, improved nutrition, and protection of the environment. By choosing to eat organic foods, you can promote your own health and well-being, as well as contribute to a more sustainable food system.</p>\r\n<p><strong>Note:</strong> Eating organic foods might be more expensive than conventional foods, but it is worth considering the benefits before making a final decision.</p>', '2023-01-17 23:38:58.903763', 5, '1', 'RealTechWord', 'Eating organic foods has become increasingly popular in recent years, and for good reason. Organic foods are grown without the use of synthetic pesticides, fertilizers'),
(11, 'Driving into the Future: The Rise of Electric Cars', 'blogs/posts/electric_car.JPG', 'driving-into-the-future-the-rise-of-electric-cars', '<h3>Introduction:</h3>\r\n<p>Electric cars are no longer a thing of the future, they are becoming a reality. With the increasing concerns about climate change and the need for more sustainable transportation options, the demand for electric cars has been on the rise.</p>\r\n<h3>Body:</h3>\r\n<p>One of the main reasons for the rise of electric cars is the growing concerns about climate change. Electric cars produce zero emissions, which means they don\'t contribute to air pollution and greenhouse gases. This makes them a more environmentally friendly option than traditional gasoline-powered cars.</p>\r\n<p>Another reason for the rise of electric cars is the advancement in technology. The range of electric cars has increased significantly in recent years, and they are now capable of traveling longer distances on a single charge. This means that electric cars are becoming more practical and convenient for everyday use.</p>\r\n<p>The cost of electric cars is also becoming more affordable. The prices of electric cars are coming down as the technology improves and economies of scale are achieved, making them more accessible to the general public. Additionally, government incentives and subsidies are also helping to make electric cars more affordable for consumers.</p>\r\n<p>Electric cars are also becoming more popular among consumers due to their quiet and smooth driving experience. Electric motors produce instant torque, which provides a smooth and quiet ride compared to gasoline-powered cars. This also makes electric cars more fun to drive.</p>\r\n<p>Conclusion: The rise of electric cars is driven by the increasing concerns about climate change and the need for more sustainable transportation options. With the advancements in technology, the cost of electric cars is becoming more affordable, making them more accessible to the general public. The benefits of electric cars such as zero emissions, quiet and smooth driving experience make them more appealing to the consumers. It is clear that electric cars are becoming an increasingly viable option for sustainable transportation in the future.</p>\r\n<p><strong>Note:</strong> The availability of charging infrastructure is also an important factor for the wide adoption of electric cars. Government and private sectors are investing in the development of charging infrastructure to support the growth of electric cars.</p>', '2023-01-17 23:43:40.503640', 5, '0', 'RealTechWord', 'Electric cars are no longer a thing of the future, they are becoming a reality. With the increasing concerns about climate change and the need for more sustainable transportation options, the demand for electric cars has been on the rise.'),
(12, 'The Impact of Social Media on Mental Health', 'blogs/posts/Social-Media-Graphic.png', 'the-impact-of-social-media-on-mental-health', '<div class=\"w-full border-b border-black/10 dark:border-gray-900/50 text-gray-800 dark:text-gray-100 group bg-gray-50 dark:bg-[#444654]\">\r\n<div class=\"text-base gap-4 md:gap-6 m-auto md:max-w-2xl lg:max-w-2xl xl:max-w-3xl p-4 md:py-6 flex lg:px-0\">\r\n<div class=\"relative flex w-[calc(100%-50px)] md:flex-col lg:w-[calc(100%-115px)]\">\r\n<div class=\"flex flex-grow flex-col gap-3\">\r\n<div class=\"min-h-[20px] flex flex-col items-start gap-4 whitespace-pre-wrap\">\r\n<div class=\"markdown prose w-full break-words dark:prose-invert light\">\r\n<h3>Introduction:</h3>\r\n<p>Social media has become an integral part of our daily lives, connecting us to friends, family, and the world at large. However, studies have shown that excessive use of social media can have a negative impact on our mental health. Understanding the relationship between social media and mental health is crucial for maintaining a healthy balance.</p>\r\n<h3>Body:</h3>\r\n<p>One of the most significant ways in which social media affects our mental health is by causing feelings of anxiety, depression, and low self-esteem. This is because social media can create a sense of comparison and inadequacy, leading to feelings of inadequacy and self-doubt. Seeing the curated lives of others can also lead to feelings of FOMO (fear of missing out) and dissatisfaction with one\'s own life.</p>\r\n<p>Social media can also affect our sleep patterns, leading to insomnia and other sleep disorders. The blue light emitted by screens can disrupt the production of melatonin, making it harder to fall asleep. Additionally, the constant notifications and the pressure to be always online can make it difficult to disconnect and relax before bed.</p>\r\n<p>On the other hand, social media can also have positive effects on mental health. It can help to connect people with similar interests and provide a sense of community and support. It can also help people with mental health conditions, such as anxiety and depression, by providing access to information and resources, as well as support groups.</p>\r\n<h3>Conclusion:</h3>\r\n<p>The relationship between social media and mental health is complex. While it can have negative effects, such as feelings of anxiety, depression, and low self-esteem, it can also have positive effects, such as providing a sense of community and support. It is important to be mindful of our social media use and to strive for a balance that promotes both connection and self-care. This can be achieved by setting limits on the amount of time spent on social media, engaging in self-reflection, and engaging in healthy activities that promote well-being.</p>\r\n<p><strong>Note:</strong> It is always recommended to consult with a mental health professional if you are experiencing mental health problems.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"text-gray-400 flex self-end lg:self-center justify-center mt-2 gap-4 lg:gap-1 lg:absolute lg:top-0 lg:translate-x-full lg:right-0 lg:mt-0 lg:pl-2 visible\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>', '2023-01-17 23:48:16.075248', 5, '1', 'RealTechWord', 'One of the most significant ways in which social media affects our mental health is by causing feelings of anxiety, depression, and low self-esteem.'),
(13, 'What is ChatGPT?', 'blogs/posts/chatgpt.jpg', 'what-is-chatgpt', '<div class=\"flex-1 overflow-hidden\">\r\n<div class=\"react-scroll-to-bottom--css-evadh-79elbk h-full dark:bg-gray-800\">\r\n<div class=\"react-scroll-to-bottom--css-evadh-1n7m0yu\">\r\n<div class=\"flex flex-col items-center text-sm h-full dark:bg-gray-800\">\r\n<div class=\"w-full border-b border-black/10 dark:border-gray-900/50 text-gray-800 dark:text-gray-100 group bg-gray-50 dark:bg-[#444654]\">\r\n<div class=\"text-base gap-4 md:gap-6 m-auto md:max-w-2xl lg:max-w-2xl xl:max-w-3xl p-4 md:py-6 flex lg:px-0\">\r\n<div class=\"relative flex w-[calc(100%-50px)] md:flex-col lg:w-[calc(100%-115px)]\">\r\n<div class=\"flex flex-grow flex-col gap-3\">\r\n<div class=\"min-h-[20px] flex flex-col items-start gap-4 whitespace-pre-wrap\">\r\n<div class=\"markdown prose w-full break-words dark:prose-invert light\">\r\n<p>ChatGPT is a large-scale language model developed by OpenAI that uses a deep neural network architecture to generate human-like responses to text input. It is based on the GPT (Generative Pre-training Transformer) architecture and is trained on a massive dataset of conversational text, allowing it to generate responses that are often indistinguishable from those produced by a human.</p>\r\n<p>The GPT architecture is a transformer-based neural network that uses self-attention mechanisms to analyze the relationships between words in a sentence, allowing it to understand the context of the input and generate responses that are coherent and appropriate. The pre-training aspect of the model means that it is trained on a diverse dataset before being fine-tuned on specific tasks, allowing it to generate text that is more coherent and less prone to errors than models that are only fine-tuned.</p>\r\n<p>ChatGPT can be used for a variety of natural language processing tasks such as text completion, language translation, and conversation generation. It can be used to generate responses in a conversational context, such as in a chatbot or virtual assistant, or to complete text passages in a way that is coherent and consistent with the input. It can also be used to perform language translation and other similar tasks.</p>\r\n<p>One of the biggest advantages of ChatGPT is its ability to generate human-like text, which makes it a useful tool for natural language generation tasks. It can be used in a variety of applications, such as customer service chatbots, automated content creation, and language-based virtual assistants.</p>\r\n<p style=\"text-align: justify;\">Overall, ChatGPT is a powerful tool for natural language processing, capable of producing human-like responses to text input and can be used in a wide range of applications.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2023-01-18 09:00:11.340517', 5, '0', 'RealTechWord', 'ChatGPT is a large language model developed by OpenAI. It is based on the GPT (Generative Pre-training Transformer) architecture and is trained on a dataset of conversational text.'),
(14, 'What is fiat money?', 'blogs/posts/960x0-min.jpg', 'what-is-fiat-money', '<p>Fiat money is a type of currency that is issued and backed by a government, as opposed to being backed by a physical commodity such as gold or silver. This means that the value of fiat money is determined by the government that issues it and not by the value of a physical commodity. Fiat money is generally accepted as a medium of exchange within the country it is issued in, and it is legal tender, meaning that it must be accepted as payment for debts and taxes.</p>\r\n<p>Cryptocurrency, on the other hand, is a decentralized form of digital currency that uses cryptography to secure and verify transactions. It is not issued or backed by any government or central authority, and its value is determined by supply and demand on the open market. Cryptocurrency operates on a decentralized blockchain network, which means that it is not controlled by any single entity, making it resistant to government interference or manipulation.</p>\r\n<p>Some people in the cryptocurrency community view fiat money as the enemy of crypto because they see it as being controlled by governments and central banks, which can manipulate its value and use it as a tool for inflationary monetary policy. They argue that cryptocurrency, being decentralized and having a limited supply, is a more stable and fair form of money. This is because the supply of most cryptocurrencies is capped and cannot be increased at the discretion of any central authority, unlike fiat money, which can be printed or created at will.</p>\r\n<p>Additionally, Cryptocurrency offers a certain level of anonymity and is not subject to government policies that may restrict its use, these attributes make it more attractive for some users. Some people see it as a way to protect their assets and financial privacy, especially in countries with high inflation or political instability.</p>\r\n<p>However, it\'s worth noting that some people see cryptocurrencies as a complement to fiat money, not as an enemy. They believe that the two forms of currency can coexist and that cryptocurrency can offer new opportunities for financial inclusion, remittances, and other use cases. Cryptocurrency can offer faster, cheaper, and more secure transactions than traditional financial systems, especially for people in developing countries, who may not have access to traditional banking services. Also, the transparency and immutability provided by blockchain technology can be used to create new financial products and services, such as smart contracts, which can automate financial transactions and reduce the need for intermediaries.</p>\r\n<p>Overall, the relationship between fiat money and cryptocurrency is complex and multi-faceted. While some people see them as adversaries, others see them as complementary forms of currency that can coexist and bring new opportunities to the world of finance.</p>', '2023-01-18 09:18:01.292290', 6, '0', 'RealTechWord', 'Fiat money is a type of currency that is issued and backed by a government, as opposed to being backed by a physical commodity such as gold or silver. This means that the value of fiat money is determined by the government that issues it'),
(15, 'What is Blockchain? Advantages & Disadvantages of Blockchain.', 'blogs/posts/blockchain.jpg', 'what-is-blockchain-advantages-disadvantages-of-blo', '<p>Blockchain is a distributed ledger technology that enables the creation of decentralized and transparent digital records, also known as blocks, that are linked together in a chronological chain. Each block contains a record of multiple transactions, and once a block is added to the chain, its information cannot be altered or deleted.</p>\r\n<p>The most well-known application of blockchain technology is Bitcoin, a decentralized digital currency that uses blockchain to record and verify transactions. But blockchain has many other potential uses, such as creating smart contracts, digital identities, and supply chain management.</p>\r\n<h3>Advantages of blockchain include:</h3>\r\n<ul>\r\n<li><strong>Decentralization:</strong> Blockchain technology is decentralized, meaning that it is not controlled by any single entity or organization. This makes it resistant to censorship and reduces the risk of a single point of failure.</li>\r\n<li><strong>Transparency:</strong> Blockchain is an open and transparent system, which means that all transactions are publicly accessible and verifiable by anyone.</li>\r\n<li><strong>Immutability:</strong> Once a block is added to the blockchain, its information cannot be altered or deleted, making it a secure and tamper-proof way to store data.</li>\r\n<li><strong>Security:</strong> Blockchain uses advanced cryptography to secure transactions and protect against hacking, fraud, and other forms of tampering.</li>\r\n<li><strong>Efficiency:</strong> Blockchain can automate processes and reduce the need for intermediaries, which can make transactions faster, cheaper, and more efficient.</li>\r\n</ul>\r\n<h3>Disadvantages of blockchain include:</h3>\r\n<ul>\r\n<li><strong>Scalability:</strong> Blockchain networks can become slow and congested as the number of users and transactions increases.</li>\r\n<li><strong>Regulation</strong>: Blockchain technology is still largely unregulated, which can create uncertainty for users and businesses.</li>\r\n<li><strong>Interoperability:</strong> Different blockchain networks use different protocols, which can make it difficult for them to communicate and exchange data.</li>\r\n<li><strong>Adoption:</strong> Blockchain technology is still relatively new and not yet widely adopted.</li>\r\n<li><strong>Energy consumption:</strong> Blockchain networks can consume a large amount of energy, which can make them environmentally unsustainable in the long term.</li>\r\n</ul>\r\n<p>Overall, blockchain technology has the potential to revolutionize many industries by enabling secure, transparent, and decentralized transactions. However, it still faces challenges such as scalability, regulation, and adoption, which will need to be addressed before it can reach its full potential.</p>', '2023-01-18 09:25:38.235848', 6, '0', 'RealTechWord', 'Blockchain is a distributed ledger technology that enables the creation of decentralized and transparent digital records, also known as blocks, that are linked together in a chronological chain. Each block contains a record of multiple transactions, and o'),
(16, 'How to Store Bitcoin Offline in Cold Storage?', 'blogs/posts/pexels-photo-315788-min.jpg', 'how-to-store-bitcoin-offline-in-cold-storage', '<div class=\"flex-1 overflow-hidden\">\r\n<div class=\"react-scroll-to-bottom--css-evadh-79elbk h-full dark:bg-gray-800\">\r\n<div class=\"react-scroll-to-bottom--css-evadh-1n7m0yu\">\r\n<div class=\"flex flex-col items-center text-sm h-full dark:bg-gray-800\">\r\n<div class=\"w-full border-b border-black/10 dark:border-gray-900/50 text-gray-800 dark:text-gray-100 group bg-gray-50 dark:bg-[#444654]\">\r\n<div class=\"text-base gap-4 md:gap-6 m-auto md:max-w-2xl lg:max-w-2xl xl:max-w-3xl p-4 md:py-6 flex lg:px-0\">\r\n<div class=\"relative flex w-[calc(100%-50px)] md:flex-col lg:w-[calc(100%-115px)]\">\r\n<div class=\"flex flex-grow flex-col gap-3\">\r\n<div class=\"min-h-[20px] flex flex-col items-start gap-4 whitespace-pre-wrap\">\r\n<div class=\"markdown prose w-full break-words dark:prose-invert light\">\r\n<p>Storing Bitcoin offline in cold storage is a method of keeping your Bitcoin safe from hacking and other forms of cybercrime by keeping it offline and away from the internet. This is often called \"cold storage\" or \"offline storage\" and it is considered to be one of the most secure ways to store Bitcoin. Here are a few ways to store Bitcoin offline in cold storage:</p>\r\n<ol>\r\n<li>\r\n<p><strong>Use a hardware wallet:</strong> A hardware wallet is a physical device, such as a USB drive, that stores your private keys offline. Some popular hardware wallets include Trezor, Ledger, and KeepKey. To use a hardware wallet, you simply connect it to your computer and use it to send and receive Bitcoin.</p>\r\n</li>\r\n<li>\r\n<p><strong>Use a paper wallet:</strong> A paper wallet is a physical record of your private key that you can store offline. To create a paper wallet, you can use a website like bitaddress.org to generate a new address and private key, and then print it out and store it in a safe place.</p>\r\n</li>\r\n<li>\r\n<p><strong>Use a brain wallet:</strong> A brain wallet is a method of storing your private key in a way that only you can remember it. This can be a mnemonic phrase, a passphrase, or even a song. To use a brain wallet, you need to remember your private key and use it to access your Bitcoin.</p>\r\n</li>\r\n<li>\r\n<p><strong>Use a steel wallet:</strong> A steel wallet is a physical record of your private key that is engraved on a piece of steel. These wallets are durable and resistant to fire and water, and can be stored in a safe deposit box, or other secure location.</p>\r\n</li>\r\n<li>\r\n<p><strong>Use a multi-sig wallet:</strong> A multi-sig wallet is a type of wallet that requires more than one signature to authorize a transaction. This can be used in conjunction with one of the above methods, to add an extra layer of security.</p>\r\n</li>\r\n</ol>\r\n<p>It\'s important to note that, no matter what method you choose, you should be careful to keep your private key safe and secure. This means keeping it in a secure location, and not sharing it with anyone. And also, keep multiple backups of your private key, in case you lose it or it gets damaged.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"text-gray-400 flex self-end lg:self-center justify-center mt-2 gap-4 lg:gap-1 lg:absolute lg:top-0 lg:translate-x-full lg:right-0 lg:mt-0 lg:pl-2 visible\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"w-full h-48 flex-shrink-0\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"absolute bottom-0 left-0 w-full border-t md:border-t-0 dark:border-white/20 md:border-transparent md:dark:border-transparent md:bg-vert-light-gradient bg-white dark:bg-gray-800 md:!bg-transparent dark:md:bg-vert-dark-gradient\"><form class=\"stretch mx-2 flex flex-row gap-3 pt-2 last:mb-2 md:last:mb-6 lg:mx-auto lg:max-w-3xl lg:pt-6\">\r\n<div class=\"relative flex h-full flex-1 md:flex-col\">\r\n<div class=\"ml-1 mt-1.5 md:w-full md:m-auto md:flex md:mb-2 gap-2 justify-center\">&nbsp;</div>\r\n<div class=\"flex flex-col w-full py-2 flex-grow md:py-3 md:pl-4 relative border border-black/10 bg-white dark:border-gray-900/50 dark:text-white dark:bg-gray-700 rounded-md shadow-[0_0_10px_rgba(0,0,0,0.10)] dark:shadow-[0_0_15px_rgba(0,0,0,0.10)]\">&nbsp;</div>\r\n</div>\r\n</form></div>', '2023-01-18 09:33:55.400810', 6, '1', 'RealTechWord', 'Storing Bitcoin offline in cold storage is a method of keeping your Bitcoin safe from hacking and other forms of cybercrime by keeping it offline and away from the internet.');
INSERT INTO `blogs_blogpost` (`id`, `title`, `image`, `slug`, `description`, `on_date`, `category_id_id`, `views`, `post_by`, `sub_title`) VALUES
(17, 'What is crypto currency in detail.', 'blogs/posts/960x0-min_eeNQyuo.jpg', 'what-is-crypto-currency-in-detail', '<div class=\"flex-1 overflow-hidden\">\r\n<div class=\"react-scroll-to-bottom--css-hqdnu-79elbk h-full dark:bg-gray-800\">\r\n<div class=\"react-scroll-to-bottom--css-hqdnu-1n7m0yu\">\r\n<div class=\"flex flex-col items-center text-sm h-full dark:bg-gray-800\">\r\n<div class=\"w-full border-b border-black/10 dark:border-gray-900/50 text-gray-800 dark:text-gray-100 group bg-gray-50 dark:bg-[#444654]\">\r\n<div class=\"text-base gap-4 md:gap-6 m-auto md:max-w-2xl lg:max-w-2xl xl:max-w-3xl p-4 md:py-6 flex lg:px-0\">\r\n<div class=\"relative flex w-[calc(100%-50px)] md:flex-col lg:w-[calc(100%-115px)]\">\r\n<div class=\"flex flex-grow flex-col gap-3\">\r\n<div class=\"min-h-[20px] flex flex-col items-start gap-4 whitespace-pre-wrap\">\r\n<div class=\"markdown prose w-full break-words dark:prose-invert light\">\r\n<p>Cryptocurrency is a digital or virtual currency that uses advanced encryption techniques for security. It is decentralized, meaning that it operates independently of governments or banks. Instead, it is based on blockchain technology, which is a decentralized and public digital ledger that records transactions across a network of computers. Bitcoin is the first and most widely-used cryptocurrency, but there are many other options available, such as Ethereum, Litecoin, and Ripple. These currencies can be bought, sold, and traded on online exchanges, and can also be used to purchase goods and services.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>A key feature of cryptocurrency is that it uses cryptography to secure transactions and protect against hacking, fraud, and other forms of tampering. This is accomplished through the use of public and private keys. A public key is a unique code that can be shared with others and used to receive cryptocurrency, while a private key is a secret code that is used to authorize transactions and access the cryptocurrency associated with a public key.</p>\r\n<p>Cryptocurrency transactions are recorded on a decentralized blockchain network, which is a digital ledger that records every transaction that takes place on the network. Each block in the blockchain contains a record of multiple transactions, and once a block is added to the chain, its information cannot be altered or deleted. This makes the blockchain a secure and tamper-proof way to store data.</p>\r\n<p>Another advantage of cryptocurrency is that it can be used to facilitate fast and secure transactions without the need for intermediaries. This can make transactions faster, cheaper, and more efficient, especially for people in developing countries, who may not have access to traditional banking services.</p>\r\n<p>While cryptocurrency has many benefits, it also has some drawbacks. One of the main challenges is scalability, as blockchain networks can become slow and congested as the number of users and transactions increases. Additionally, cryptocurrency is still largely unregulated, which can create uncertainty for users and businesses. Also, The energy consumption of cryptocurrency mining is a concern for some.</p>\r\n<p>Overall, cryptocurrency is a digital or virtual currency that uses cryptography for security and operates on a decentralized blockchain network. It offers many advantages, such as security, transparency, and efficiency, but also has some challenges that need to be addressed.</p>\r\n<h3>The main characteristics of cryptocurrency include:</h3>\r\n<ul>\r\n<li>\r\n<p>Decentralization</p>\r\n</li>\r\n<li>\r\n<p>Transparency</p>\r\n</li>\r\n<li>\r\n<p>Immutability</p>\r\n</li>\r\n<li>\r\n<p>Security</p>\r\n</li>\r\n<li>\r\n<p>Efficiency</p>\r\n</li>\r\n<li>\r\n<p>Borderless Transactions</p>\r\n</li>\r\n<li>\r\n<p>Financial Inclusion</p>\r\n</li>\r\n<li>\r\n<p>Anonymity</p>\r\n</li>\r\n<li>\r\n<p>Programmable money</p>\r\n</li>\r\n</ul>\r\n<h3>Advantages of cryptocurrency include:</h3>\r\n<ul>\r\n<li>\r\n<p><strong>Decentralization:</strong> Cryptocurrency is decentralized, meaning that it is not controlled by any single entity or organization. This makes it resistant to censorship and reduces the risk of a single point of failure.</p>\r\n</li>\r\n<li>\r\n<p><strong>Transparency:</strong> Cryptocurrency is an open and transparent system, which means that all transactions are publicly accessible and verifiable by anyone.</p>\r\n</li>\r\n<li>\r\n<p><strong>Immutability:</strong> Once a block is added to the blockchain, its information cannot be altered or deleted, making it a secure and tamper-proof way to store data.</p>\r\n</li>\r\n<li>\r\n<p><strong>Security:</strong> Cryptocurrency uses advanced cryptography to secure transactions and protect against hacking, fraud, and other forms of tampering.</p>\r\n</li>\r\n<li>\r\n<p><strong>Efficiency:</strong> Cryptocurrency can automate processes and reduce the need for intermediaries, which can make transactions faster, cheaper, and more efficient.</p>\r\n</li>\r\n<li>\r\n<p><strong>Borderless Transactions:</strong> Cryptocurrency can be used for cross-border transactions without incurring high transaction fees and long waiting times.</p>\r\n</li>\r\n<li>\r\n<p><strong>Financial Inclusion</strong>: Cryptocurrency can provide financial services to people who are unbanked or underbanked, enabling them to participate in the global economy.</p>\r\n</li>\r\n<li>\r\n<p><strong>Anonymity:</strong> Cryptocurrency transactions can be anonymous, which can protect users\' financial privacy and identity.</p>\r\n</li>\r\n<li>\r\n<p><strong>Programmable money:</strong> Cryptocurrency can be programmed to perform a specific function or set of instructions, this is known as smart contracts.</p>\r\n</li>\r\n</ul>\r\n<h3>Disadvantages of cryptocurrency include:</h3>\r\n<ul>\r\n<li>\r\n<p><strong>Volatility:</strong> The value of a cryptocurrency can be highly volatile, which can make it risky to hold or invest in.</p>\r\n</li>\r\n<li>\r\n<p><strong>Scalability:</strong> Blockchain networks can become slow and congested as the number of users and transactions increases, which can limit the scalability of cryptocurrency.</p>\r\n</li>\r\n<li>\r\n<p><strong>Regulation:</strong> Cryptocurrency is still largely unregulated, which can create uncertainty for users and businesses.</p>\r\n</li>\r\n<li>\r\n<p><strong>Interoperability:</strong> Different blockchain networks use different protocols, which can make it difficult for them to communicate and exchange data.</p>\r\n</li>\r\n<li>\r\n<p><strong>Adoption:</strong> Cryptocurrency is still relatively new and not yet widely adopted.</p>\r\n</li>\r\n<li>\r\n<p><strong>Security:</strong> Despite being inherently secure, cryptocurrency exchanges, wallets, and other platforms can be vulnerable to hacking and other forms of cybercrime.</p>\r\n</li>\r\n<li>\r\n<p><strong>Lack of understanding:</strong> Many people still don\'t understand the technology or its potential uses, which can make it difficult to adopt or invest in.</p>\r\n</li>\r\n<li>\r\n<p><strong>Energy consumption:</strong> Cryptocurrency mining and transaction validation can consume a large amount of energy, which can make them environmentally unsustainable in the long term.</p>\r\n</li>\r\n<li>\r\n<p><strong>Legal issues:</strong> Cryptocurrency is not yet recognized as legal tender in many countries, and its use may be restricted or prohibited in some jurisdictions.</p>\r\n</li>\r\n<li>\r\n<p><strong>Risk of fraud:</strong> Due to the decentralized nature of cryptocurrency, it can be vulnerable to fraud and other forms of financial crime.</p>\r\n</li>\r\n</ul>', '2023-01-18 09:52:48.072905', 6, '0', 'RealTechWord', 'A cryptocurrency is a digital or virtual currency that uses cryptography for security. It is decentralized, meaning it is not controlled by any government or institution. Bitcoin is the most well-known cryptocurrency, but there are many others, such as Et'),
(18, 'Top 8 Best WordPress Themes For Fitness Website And Blog', 'blogs/posts/top-8-wordpress-theme-min.jpg', 'top-8-best-wordpress-themes-for-fitness-website-an', '<h3>What is wordpress theme?</h3>\r\n<p>A WordPress theme is a collection of templates and stylesheets that determine the appearance and layout of a WordPress website. WordPress themes control the design of your website, including the layout, colors, typography, and other visual elements. They can also include functionalities such as custom post types, widgets, and other features.</p>\r\n<p>WordPress themes are designed to work with the WordPress platform, which is a content management system (CMS) that allows users to easily create and manage websites. Themes can be easily installed and activated through the WordPress dashboard, allowing users to quickly change the look and feel of their website without having to manually edit code.</p>\r\n<p>There are thousands of WordPress themes available, both free and paid, and they are available from a variety of sources, including the official WordPress repository, independent developers, and large theme shops. Users can choose a theme that best suits their needs and requirements, whether it\'s a simple blog or a complex e-commerce website.</p>\r\n<p><span style=\"color: #e03e2d;\">These are some of the best WordPress themes for fitness websites and blogs. They are all highly customizable, responsive, and optimized for SEO, making them a great choice for fitness professionals and enthusiasts looking to create a professional and effective online presence.</span></p>\r\n<ol>\r\n<li>Divi</li>\r\n<li>Astra</li>\r\n<li>X Theme</li>\r\n<li>Avada</li>\r\n<li>Flatsome</li>\r\n<li>Enfold</li>\r\n<li>Salient</li>\r\n<li>Schema Lite</li>\r\n</ol>\r\n<h3>Explain in detail-</h3>\r\n<ol>\r\n<li>\r\n<p><strong>Divi:</strong> Divi is a highly customizable, multipurpose theme that is perfect for fitness websites and blogs. It comes with a powerful drag-and-drop page builder, allowing users to easily create custom layouts for their pages and posts. Divi also includes a wide range of pre-designed templates and modules, making it easy to create a professional and engaging website.</p>\r\n</li>\r\n<li>\r\n<p><strong>Astra: </strong>Astra is a lightweight and fast theme that is perfect for fitness websites and blogs. It is built with performance in mind and is fully optimized for SEO. Astra also includes a wide range of customization options, allowing users to easily create a unique and personalized website.</p>\r\n</li>\r\n<li>\r\n<p><strong>X Theme:</strong> X Theme is a powerful and versatile theme that is perfect for fitness websites and blogs. It includes a wide range of pre-designed templates and modules, making it easy to create a professional and engaging website. X Theme also includes a powerful drag-and-drop page builder, allowing users to easily create custom layouts for their pages and posts.</p>\r\n</li>\r\n<li>\r\n<p><strong>Avada:</strong> Avada is a popular and versatile theme that is perfect for fitness websites and blogs. It includes a wide range of pre-designed templates and modules, making it easy to create a professional and engaging website. Avada also includes a powerful drag-and-drop page builder, allowing users to easily create custom layouts for their pages and posts.</p>\r\n</li>\r\n<li>\r\n<p><strong>Flatsome:</strong> Flatsome is a modern and elegant theme that is perfect for fitness websites and blogs. It includes a wide range of pre-designed templates and modules, making it easy to create a professional and engaging website. Flatsome also includes a powerful drag-and-drop page builder, allowing users to easily create custom layouts for their pages and posts.</p>\r\n</li>\r\n<li>\r\n<p><strong>Enfold:</strong> Enfold is a versatile and user-friendly theme that is perfect for fitness websites and blogs. It includes a wide range of pre-designed templates and modules, making it easy to create a professional and engaging website. Enfold also includes a powerful drag-and-drop page builder, allowing users to easily create custom layouts for their pages and posts.</p>\r\n</li>\r\n<li>\r\n<p><strong>Salient:</strong> Salient is a visually stunning theme that is perfect for fitness websites and blogs. It includes a wide range of pre-designed templates and modules, making it easy to create a professional and engaging website. Salient also includes a powerful drag-and-drop page builder, allowing users to easily create custom layouts for their pages and posts.</p>\r\n</li>\r\n<li>\r\n<p><strong>Schema Lite:</strong> Schema Lite is a fast and lightweight theme that is perfect for fitness websites and blogs. It is fully optimized for SEO and is built with performance in mind. Schema Lite also includes a wide range of customization options, allowing users to easily create a unique and personalized website.</p>\r\n</li>\r\n</ol>\r\n<p>All these themes are popular, regularly updated, and well-documented. They come with a lot of customization options and pre-designed templates that make it easy for creating a professional and engaging website. It\'s important to review demos and read user reviews to find the one that best suits your needs.</p>', '2023-01-18 16:18:50.441296', 5, '0', 'RealTechWord', 'WordPress themes are designed to work with the WordPress platform, which is a content management system (CMS) that allows users to easily create and manage websites. Themes can be easily installed'),
(19, 'What is CTR (Click-Through Rate) | What is CTR in Website', 'blogs/posts/ctr.JPG', 'what-is-ctr-click-through-rate-what-is-ctr-in-webs', '<p>CTR stands for Click-Through Rate. It is a metric used to measure the effectiveness of a website or an online ad in terms of how often users click on it. CTR is typically expressed as a percentage and is calculated by dividing the number of clicks by the number of impressions (or views).</p>\r\n<p>CTR is an important metric for website owners and online advertisers as it helps to determine the effectiveness of their website or ad in terms of generating clicks and driving traffic. A high CTR indicates that users are engaging with the website or ad and are more likely to take a desired action such as making a purchase or signing up for a newsletter. A low CTR, on the other hand, may indicate that users are not finding the website or ad relevant or engaging and may require optimization or changes to the ad or website.</p>\r\n<p>In website, CTR is commonly used to measure the performance of different elements on a website such as the effectiveness of ad placements, headlines, and calls-to-action. By analyzing CTR data, website owners can make informed decisions about how to optimize their website to improve user engagement and drive more conversions.</p>\r\n<p>CTR is a key metric that helps website owners and online advertisers understand the performance of their website or ad campaign. It is widely used to measure the effectiveness of different elements on a website, such as ad placements, headlines, and calls-to-action. Understanding CTR can help website owners make informed decisions about how to optimize their website to improve user engagement and drive more conversions.</p>\r\n<p>To calculate CTR, you divide the number of clicks by the number of impressions. For example, if your website or online ad receives 100 clicks and 1,000 impressions, the CTR would be 10%. This means that out of the 1,000 people who viewed the ad or website, 10% of them clicked on it.</p>\r\n<p>A high CTR is generally considered to be a good indicator of the effectiveness of your website or ad. A CTR of above 2% is considered good for display ads, but the average varies depending on the industry and type of website. A higher CTR indicates that users are finding your website or ad relevant and engaging, and are more likely to take a desired action such as making a purchase or signing up for a newsletter.</p>\r\n<p>On the other hand, a low CTR may indicate that users are not finding your website or ad relevant or engaging. This could be due to a number of reasons, such as poor ad placement, a weak headline or call-to-action, or irrelevant content. In this case, website owners may need to optimize their website or ad to improve user engagement and increase the CTR.</p>\r\n<p>It\'s important to keep in mind that CTR is just one metric, and it\'s not the only metric to consider when evaluating the performance of a website or ad. Other important metrics to consider include conversion rate, bounce rate, and time on site. By analyzing CTR in conjunction with other metrics, website owners can gain a more complete understanding of user behavior and make data-driven decisions about how to optimize their website for better performance.</p>', '2023-01-18 16:32:14.528127', 5, '0', 'RealTechWord', 'CTR stands for Click-Through Rate. It is a metric used to measure the effectiveness of a website or an online ad in terms of how often users click on it. CTR is typically expressed as a percentage and is calculated by dividing the number of clicks by the'),
(20, 'What is PPC Marketing? Learn the Basics of Pay-Per-Click (PPC) Marketing.', 'blogs/posts/ppc-min.jpg', 'what-is-ppc-marketing-learn-the-basics-of-pay-per-', '<p>PPC (Pay-Per-Click) marketing is a form of online advertising where businesses pay a fee each time one of their ads is clicked. PPC allows businesses to reach their target audience and drive traffic to their website through targeted advertising.</p>\r\n<p>PPC advertising typically works by displaying ads on search engines, social media platforms, and other websites that are part of the advertiser\'s chosen network. These ads are usually text-based and are displayed alongside organic search results or on designated ad spaces on a website. When a user clicks on one of these ads, they are directed to the advertiser\'s website, and the advertiser is charged a fee, hence the name pay-per-click.</p>\r\n<p>One of the most popular platforms for PPC advertising is Google Ads (formerly Google AdWords). Businesses can create campaigns, set budgets, and target specific keywords, demographics, and geographic locations. Advertisers bid on keywords that they believe their target audience is searching for, and their ads will be displayed on the search engine results page (SERP) when those keywords are searched for.</p>\r\n<p>PPC advertising can also be done on social media platforms such as Facebook, Instagram, Twitter, and LinkedIn. Advertisers can target specific demographics, interests, behaviors, and locations to reach their desired audience.</p>\r\n<p>PPC advertising can be an effective way to drive targeted traffic to a website, increase brand awareness, and generate leads and sales. However, it\'s important to note that PPC advertising can be competitive and expensive, especially for popular keywords and industries. Therefore, it\'s essential for businesses to have a clear understanding of their target audience and to continually optimize their campaigns for better performance.</p>\r\n<p>PPC management is also a complex task that requires a good understanding of the platform, the audience, and the business goals. It\'s highly recommended to work with a PPC expert or agency to get the best results.</p>', '2023-01-18 16:50:52.210277', 5, '0', 'RealTechWord', 'PPC stands for pay-per-click, and it is a form of online advertising in which the advertiser pays a fee each time one of their ads is clicked. PPC marketing is a way for businesses to reach their target audience and drive traffic to their website through'),
(21, 'India\'s population in detail.', 'blogs/posts/India-Population-reuters-photo-min.jpg', 'indias-population-in-detail', '<p>India is the second most populous country in the world, with a population of over 1.39 billion people as of 2021. The population of India has been growing rapidly in recent decades, and it is projected to continue growing in the future.</p>\r\n<p>The population of India is diverse, with a wide range of ethnic, linguistic, and religious groups. The majority of the population is Hindu, but there are also significant populations of Muslims, Christians, Sikhs, and Buddhists. The official language of India is Hindi, but there are also many regional languages spoken throughout the country.</p>\r\n<p>India is divided into 29 states and 7 union territories, and the population is distributed unevenly throughout the country. The most populous state is Uttar Pradesh, with over 200 million people, followed by Maharashtra and Bihar. The most densely populated state is West Bengal, and the least densely populated state is Arunachal Pradesh.</p>\r\n<p>The population of India is also unevenly distributed in terms of age and gender. India has a relatively young population, with a median age of around 28 years. The population is also skewed towards males, with around 100 males for every 96 females.</p>\r\n<p>India is also facing population-related challenges such as overpopulation, unemployment, and poverty. The government has implemented family planning programs and policies in an attempt to slow down population growth, but they have not been very successful. The government is also trying to address the issues of unemployment and poverty through economic development and job creation programs.</p>\r\n<p>India\'s population is projected to continue growing in the future and is expected to reach 1.7 billion by 2050. This is likely to put further strain on the country\'s resources, infrastructure, and environment, and it will be important for the government to implement effective policies to manage this growth.</p>', '2023-01-18 17:01:09.300521', 5, '1', 'RealTechWord', 'India is the second most populous country in the world, with a population of over 1.39 billion people as of 2021. The population of India has been growing rapidly in recent decades, and it is projected to continue growing in the future.');

-- --------------------------------------------------------

--
-- Table structure for table `blogs_category`
--

CREATE TABLE `blogs_category` (
  `id` bigint(20) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `on_date` datetime(6) NOT NULL,
  `slug` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs_category`
--

INSERT INTO `blogs_category` (`id`, `category_name`, `on_date`, `slug`) VALUES
(1, 'Technical', '2023-01-15 13:01:49.788008', 'technical'),
(2, 'AI', '2023-01-15 16:00:02.007584', 'ai'),
(3, 'Python', '2023-01-15 16:39:08.306181', 'python'),
(4, 'SEO', '2023-01-17 23:22:41.591091', 'seo'),
(5, 'Uncategory', '2023-01-17 23:30:44.291440', 'uncategory'),
(6, 'Crypto', '2023-01-18 09:11:19.364324', 'crypto');

-- --------------------------------------------------------

--
-- Table structure for table `blogs_comments`
--

CREATE TABLE `blogs_comments` (
  `id` bigint(20) NOT NULL,
  `comment` longtext NOT NULL,
  `on_date` datetime(6) NOT NULL,
  `post_id_id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs_reply`
--

CREATE TABLE `blogs_reply` (
  `id` bigint(20) NOT NULL,
  `comment_reply` longtext NOT NULL,
  `on_date` datetime(6) NOT NULL,
  `comment_id_id` bigint(20) NOT NULL,
  `post_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-01-15 13:01:49.788008', '1', 'Python', 1, '[{\"added\": {}}]', 10, 1),
(2, '2023-01-15 13:02:15.859488', '1', 'Technical', 2, '[{\"changed\": {\"fields\": [\"Category name\"]}}]', 10, 1),
(3, '2023-01-15 13:07:30.110397', '1', 'What is SEO (Search Engine Optimization) in digital marketing', 1, '[{\"added\": {}}]', 11, 1),
(4, '2023-01-15 13:14:00.137624', '2', 'What is static web development (website)?', 1, '[{\"added\": {}}]', 11, 1),
(5, '2023-01-15 13:15:19.878524', '1', 'What is SEO (Search Engine Optimization) in digital marketing', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 11, 1),
(6, '2023-01-15 13:31:49.659359', '3', 'What is Dynamic web development (website)?', 1, '[{\"added\": {}}]', 11, 1),
(7, '2023-01-15 13:32:07.987531', '2', 'What is static web development (website)?', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 11, 1),
(8, '2023-01-15 13:49:31.552351', '3', 'What is Dynamic web development (website)?', 2, '[]', 11, 1),
(9, '2023-01-15 14:13:32.938821', '3', 'What is Dynamic web development (website)?', 2, '[{\"changed\": {\"fields\": [\"Sub title\"]}}]', 11, 1),
(10, '2023-01-15 14:13:48.470298', '2', 'What is static web development (website)?', 2, '[{\"changed\": {\"fields\": [\"Sub title\"]}}]', 11, 1),
(11, '2023-01-15 14:13:59.203346', '1', 'What is SEO (Search Engine Optimization) in digital marketing', 2, '[{\"changed\": {\"fields\": [\"Sub title\"]}}]', 11, 1),
(12, '2023-01-15 14:23:29.545679', '3', 'What is Dynamic web development (website)?', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(13, '2023-01-15 14:23:37.442553', '2', 'What is static web development (website)?', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(14, '2023-01-15 14:29:58.583223', '1', 'What is SEO (Search Engine Optimization) in digital marketing', 2, '[{\"changed\": {\"fields\": [\"Sub title\"]}}]', 11, 1),
(15, '2023-01-15 14:53:12.834029', '4', 'What is AI (Artificial Intelligence)', 1, '[{\"added\": {}}]', 11, 1),
(16, '2023-01-15 14:54:23.846743', '4', 'What is AI (Artificial Intelligence)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 11, 1),
(17, '2023-01-15 14:56:40.248984', '4', 'What is AI (Artificial Intelligence)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(18, '2023-01-15 15:02:34.299792', '2', 'ehfwej', 3, '', 12, 1),
(19, '2023-01-15 15:02:34.304784', '1', 'jkhkjk', 3, '', 12, 1),
(20, '2023-01-15 16:00:02.007584', '2', 'AI', 1, '[{\"added\": {}}]', 10, 1),
(21, '2023-01-15 16:38:02.942286', '4', 'What is AI (Artificial Intelligence)', 2, '[{\"changed\": {\"fields\": [\"Category id\"]}}]', 11, 1),
(22, '2023-01-15 16:39:08.306181', '3', 'Python', 1, '[{\"added\": {}}]', 10, 1),
(23, '2023-01-15 16:48:46.648332', '5', 'What is python in brief? Advantage and Disadvantage', 1, '[{\"added\": {}}]', 11, 1),
(24, '2023-01-15 16:49:19.311953', '5', 'What is python in brief. Advantage and Disadvantage?', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 11, 1),
(25, '2023-01-15 16:49:54.410751', '5', 'What is python in brief. Advantage and Disadvantage?', 2, '[{\"changed\": {\"fields\": [\"Sub title\"]}}]', 11, 1),
(26, '2023-01-15 16:50:13.337412', '5', 'What is python in brief. Advantage and Disadvantage?', 2, '[{\"changed\": {\"fields\": [\"Sub title\"]}}]', 11, 1),
(27, '2023-01-15 20:58:21.243953', '5', 'What is python in brief. Advantage and Disadvantage?', 2, '[]', 11, 1),
(28, '2023-01-15 21:07:48.065234', '5', 'What is python in brief. Advantage and Disadvantage?', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 11, 1),
(29, '2023-01-15 21:09:26.621462', '5', 'What is python in brief. Advantage and Disadvantage?', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 11, 1),
(30, '2023-01-15 21:15:01.381277', '5', 'What is python in brief. Advantage and Disadvantage?', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 11, 1),
(31, '2023-01-15 21:25:07.092121', '5', 'What is python in brief. Advantage and Disadvantage?', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 11, 1),
(32, '2023-01-15 21:27:42.486962', '5', 'What is python in brief. Advantage and Disadvantage?', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 11, 1),
(33, '2023-01-15 21:30:31.927587', '5', 'What is python in brief. Advantage and Disadvantage?', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 11, 1),
(34, '2023-01-15 21:31:22.482566', '5', 'What is python in brief. Advantage and Disadvantage?', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 11, 1),
(35, '2023-01-15 21:32:59.761121', '5', 'What is python in brief. Advantage and Disadvantage?', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 11, 1),
(36, '2023-01-15 21:33:42.130671', '5', 'What is python in brief. Advantage and Disadvantage?', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 11, 1),
(37, '2023-01-15 21:34:37.082493', '5', 'What is python in brief. Advantage and Disadvantage?', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 11, 1),
(38, '2023-01-15 21:34:44.534315', '5', 'What is python in brief. Advantage and Disadvantage?', 3, '', 11, 1),
(39, '2023-01-15 21:37:26.910621', '6', 'What is python in brief. Advantage and Disadvantage?', 1, '[{\"added\": {}}]', 11, 1),
(40, '2023-01-15 21:38:29.731813', '6', 'What is python in brief. Advantage and Disadvantage?', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 11, 1),
(41, '2023-01-15 21:42:48.535529', '4', 'What is AI (Artificial Intelligence)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 11, 1),
(42, '2023-01-15 21:43:19.290463', '3', 'What is Dynamic web development (website)?', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 11, 1),
(43, '2023-01-15 21:43:27.903669', '2', 'What is static web development (website)?', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 11, 1),
(44, '2023-01-15 21:43:37.839183', '1', 'What is SEO (Search Engine Optimization) in digital marketing', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 11, 1),
(45, '2023-01-15 21:49:15.425159', '6', 'What is python in brief. Advantage and Disadvantage?', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 11, 1),
(46, '2023-01-15 21:50:46.287018', '6', 'What is python in brief. Advantage and Disadvantage?', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 11, 1),
(47, '2023-01-15 21:51:08.618435', '6', 'What is python in brief. Advantage and Disadvantage?', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 11, 1),
(48, '2023-01-15 21:53:09.548548', '6', 'What is python in brief. Advantage and Disadvantage?', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 11, 1),
(49, '2023-01-16 19:37:09.321559', '7', 'Top 8 Best WordPress Themes For Fitness Website And Blog', 1, '[{\"added\": {}}]', 11, 1),
(50, '2023-01-16 19:37:45.925545', '7', 'Top 8 Best WordPress Themes For Fitness Website And Blog', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(51, '2023-01-17 11:11:11.922269', '4', 'fgeu', 3, '', 14, 1),
(52, '2023-01-17 11:11:11.927224', '3', 'gfjgfwj', 3, '', 14, 1),
(53, '2023-01-17 11:11:11.930216', '2', 'kjghkrj', 3, '', 14, 1),
(54, '2023-01-17 11:11:11.932210', '1', 'kjghkrj', 3, '', 14, 1),
(55, '2023-01-17 13:53:40.419908', '1', 'realtechworld', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 4, 1),
(56, '2023-01-17 23:22:41.591966', '4', 'SEO', 1, '[{\"added\": {}}]', 10, 1),
(57, '2023-01-17 23:23:05.056968', '1', 'What is SEO (Search Engine Optimization) in digital marketing', 2, '[{\"changed\": {\"fields\": [\"Category id\"]}}]', 11, 1),
(58, '2023-01-17 23:26:42.975681', '8', 'Maximizing Your Online Presence: The Importance of SEO for Small Businesses', 1, '[{\"added\": {}}]', 11, 1),
(59, '2023-01-17 23:30:44.292178', '5', 'Uncategory', 1, '[{\"added\": {}}]', 10, 1),
(60, '2023-01-17 23:32:50.230173', '9', 'Finding Inner Peace: The Benefits of Yoga for Stress Relief', 1, '[{\"added\": {}}]', 11, 1),
(61, '2023-01-17 23:35:08.883828', '9', 'Finding Inner Peace: The Benefits of Yoga for Stress Relief', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(62, '2023-01-17 23:38:58.905275', '10', 'The Benefits of Eating Organic Foods', 1, '[{\"added\": {}}]', 11, 1),
(63, '2023-01-17 23:43:40.513619', '11', 'Driving into the Future: The Rise of Electric Cars', 1, '[{\"added\": {}}]', 11, 1),
(64, '2023-01-17 23:48:16.081627', '12', 'The Impact of Social Media on Mental Health', 1, '[{\"added\": {}}]', 11, 1),
(65, '2023-01-18 09:00:11.346374', '13', 'What is ChatGPT?', 1, '[{\"added\": {}}]', 11, 1),
(66, '2023-01-18 09:03:25.254114', '13', 'What is ChatGPT?', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 11, 1),
(67, '2023-01-18 09:11:19.365653', '6', 'Crypto', 1, '[{\"added\": {}}]', 10, 1),
(68, '2023-01-18 09:18:01.297376', '14', 'What is fiat money?', 1, '[{\"added\": {}}]', 11, 1),
(69, '2023-01-18 09:25:38.240832', '15', 'What is Blockchain? Advantages & Disadvantages of Blockchain.', 1, '[{\"added\": {}}]', 11, 1),
(70, '2023-01-18 09:33:55.405119', '16', 'How to Store Bitcoin Offline in Cold Storage?', 1, '[{\"added\": {}}]', 11, 1),
(71, '2023-01-18 09:52:48.080784', '17', 'What is crypto currency in detail.', 1, '[{\"added\": {}}]', 11, 1),
(72, '2023-01-18 09:53:20.230851', '16', 'How to Store Bitcoin Offline in Cold Storage?', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 11, 1),
(73, '2023-01-18 15:13:09.113109', '7', 'Top 8 Best WordPress Themes For Fitness Website And Blog', 3, '', 11, 1),
(74, '2023-01-18 16:18:50.448960', '18', 'Top 8 Best WordPress Themes For Fitness Website And Blog', 1, '[{\"added\": {}}]', 11, 1),
(75, '2023-01-18 16:29:41.553691', '18', 'Top 8 Best WordPress Themes For Fitness Website And Blog', 2, '[]', 11, 1),
(76, '2023-01-18 16:32:14.529318', '19', 'What is CTR (Click-Through Rate) | What is CTR in Website', 1, '[{\"added\": {}}]', 11, 1),
(77, '2023-01-18 16:50:52.211433', '20', 'What is PPC Marketing? Learn the Basics of Pay-Per-Click (PPC) Marketing.', 1, '[{\"added\": {}}]', 11, 1),
(78, '2023-01-18 17:01:09.311057', '21', 'India\'s population in detail.', 1, '[{\"added\": {}}]', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'apps', 'addimagewatermark'),
(9, 'apps', 'color'),
(14, 'apps', 'contactus'),
(8, 'apps', 'qrcode'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(11, 'blogs', 'blogpost'),
(10, 'blogs', 'category'),
(12, 'blogs', 'comments'),
(13, 'blogs', 'reply'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-01-15 12:51:25.035118'),
(2, 'auth', '0001_initial', '2023-01-15 12:51:25.581867'),
(3, 'admin', '0001_initial', '2023-01-15 12:51:25.691221'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-01-15 12:51:25.706842'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-01-15 12:51:25.722459'),
(6, 'apps', '0001_initial', '2023-01-15 12:51:25.753729'),
(7, 'apps', '0002_color', '2023-01-15 12:51:25.769322'),
(8, 'apps', '0003_color_color_alter_color_color_name', '2023-01-15 12:51:25.847429'),
(9, 'apps', '0004_qrcode_delete_color', '2023-01-15 12:51:25.863050'),
(10, 'apps', '0005_color_alter_qrcode_text', '2023-01-15 12:51:25.911154'),
(11, 'apps', '0006_remove_addimagewatermark_image_and_more', '2023-01-15 12:51:25.936798'),
(12, 'contenttypes', '0002_remove_content_type_name', '2023-01-15 12:51:26.046147'),
(13, 'auth', '0002_alter_permission_name_max_length', '2023-01-15 12:51:26.117093'),
(14, 'auth', '0003_alter_user_email_max_length', '2023-01-15 12:51:26.132718'),
(15, 'auth', '0004_alter_user_username_opts', '2023-01-15 12:51:26.148370'),
(16, 'auth', '0005_alter_user_last_login_null', '2023-01-15 12:51:26.199531'),
(17, 'auth', '0006_require_contenttypes_0002', '2023-01-15 12:51:26.199531'),
(18, 'auth', '0007_alter_validators_add_error_messages', '2023-01-15 12:51:26.215151'),
(19, 'auth', '0008_alter_user_username_max_length', '2023-01-15 12:51:26.230810'),
(20, 'auth', '0009_alter_user_last_name_max_length', '2023-01-15 12:51:26.262014'),
(21, 'auth', '0010_alter_group_name_max_length', '2023-01-15 12:51:26.277668'),
(22, 'auth', '0011_update_proxy_permissions', '2023-01-15 12:51:26.293257'),
(23, 'auth', '0012_alter_user_first_name_max_length', '2023-01-15 12:51:26.308881'),
(24, 'blogs', '0001_initial', '2023-01-15 12:51:26.418228'),
(25, 'blogs', '0002_blogpost_views', '2023-01-15 12:51:26.433851'),
(26, 'blogs', '0003_alter_blogpost_slug_alter_blogpost_views', '2023-01-15 12:51:26.449472'),
(27, 'blogs', '0004_blogpost_post_by', '2023-01-15 12:51:26.465174'),
(28, 'blogs', '0005_category_slug', '2023-01-15 12:51:26.511957'),
(29, 'blogs', '0006_alter_blogpost_views_comments', '2023-01-15 12:51:26.590062'),
(30, 'blogs', '0007_comments_name_alter_comments_post_id', '2023-01-15 12:51:26.605715'),
(31, 'blogs', '0008_reply', '2023-01-15 12:51:26.730654'),
(32, 'blogs', '0009_alter_comments_name', '2023-01-15 12:51:26.746279'),
(33, 'blogs', '0010_alter_comments_name', '2023-01-15 12:51:26.777524'),
(34, 'blogs', '0011_alter_comments_name', '2023-01-15 12:51:26.793143'),
(35, 'blogs', '0012_comments_email', '2023-01-15 12:51:26.808760'),
(36, 'sessions', '0001_initial', '2023-01-15 12:51:26.855627'),
(37, 'blogs', '0013_blogpost_sub_title_alter_blogpost_description', '2023-01-15 14:13:13.665360'),
(38, 'apps', '0007_contactus', '2023-01-17 11:02:55.311666');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('6670jnm1iiwdkl8gvqi1pgcjr8ef0b1h', '.eJxVjMEOwiAQRP-FsyGwmxbw6N1vIAsLUjWQlPbU-O-2SQ86x3lvZhOe1qX4tafZTyyuQovLbxcovlI9AD-pPpqMrS7zFOShyJN2eW-c3rfT_Tso1Mu-dpQdDskmRBUJyHBgl62xYCMgIuwZtUHIEI1jrRQrskMAJGc0juLzBdPCNts:1pH5MQ:i-ZxzkPFTEDeuAI5rauCdAuPCefwI_3UaGFdLuO65V4', '2023-01-29 15:55:54.541799'),
('su66pql5n1l409iab2e5qm4nveocpfed', '.eJxVjMEOwiAQRP-FsyGwmxbw6N1vIAsLUjWQlPbU-O-2SQ86x3lvZhOe1qX4tafZTyyuQovLbxcovlI9AD-pPpqMrS7zFOShyJN2eW-c3rfT_Tso1Mu-dpQdDskmRBUJyHBgl62xYCMgIuwZtUHIEI1jrRQrskMAJGc0juLzBdPCNts:1pHjoo:UozeacW4i-O4kxHRR6QghWSf6MRHV0p2JmFq4h_uEiI', '2023-01-31 11:07:54.629172'),
('wei7d3xlpxbc5f898x4rgwrmnt57o2q1', '.eJxVjMEOwiAQRP-FsyGwmxbw6N1vIAsLUjWQlPbU-O-2SQ86x3lvZhOe1qX4tafZTyyuQovLbxcovlI9AD-pPpqMrS7zFOShyJN2eW-c3rfT_Tso1Mu-dpQdDskmRBUJyHBgl62xYCMgIuwZtUHIEI1jrRQrskMAJGc0juLzBdPCNts:1pH2dO:T3roLcPF1KPi41EnmIG4aOjtbNRBK3UGF3qeM5Uu9Mc', '2023-01-29 13:01:14.914232');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apps_addimagewatermark`
--
ALTER TABLE `apps_addimagewatermark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apps_color`
--
ALTER TABLE `apps_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apps_contactus`
--
ALTER TABLE `apps_contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apps_qrcode`
--
ALTER TABLE `apps_qrcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `blogs_blogpost`
--
ALTER TABLE `blogs_blogpost`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `blogs_blogpost_category_id_id_7519dc2a_fk_blogs_category_id` (`category_id_id`);

--
-- Indexes for table `blogs_category`
--
ALTER TABLE `blogs_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `blogs_comments`
--
ALTER TABLE `blogs_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_comments_post_id_id_5e5ba7a1_fk_blogs_blogpost_id` (`post_id_id`);

--
-- Indexes for table `blogs_reply`
--
ALTER TABLE `blogs_reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_reply_comment_id_id_1f3c90b8_fk_blogs_comments_id` (`comment_id_id`),
  ADD KEY `blogs_reply_post_id_id_51667de0_fk_blogs_blogpost_id` (`post_id_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apps_addimagewatermark`
--
ALTER TABLE `apps_addimagewatermark`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apps_color`
--
ALTER TABLE `apps_color`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apps_contactus`
--
ALTER TABLE `apps_contactus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `apps_qrcode`
--
ALTER TABLE `apps_qrcode`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs_blogpost`
--
ALTER TABLE `blogs_blogpost`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `blogs_category`
--
ALTER TABLE `blogs_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blogs_comments`
--
ALTER TABLE `blogs_comments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blogs_reply`
--
ALTER TABLE `blogs_reply`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `blogs_blogpost`
--
ALTER TABLE `blogs_blogpost`
  ADD CONSTRAINT `blogs_blogpost_category_id_id_7519dc2a_fk_blogs_category_id` FOREIGN KEY (`category_id_id`) REFERENCES `blogs_category` (`id`);

--
-- Constraints for table `blogs_comments`
--
ALTER TABLE `blogs_comments`
  ADD CONSTRAINT `blogs_comments_post_id_id_5e5ba7a1_fk_blogs_blogpost_id` FOREIGN KEY (`post_id_id`) REFERENCES `blogs_blogpost` (`id`);

--
-- Constraints for table `blogs_reply`
--
ALTER TABLE `blogs_reply`
  ADD CONSTRAINT `blogs_reply_comment_id_id_1f3c90b8_fk_blogs_comments_id` FOREIGN KEY (`comment_id_id`) REFERENCES `blogs_comments` (`id`),
  ADD CONSTRAINT `blogs_reply_post_id_id_51667de0_fk_blogs_blogpost_id` FOREIGN KEY (`post_id_id`) REFERENCES `blogs_blogpost` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
