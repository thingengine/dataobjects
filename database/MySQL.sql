

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Table structure for table `te_address`
--

CREATE TABLE `te_address` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_2` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_3` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_office_box` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suite_apartment` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locality` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT 'US',
  `address_type` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `label` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` decimal(11,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_api_key`
--

CREATE TABLE `te_api_key` (
  `id` int(11) NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_key` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret_key` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `restrict_to_ip_address` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_appointment`
--

CREATE TABLE `te_appointment` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token_2` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scheduled_time` datetime NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tool` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_article`
--

CREATE TABLE `te_article` (
  `id` int(11) NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `article_date` datetime NOT NULL,
  `article_publish_date` datetime NOT NULL,
  `article_expires_date` datetime DEFAULT NULL,
  `article_content` mediumtext COLLATE utf8mb4_unicode_ci,
  `article_title` text COLLATE utf8mb4_unicode_ci,
  `article_excerpt` longtext COLLATE utf8mb4_unicode_ci,
  `article_status` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `article_type` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `article_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_audio`
--

CREATE TABLE `te_audio` (
  `id` int(11) NOT NULL,
  `token` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `audio_type` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `private` tinyint(1) DEFAULT '0',
  `password` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sent_by` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sent_to` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_blog`
--

CREATE TABLE `te_blog` (
  `id` int(1) NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `approved` tinyint(4) NOT NULL DEFAULT '1',
  `share_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_brand`
--

CREATE TABLE `te_brand` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `featured` int(1) DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_category`
--

CREATE TABLE `te_category` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_type` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` tinyint(4) DEFAULT '99',
  `featured` int(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_collection`
--

CREATE TABLE `te_collection` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_type` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` tinyint(4) DEFAULT '99',
  `featured` int(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_comment`
--

CREATE TABLE `te_comment` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `by_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_type` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `comment` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_coupon`
--

CREATE TABLE `te_coupon` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_type` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '0',
  `must_be_loggged_in` tinyint(1) NOT NULL DEFAULT '0',
  `can_by_combined` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_subtotal` int(4) NOT NULL DEFAULT '0',
  `discount_type` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `number_of_uses` int(3) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_document`
--

CREATE TABLE `te_document` (
  `id` int(11) NOT NULL,
  `token` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `document_type` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `private` tinyint(1) DEFAULT '0',
  `password` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sent_by` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sent_to` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approved_by` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `declined_by` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `signed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_email`
--

CREATE TABLE `te_email` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_type` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_attachments` int(1) NOT NULL DEFAULT '0',
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `label` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_event`
--

CREATE TABLE `te_event` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_type` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `featured` int(1) NOT NULL DEFAULT '0',
  `price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `starting_date` datetime DEFAULT NULL,
  `ending_date` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_invoice`
--

CREATE TABLE `te_invoice` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_token_2` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token_3` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_number` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_type` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_date` datetime DEFAULT NULL,
  `no_of_items` int(11) NOT NULL DEFAULT '9',
  `tax_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `discount_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `coupon_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `fees_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `grand_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_invoice_item`
--

CREATE TABLE `te_invoice_item` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_token` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_token_2` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` decimal(12,2) NOT NULL DEFAULT '0.00',
  `price_per_item` decimal(12,2) NOT NULL DEFAULT '0.00',
  `tax_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `discount_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `coupon_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `fees_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `grand_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_location`
--

CREATE TABLE `te_location` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_type` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_medical_insurance`
--

CREATE TABLE `te_medical_insurance` (
  `id` int(11) NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurance_type` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurance_claim_office_number` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurance_company` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurance_group_number` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurance_id_number` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurance_payer_id` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurance_plan_name` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurance_plan_type` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `effective_date_start` date DEFAULT NULL,
  `effective_date_end` date DEFAULT NULL,
  `copay_flat_rate` decimal(10,2) DEFAULT NULL,
  `copay_percentage` decimal(10,2) DEFAULT NULL,
  `employer_name` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_patient` tinyint(1) NOT NULL DEFAULT '1',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_medical_patient`
--

CREATE TABLE `te_medical_patient` (
  `id` int(11) NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `prefix_name` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `suffix_name` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nickname` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `identifier_1` varbinary(255) DEFAULT NULL,
  `identifier_2` varbinary(255) DEFAULT NULL,
  `gender` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender_identity` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ethnicity` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smoking_status` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adopted_code` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twin_code` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `race_1` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `race_2` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `race_3` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `self_pay` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_medical_patient_allergy`
--

CREATE TABLE `te_medical_patient_allergy` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `encounter_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allergy_reference` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `allergen_type` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `severity` int(3) DEFAULT '0',
  `reaction` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `onset` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `onset_date` date DEFAULT NULL,
  `comment` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_medical_patient_condition`
--

CREATE TABLE `te_medical_patient_condition` (
  `id` int(10) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `encounter_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `icd9_code` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icd10_code` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `snomed_code` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `snomed_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acuity` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diagnosed_at` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_medical_patient_view`
--

CREATE TABLE `te_medical_patient_view` (
  `id` int(11) NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token_2` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_patient` tinyint(1) NOT NULL DEFAULT '0',
  `reason` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_medical_patient_vitals`
--

CREATE TABLE `te_medical_patient_vitals` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `encounter_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` int(10) UNSIGNED DEFAULT NULL,
  `weight` double(8,2) UNSIGNED DEFAULT NULL,
  `bmi` int(10) UNSIGNED DEFAULT NULL,
  `bmi_percentile` int(10) UNSIGNED DEFAULT NULL,
  `bp_systolic` int(10) UNSIGNED DEFAULT NULL,
  `bp_diastolic` int(10) UNSIGNED DEFAULT NULL,
  `temperature` double(8,2) UNSIGNED DEFAULT NULL,
  `pulse` int(10) UNSIGNED DEFAULT NULL,
  `respiratory_rate` int(10) UNSIGNED DEFAULT NULL,
  `o2_saturation` int(10) UNSIGNED DEFAULT NULL,
  `pain` int(10) UNSIGNED DEFAULT NULL,
  `head_circumference` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_message`
--

CREATE TABLE `te_message` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` mediumtext COLLATE utf8mb4_unicode_ci,
  `is_read` int(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_meta`
--

CREATE TABLE `te_meta` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_key` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_note`
--

CREATE TABLE `te_note` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_operating_hours`
--

CREATE TABLE `te_operating_hours` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `day_of_week` int(1) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_closed` tinyint(1) NOT NULL DEFAULT '1',
  `exact_date` date DEFAULT NULL,
  `is_holiday` tinyint(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_option`
--

CREATE TABLE `te_option` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` tinyint(3) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_organization`
--

CREATE TABLE `te_organization` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organization_type` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_established` int(4) NOT NULL,
  `dates_active` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_page`
--

CREATE TABLE `te_page` (
  `id` int(11) NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `title` mediumtext COLLATE utf8mb4_unicode_ci,
  `excerpt` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_type` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_participant`
--

CREATE TABLE `te_participant` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token_2` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tool` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_payment`
--

CREATE TABLE `te_payment` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token_2` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_by_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `gateway` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_number` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_permission`
--

CREATE TABLE `te_permission` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_token_2` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_type` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allowed` tinyint(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_person`
--

CREATE TABLE `te_person` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token_2` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `person_type` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_prefix` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_first` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_middle` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_last` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_suffix` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_nickname` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_post_nominal` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `known_for` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `date_of_death` datetime DEFAULT NULL,
  `identifier_1` varbinary(255) DEFAULT NULL,
  `identifier_2` varbinary(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_phone`
--

CREATE TABLE `te_phone` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_extension` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'US',
  `phone_type` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `for_business` int(1) NOT NULL DEFAULT '0',
  `allow_sms` int(1) NOT NULL DEFAULT '0',
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `label` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_photo`
--

CREATE TABLE `te_photo` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_type` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_thumb` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `must_be_loggged_in` int(4) NOT NULL DEFAULT '0',
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_password` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_product`
--

CREATE TABLE `te_product` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variation_of_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `featured` int(1) NOT NULL DEFAULT '0',
  `price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `discount_price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `map_price` decimal(12,2) DEFAULT NULL,
  `list_price` decimal(12,2) DEFAULT NULL,
  `stock` int(10) NOT NULL DEFAULT '1',
  `digital_download` int(10) NOT NULL DEFAULT '1',
  `digital_file` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` decimal(8,2) DEFAULT NULL,
  `length` decimal(8,2) DEFAULT NULL,
  `width` decimal(8,2) DEFAULT NULL,
  `size_measurement` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT 'in',
  `weight` decimal(8,2) DEFAULT NULL,
  `weight_measurement` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'lbs',
  `subtract_stock` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_reaction`
--

CREATE TABLE `te_reaction` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reaction_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reaction` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_relationship`
--

CREATE TABLE `te_relationship` (
  `id` int(11) NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token_2` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token_3` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relationship_type` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` tinyint(4) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_role`
--

CREATE TABLE `te_role` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_schedule`
--

CREATE TABLE `te_schedule` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `day_of_week` int(1) DEFAULT NULL,
  `day_of_week_start` time DEFAULT NULL,
  `day_of_week_end` time DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_shipment`
--

CREATE TABLE `te_shipment` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipped_by_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_carrier` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_status` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_service` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_cost` decimal(12,2) DEFAULT NULL,
  `packaging_cost` decimal(12,2) DEFAULT NULL,
  `tracking_number` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `signature_required` tinyint(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_shop`
--

CREATE TABLE `te_shop` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `approved` tinyint(4) NOT NULL DEFAULT '1',
  `share_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_shop_cart`
--

CREATE TABLE `te_shop_cart` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `tax_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `discount_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `grand_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `total_items` int(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_shop_cart_collection`
--

CREATE TABLE `te_shop_cart_collection` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_type` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `shippable` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `customer_pickup` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `price_per_item` decimal(12,2) NOT NULL DEFAULT '0.00',
  `tax_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `discount_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `coupon_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `fees_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `grand_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_shop_order`
--

CREATE TABLE `te_shop_order` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `tax_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `discount_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `coupon_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `grand_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `fees_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `total_items` int(4) NOT NULL DEFAULT '0',
  `date_purchased` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_shop_order_collection`
--

CREATE TABLE `te_shop_order_collection` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_type` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `shippable` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `customer_pickup` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `price_per_item` decimal(12,2) NOT NULL DEFAULT '0.00',
  `tax_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `discount_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `coupon_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `fees_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `grand_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_site`
--

CREATE TABLE `te_site` (
  `id` int(11) NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `approved` tinyint(4) NOT NULL DEFAULT '1',
  `share_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_social`
--

CREATE TABLE `te_social` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_type` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_subscriber`
--

CREATE TABLE `te_subscriber` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscription_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscription_type` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `starting_date` datetime DEFAULT NULL,
  `ending_date` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_subscription`
--

CREATE TABLE `te_subscription` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscription_type` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `featured` int(1) NOT NULL DEFAULT '0',
  `price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `discount_price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `length_days` int(10) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_tag`
--

CREATE TABLE `te_tag` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_tag_item`
--

CREATE TABLE `te_tag_item` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_user`
--

CREATE TABLE `te_user` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_secondary` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'America/Los_Angeles',
  `is_active` int(1) NOT NULL DEFAULT '0',
  `is_admin` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `activation_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activation_expires` datetime DEFAULT NULL,
  `session_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_expires` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `te_wishlist`
--

CREATE TABLE `te_wishlist` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `share_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `te_address`
--
ALTER TABLE `te_address`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ref_token` (`ref_token`);

--
-- Indexes for table `te_api_key`
--
ALTER TABLE `te_api_key`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `api_key` (`api_key`,`secret_key`);

--
-- Indexes for table `te_appointment`
--
ALTER TABLE `te_appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `te_article`
--
ALTER TABLE `te_article`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `ref_token` (`ref_token`),
  ADD KEY `created_at` (`created_at`);

--
-- Indexes for table `te_audio`
--
ALTER TABLE `te_audio`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ref_token` (`ref_token`);

--
-- Indexes for table `te_blog`
--
ALTER TABLE `te_blog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ref_token` (`ref_token`);

--
-- Indexes for table `te_brand`
--
ALTER TABLE `te_brand`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ref_token` (`ref_token`);

--
-- Indexes for table `te_category`
--
ALTER TABLE `te_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `te_collection`
--
ALTER TABLE `te_collection`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ref_token` (`ref_token`),
  ADD KEY `collection_token` (`collection_token`);

--
-- Indexes for table `te_comment`
--
ALTER TABLE `te_comment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ref_token` (`ref_token`);

--
-- Indexes for table `te_coupon`
--
ALTER TABLE `te_coupon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ref_token` (`ref_token`);

--
-- Indexes for table `te_document`
--
ALTER TABLE `te_document`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ref_token` (`ref_token`);

--
-- Indexes for table `te_email`
--
ALTER TABLE `te_email`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD UNIQUE KEY `email` (`ref_token`,`email`,`email_type`) USING BTREE,
  ADD KEY `ref_token` (`ref_token`);

--
-- Indexes for table `te_event`
--
ALTER TABLE `te_event`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ref_token` (`ref_token`);

--
-- Indexes for table `te_invoice`
--
ALTER TABLE `te_invoice`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `te_invoice_item`
--
ALTER TABLE `te_invoice_item`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `te_location`
--
ALTER TABLE `te_location`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ref_token` (`ref_token`);

--
-- Indexes for table `te_medical_insurance`
--
ALTER TABLE `te_medical_insurance`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ref_token` (`ref_token`);

--
-- Indexes for table `te_medical_patient`
--
ALTER TABLE `te_medical_patient`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idxToken` (`token`);

--
-- Indexes for table `te_medical_patient_allergy`
--
ALTER TABLE `te_medical_patient_allergy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idxToken` (`token`),
  ADD KEY `idxPatient` (`patient_token`),
  ADD KEY `encounter_token` (`encounter_token`);

--
-- Indexes for table `te_medical_patient_condition`
--
ALTER TABLE `te_medical_patient_condition`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idxToken` (`token`),
  ADD KEY `idxPatient` (`patient_token`),
  ADD KEY `encounter_token` (`encounter_token`);

--
-- Indexes for table `te_medical_patient_view`
--
ALTER TABLE `te_medical_patient_view`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `te_medical_patient_vitals`
--
ALTER TABLE `te_medical_patient_vitals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ref_code` (`token`);

--
-- Indexes for table `te_message`
--
ALTER TABLE `te_message`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ref_token` (`ref_token`);

--
-- Indexes for table `te_meta`
--
ALTER TABLE `te_meta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idxToken` (`token`,`ref_token`) USING BTREE,
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `idxArticleToken` (`ref_token`),
  ADD KEY `ref_token` (`ref_token`);

--
-- Indexes for table `te_note`
--
ALTER TABLE `te_note`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ref_token` (`ref_token`);

--
-- Indexes for table `te_operating_hours`
--
ALTER TABLE `te_operating_hours`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ref_token` (`ref_token`);

--
-- Indexes for table `te_option`
--
ALTER TABLE `te_option`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `ref_token` (`ref_token`);

--
-- Indexes for table `te_organization`
--
ALTER TABLE `te_organization`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ref_token` (`ref_token`);

--
-- Indexes for table `te_page`
--
ALTER TABLE `te_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `ref_token` (`ref_token`);

--
-- Indexes for table `te_participant`
--
ALTER TABLE `te_participant`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ref_token` (`ref_token`);

--
-- Indexes for table `te_payment`
--
ALTER TABLE `te_payment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ref_token` (`ref_token`);

--
-- Indexes for table `te_permission`
--
ALTER TABLE `te_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ref_token` (`ref_token`),
  ADD KEY `ref_token_2` (`ref_token_2`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `te_person`
--
ALTER TABLE `te_person`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ref_token` (`ref_token`);

--
-- Indexes for table `te_phone`
--
ALTER TABLE `te_phone`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ref_token` (`ref_token`);

--
-- Indexes for table `te_photo`
--
ALTER TABLE `te_photo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ref_token` (`ref_token`);

--
-- Indexes for table `te_product`
--
ALTER TABLE `te_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ref_token` (`ref_token`);

--
-- Indexes for table `te_reaction`
--
ALTER TABLE `te_reaction`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ref_token` (`ref_token`);

--
-- Indexes for table `te_relationship`
--
ALTER TABLE `te_relationship`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ref_token` (`ref_token`);

--
-- Indexes for table `te_role`
--
ALTER TABLE `te_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ref_token` (`ref_token`);

--
-- Indexes for table `te_schedule`
--
ALTER TABLE `te_schedule`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ref_token` (`ref_token`);

--
-- Indexes for table `te_shipment`
--
ALTER TABLE `te_shipment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ref_token` (`ref_token`);

--
-- Indexes for table `te_shop`
--
ALTER TABLE `te_shop`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ref_token` (`ref_token`);

--
-- Indexes for table `te_shop_cart`
--
ALTER TABLE `te_shop_cart`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `shop_token` (`shop_token`),
  ADD KEY `ref_token` (`ref_token`);

--
-- Indexes for table `te_shop_cart_collection`
--
ALTER TABLE `te_shop_cart_collection`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ref_token` (`ref_token`),
  ADD KEY `cart_token` (`cart_token`);

--
-- Indexes for table `te_shop_order`
--
ALTER TABLE `te_shop_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ref_token` (`ref_token`),
  ADD KEY `shop_token` (`shop_token`);

--
-- Indexes for table `te_shop_order_collection`
--
ALTER TABLE `te_shop_order_collection`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ref_token` (`ref_token`),
  ADD KEY `order_token` (`order_token`);

--
-- Indexes for table `te_site`
--
ALTER TABLE `te_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ref_token` (`ref_token`);

--
-- Indexes for table `te_social`
--
ALTER TABLE `te_social`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ref_token` (`ref_token`);

--
-- Indexes for table `te_subscriber`
--
ALTER TABLE `te_subscriber`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ref_token` (`ref_token`),
  ADD KEY `subscription_token` (`subscription_token`);

--
-- Indexes for table `te_subscription`
--
ALTER TABLE `te_subscription`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD UNIQUE KEY `sku` (`sku`),
  ADD KEY `ref_token` (`ref_token`);

--
-- Indexes for table `te_tag`
--
ALTER TABLE `te_tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD UNIQUE KEY `token` (`token`),
  ADD UNIQUE KEY `token_2` (`token`);

--
-- Indexes for table `te_tag_item`
--
ALTER TABLE `te_tag_item`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ref_token` (`ref_token`),
  ADD KEY `tag_token` (`tag_token`);

--
-- Indexes for table `te_user`
--
ALTER TABLE `te_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `ref_token` (`ref_token`),
  ADD KEY `session_token` (`session_token`);

--
-- Indexes for table `te_wishlist`
--
ALTER TABLE `te_wishlist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ref_token` (`ref_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `te_address`
--
ALTER TABLE `te_address`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_api_key`
--
ALTER TABLE `te_api_key`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_appointment`
--
ALTER TABLE `te_appointment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_article`
--
ALTER TABLE `te_article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_audio`
--
ALTER TABLE `te_audio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_blog`
--
ALTER TABLE `te_blog`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_brand`
--
ALTER TABLE `te_brand`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_category`
--
ALTER TABLE `te_category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_collection`
--
ALTER TABLE `te_collection`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_comment`
--
ALTER TABLE `te_comment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_coupon`
--
ALTER TABLE `te_coupon`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_document`
--
ALTER TABLE `te_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_email`
--
ALTER TABLE `te_email`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_event`
--
ALTER TABLE `te_event`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_invoice`
--
ALTER TABLE `te_invoice`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_invoice_item`
--
ALTER TABLE `te_invoice_item`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_location`
--
ALTER TABLE `te_location`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_medical_insurance`
--
ALTER TABLE `te_medical_insurance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_medical_patient`
--
ALTER TABLE `te_medical_patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_medical_patient_allergy`
--
ALTER TABLE `te_medical_patient_allergy`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_medical_patient_condition`
--
ALTER TABLE `te_medical_patient_condition`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_medical_patient_view`
--
ALTER TABLE `te_medical_patient_view`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_medical_patient_vitals`
--
ALTER TABLE `te_medical_patient_vitals`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_message`
--
ALTER TABLE `te_message`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_meta`
--
ALTER TABLE `te_meta`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_note`
--
ALTER TABLE `te_note`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_operating_hours`
--
ALTER TABLE `te_operating_hours`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_option`
--
ALTER TABLE `te_option`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_organization`
--
ALTER TABLE `te_organization`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_page`
--
ALTER TABLE `te_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_participant`
--
ALTER TABLE `te_participant`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_payment`
--
ALTER TABLE `te_payment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_permission`
--
ALTER TABLE `te_permission`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_person`
--
ALTER TABLE `te_person`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_phone`
--
ALTER TABLE `te_phone`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_photo`
--
ALTER TABLE `te_photo`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_product`
--
ALTER TABLE `te_product`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_reaction`
--
ALTER TABLE `te_reaction`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_relationship`
--
ALTER TABLE `te_relationship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_role`
--
ALTER TABLE `te_role`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_schedule`
--
ALTER TABLE `te_schedule`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_shipment`
--
ALTER TABLE `te_shipment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_shop`
--
ALTER TABLE `te_shop`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_shop_cart`
--
ALTER TABLE `te_shop_cart`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_shop_cart_collection`
--
ALTER TABLE `te_shop_cart_collection`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_shop_order`
--
ALTER TABLE `te_shop_order`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_shop_order_collection`
--
ALTER TABLE `te_shop_order_collection`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_site`
--
ALTER TABLE `te_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_social`
--
ALTER TABLE `te_social`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_subscriber`
--
ALTER TABLE `te_subscriber`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_subscription`
--
ALTER TABLE `te_subscription`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_tag`
--
ALTER TABLE `te_tag`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_tag_item`
--
ALTER TABLE `te_tag_item`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_user`
--
ALTER TABLE `te_user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `te_wishlist`
--
ALTER TABLE `te_wishlist`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

