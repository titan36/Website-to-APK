-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 14, 2024 at 11:45 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web2apk`
--

-- --------------------------------------------------------

--
-- Table structure for table `AboutUs_about`
--

CREATE TABLE `AboutUs_about` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `website` varchar(250) NOT NULL,
  `designer` varchar(50) NOT NULL,
  `developer` varchar(50) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `background_img` varchar(100) DEFAULT NULL,
  `screenshoot` varchar(100) DEFAULT NULL,
  `address1` varchar(250) NOT NULL,
  `address2` varchar(250) NOT NULL,
  `address3` varchar(250) NOT NULL,
  `address4` varchar(250) NOT NULL,
  `address5` varchar(250) NOT NULL,
  `email1` varchar(100) NOT NULL,
  `email2` varchar(100) NOT NULL,
  `email3` varchar(100) NOT NULL,
  `mobile1` varchar(13) NOT NULL,
  `mobile2` varchar(13) NOT NULL,
  `mobile3` varchar(13) NOT NULL,
  `bio` longtext NOT NULL,
  `vision` longtext NOT NULL,
  `mision` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `AboutUs_about`
--

INSERT INTO `AboutUs_about` (`id`, `title`, `website`, `designer`, `developer`, `logo`, `background_img`, `screenshoot`, `address1`, `address2`, `address3`, `address4`, `address5`, `email1`, `email2`, `email3`, `mobile1`, `mobile2`, `mobile3`, `bio`, `vision`, `mision`) VALUES
(1, 'Your Title', 'http://yourwebsite.com', 'Designer Name', 'Developer Name', 'aboutus/banner_PY2IIuG.png', 'aboutus/background_pqzhOxj.png', 'aboutus/Screenshot_at_2020-06-15_23-43-50_2ycxh5E.png', 'Address Line 1', 'Address Line 2', '', '', '', 'email1@example.com', '', '', '1234567890', '', '', 'Your Bio', 'Your Vision', 'Your Mission');

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
  `id` int(11) NOT NULL,
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
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can view permission', 1, 'view_permission'),
(5, 'Can add group', 2, 'add_group'),
(6, 'Can change group', 2, 'change_group'),
(7, 'Can delete group', 2, 'delete_group'),
(8, 'Can view group', 2, 'view_group'),
(9, 'Can add user', 3, 'add_user'),
(10, 'Can change user', 3, 'change_user'),
(11, 'Can delete user', 3, 'delete_user'),
(12, 'Can view user', 3, 'view_user'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add profile pic', 5, 'add_profilepic'),
(18, 'Can change profile pic', 5, 'change_profilepic'),
(19, 'Can delete profile pic', 5, 'delete_profilepic'),
(20, 'Can view profile pic', 5, 'view_profilepic'),
(21, 'Can add about', 6, 'add_about'),
(22, 'Can change about', 6, 'change_about'),
(23, 'Can delete about', 6, 'delete_about'),
(24, 'Can view about', 6, 'view_about'),
(25, 'Can add log entry', 7, 'add_logentry'),
(26, 'Can change log entry', 7, 'change_logentry'),
(27, 'Can delete log entry', 7, 'delete_logentry'),
(28, 'Can view log entry', 7, 'view_logentry'),
(29, 'Can add session', 8, 'add_session'),
(30, 'Can change session', 8, 'change_session'),
(31, 'Can delete session', 8, 'delete_session'),
(32, 'Can view session', 8, 'view_session'),
(33, 'Can add chat', 9, 'add_chat'),
(34, 'Can change chat', 9, 'change_chat'),
(35, 'Can delete chat', 9, 'delete_chat'),
(36, 'Can view chat', 9, 'view_chat'),
(37, 'Can add apk info', 10, 'add_apkinfo'),
(38, 'Can change apk info', 10, 'change_apkinfo'),
(39, 'Can delete apk info', 10, 'delete_apkinfo'),
(40, 'Can view apk info', 10, 'view_apkinfo'),
(41, 'Can add contact us', 11, 'add_contactus'),
(42, 'Can change contact us', 11, 'change_contactus'),
(43, 'Can delete contact us', 11, 'delete_contactus'),
(44, 'Can view contact us', 11, 'view_contactus');

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
  `first_name` varchar(30) NOT NULL,
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
(1, 'pbkdf2_sha256$150000$lyjZtjkikN1S$Yt2ZMKc3hzyMn46IEF0x1hug/wW6xV9GOwgSmDIaZBA=', '2024-03-14 22:40:43.105522', 1, 'wing', '', '', 'wing@gmail.com', 1, 1, '2024-03-14 22:24:37.374099');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Blog_contactus`
--

CREATE TABLE `Blog_contactus` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `message` longtext NOT NULL,
  `date` datetime(6) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Createapk_apkinfo`
--

CREATE TABLE `Createapk_apkinfo` (
  `id` int(11) NOT NULL,
  `app_name` varchar(50) NOT NULL,
  `package_name` varchar(100) NOT NULL,
  `title_activity_home` varchar(50) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `splash_screen` varchar(100) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `website_url` varchar(500) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Dashboard_chat`
--

CREATE TABLE `Dashboard_chat` (
  `id` int(11) NOT NULL,
  `sender` varchar(250) NOT NULL,
  `receiver` varchar(250) NOT NULL,
  `message` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `time` datetime(6) NOT NULL
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
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-03-14 22:42:11.019438', '1', 'Your Title', 2, '[{\"changed\": {\"fields\": [\"background_img\", \"screenshoot\"]}}]', 6, 1),
(2, '2024-03-14 22:44:29.206557', '1', 'Your Title', 2, '[{\"changed\": {\"fields\": [\"logo\"]}}]', 6, 1);

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
(6, 'AboutUs', 'about'),
(7, 'admin', 'logentry'),
(2, 'auth', 'group'),
(1, 'auth', 'permission'),
(3, 'auth', 'user'),
(11, 'Blog', 'contactus'),
(4, 'contenttypes', 'contenttype'),
(10, 'Createapk', 'apkinfo'),
(9, 'Dashboard', 'chat'),
(8, 'sessions', 'session'),
(5, 'Users', 'profilepic');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-03-14 22:16:04.774577'),
(2, 'auth', '0001_initial', '2024-03-14 22:16:05.065431'),
(3, 'Users', '0001_initial', '2024-03-14 22:16:06.373932'),
(4, 'AboutUs', '0001_initial', '2024-03-14 22:17:01.826051'),
(5, 'Blog', '0001_initial', '2024-03-14 22:17:05.016447'),
(6, 'Blog', '0002_contactus_date', '2024-03-14 22:17:05.052185'),
(7, 'Blog', '0003_auto_20200623_1233', '2024-03-14 22:17:05.100712'),
(8, 'Createapk', '0001_initial', '2024-03-14 22:17:05.181201'),
(9, 'Createapk', '0002_apkinfo_status', '2024-03-14 22:17:05.372217'),
(10, 'Createapk', '0003_auto_20200608_0110', '2024-03-14 22:17:05.438680'),
(11, 'Createapk', '0004_auto_20200615_0450', '2024-03-14 22:17:05.595221'),
(12, 'Createapk', '0005_auto_20240314_2213', '2024-03-14 22:17:05.756992'),
(13, 'Dashboard', '0001_initial', '2024-03-14 22:17:05.812967'),
(14, 'Dashboard', '0002_auto_20200620_1547', '2024-03-14 22:17:05.843744'),
(15, 'admin', '0001_initial', '2024-03-14 22:17:05.922727'),
(16, 'admin', '0002_logentry_remove_auto_add', '2024-03-14 22:17:06.271352'),
(17, 'admin', '0003_logentry_add_action_flag_choices', '2024-03-14 22:17:06.305528'),
(18, 'contenttypes', '0002_remove_content_type_name', '2024-03-14 22:17:06.466715'),
(19, 'auth', '0002_alter_permission_name_max_length', '2024-03-14 22:17:06.614307'),
(20, 'auth', '0003_alter_user_email_max_length', '2024-03-14 22:17:06.644132'),
(21, 'auth', '0004_alter_user_username_opts', '2024-03-14 22:17:06.675663'),
(22, 'auth', '0005_alter_user_last_login_null', '2024-03-14 22:17:06.793864'),
(23, 'auth', '0006_require_contenttypes_0002', '2024-03-14 22:17:06.802444'),
(24, 'auth', '0007_alter_validators_add_error_messages', '2024-03-14 22:17:06.831966'),
(25, 'auth', '0008_alter_user_username_max_length', '2024-03-14 22:17:06.875473'),
(26, 'auth', '0009_alter_user_last_name_max_length', '2024-03-14 22:17:06.919558'),
(27, 'auth', '0010_alter_group_name_max_length', '2024-03-14 22:17:06.952417'),
(28, 'auth', '0011_update_proxy_permissions', '2024-03-14 22:17:06.989570'),
(29, 'sessions', '0001_initial', '2024-03-14 22:17:07.046951');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Users_profilepic`
--

CREATE TABLE `Users_profilepic` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AboutUs_about`
--
ALTER TABLE `AboutUs_about`
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
-- Indexes for table `Blog_contactus`
--
ALTER TABLE `Blog_contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Createapk_apkinfo`
--
ALTER TABLE `Createapk_apkinfo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Createapk_apkinfo_package_name_71d4d7f8_uniq` (`package_name`),
  ADD KEY `Createapk_apkinfo_creator_id_b4d24d5e_fk_auth_user_id` (`creator_id`);

--
-- Indexes for table `Dashboard_chat`
--
ALTER TABLE `Dashboard_chat`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `Users_profilepic`
--
ALTER TABLE `Users_profilepic`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AboutUs_about`
--
ALTER TABLE `AboutUs_about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Blog_contactus`
--
ALTER TABLE `Blog_contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Createapk_apkinfo`
--
ALTER TABLE `Createapk_apkinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Dashboard_chat`
--
ALTER TABLE `Dashboard_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `Users_profilepic`
--
ALTER TABLE `Users_profilepic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- Constraints for table `Createapk_apkinfo`
--
ALTER TABLE `Createapk_apkinfo`
  ADD CONSTRAINT `Createapk_apkinfo_creator_id_b4d24d5e_fk_auth_user_id` FOREIGN KEY (`creator_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `Users_profilepic`
--
ALTER TABLE `Users_profilepic`
  ADD CONSTRAINT `Users_profilepic_user_id_df6b5e0f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
