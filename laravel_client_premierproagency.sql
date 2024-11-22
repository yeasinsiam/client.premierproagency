-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 22, 2024 at 02:20 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_client_premierproagency`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories_posts`
--

CREATE TABLE `categories_posts` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `post_category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories_posts`
--

INSERT INTO `categories_posts` (`id`, `post_id`, `post_category_id`, `created_at`, `updated_at`) VALUES
(5, 5, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `client_reviews`
--

CREATE TABLE `client_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `order_column` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_reviews`
--

INSERT INTO `client_reviews` (`id`, `order_column`, `name`, `comment`, `created_at`, `updated_at`) VALUES
(3, 2, 'sfd', 'asdfasfd', '2023-12-02 07:59:15', '2023-12-03 18:55:36'),
(4, 3, 'nmmmm', 'uhkjkhjk', '2023-12-02 07:59:45', '2023-12-03 18:55:36');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint UNSIGNED NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `generated_conversions` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(32, 'App\\Models\\ClientReview', 3, '82acea4d-d33d-4166-9a68-ecdc2e5c1733', 'avatar', 'bing_wallpaper_RebelBase_1920x1080', 'bing_wallpaper_RebelBase_1920x1080.jpg', 'image/jpeg', 'media', 'media', 326014, '[]', '[]', '[]', '[]', 1, '2023-12-02 07:59:15', '2023-12-02 07:59:15'),
(34, 'App\\Models\\PortfolioItem', 1, '36a89076-16d0-4f43-a988-3ce712fb31bd', 'thumbnail', 'bing_wallpaper_BlackGrouseLekking_1920x1080', 'bing_wallpaper_BlackGrouseLekking_1920x1080.jpg', 'image/jpeg', 'media', 'media', 329262, '[]', '[]', '[]', '{\"media_library_original\": {\"urls\": [\"bing_wallpaper_BlackGrouseLekking_1920x1080___media_library_original_1920_1080.jpg\", \"bing_wallpaper_BlackGrouseLekking_1920x1080___media_library_original_1606_903.jpg\", \"bing_wallpaper_BlackGrouseLekking_1920x1080___media_library_original_1344_756.jpg\", \"bing_wallpaper_BlackGrouseLekking_1920x1080___media_library_original_1124_632.jpg\", \"bing_wallpaper_BlackGrouseLekking_1920x1080___media_library_original_940_529.jpg\", \"bing_wallpaper_BlackGrouseLekking_1920x1080___media_library_original_787_443.jpg\", \"bing_wallpaper_BlackGrouseLekking_1920x1080___media_library_original_658_370.jpg\", \"bing_wallpaper_BlackGrouseLekking_1920x1080___media_library_original_550_309.jpg\", \"bing_wallpaper_BlackGrouseLekking_1920x1080___media_library_original_460_259.jpg\", \"bing_wallpaper_BlackGrouseLekking_1920x1080___media_library_original_385_217.jpg\"], \"base64svg\": \"data:image/svg+xml;base64,PCFET0NUWVBFIHN2ZyBQVUJMSUMgIi0vL1czQy8vRFREIFNWRyAxLjEvL0VOIiAiaHR0cDovL3d3dy53My5vcmcvR3JhcGhpY3MvU1ZHLzEuMS9EVEQvc3ZnMTEuZHRkIj4KPHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHg9IjAiCiB5PSIwIiB2aWV3Qm94PSIwIDAgMTkyMCAxMDgwIj4KCTxpbWFnZSB3aWR0aD0iMTkyMCIgaGVpZ2h0PSIxMDgwIiB4bGluazpocmVmPSJkYXRhOmltYWdlL2pwZWc7YmFzZTY0LC85ai80QUFRU2taSlJnQUJBUUVBWUFCZ0FBRC8vZ0E3UTFKRlFWUlBVam9nWjJRdGFuQmxaeUIyTVM0d0lDaDFjMmx1WnlCSlNrY2dTbEJGUnlCMk9EQXBMQ0J4ZFdGc2FYUjVJRDBnT1RBSy85c0FRd0FEQWdJREFnSURBd01EQkFNREJBVUlCUVVFQkFVS0J3Y0dDQXdLREF3TENnc0xEUTRTRUEwT0VRNExDeEFXRUJFVEZCVVZGUXdQRnhnV0ZCZ1NGQlVVLzlzQVF3RURCQVFGQkFVSkJRVUpGQTBMRFJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVUvOEFBRVFnQUVnQWdBd0VpQUFJUkFRTVJBZi9FQUI4QUFBRUZBUUVCQVFFQkFBQUFBQUFBQUFBQkFnTUVCUVlIQ0FrS0MvL0VBTFVRQUFJQkF3TUNCQU1GQlFRRUFBQUJmUUVDQXdBRUVRVVNJVEZCQmhOUllRY2ljUlF5Z1pHaENDTkNzY0VWVXRId0pETmljb0lKQ2hZWEdCa2FKU1luS0NrcU5EVTJOemc1T2tORVJVWkhTRWxLVTFSVlZsZFlXVnBqWkdWbVoyaHBhbk4wZFhaM2VIbDZnNFNGaG9lSWlZcVNrNVNWbHBlWW1acWlvNlNscHFlb3FhcXlzN1MxdHJlNHVickN3OFRGeHNmSXljclMwOVRWMXRmWTJkcmg0dVBrNWVibjZPbnE4Zkx6OVBYMjkvajUrdi9FQUI4QkFBTUJBUUVCQVFFQkFRRUFBQUFBQUFBQkFnTUVCUVlIQ0FrS0MvL0VBTFVSQUFJQkFnUUVBd1FIQlFRRUFBRUNkd0FCQWdNUkJBVWhNUVlTUVZFSFlYRVRJaktCQ0JSQ2thR3h3UWtqTTFMd0ZXSnkwUW9XSkRUaEpmRVhHQmthSmljb0tTbzFOamM0T1RwRFJFVkdSMGhKU2xOVVZWWlhXRmxhWTJSbFptZG9hV3B6ZEhWMmQzaDVlb0tEaElXR2g0aUppcEtUbEpXV2w1aVptcUtqcEtXbXA2aXBxckt6dExXMnQ3aTV1c0xEeE1YR3g4akp5dExUMU5YVzE5aloydUxqNU9YbTUranA2dkx6OVBYMjkvajUrdi9hQUF3REFRQUNFUU1SQUQ4QStHZENQMjNVNGdCbGl3cjFhK3NMcU1SeENOZzdKd0NLMlBEWDdNSGl2Uk5VZ3U1TE1za2JCaU1WNkxyWHcrOFIrSjlSald5MDFvR2dUYVR0NjF4U3cwdVIyV3AwUXJybVYyZU0rSExkN1NXNlc1RzA0NzF6dmlhV0NGV1pEa2sxNkMvd1M4ZFgvaWVTMGEza2pWenl3QnhYUWF4K3lSNG9sdEFGUXM5Y3p3VldYSzMwT2o2MVRqekpkVDlBVEVoQitSZnlwbWp3UkxjU0VSb0Q2aFJSUlgxY3RqNXhiaUczaUdwRnZLVGQ2N1JtdEYwWCs2UHlvb3BnZi8vWiI+Cgk8L2ltYWdlPgo8L3N2Zz4=\"}}', 1, '2023-12-03 08:09:10', '2023-12-03 08:09:15'),
(37, 'App\\Models\\ClientReview', 4, '6b4651b2-e2a6-446d-8aaa-b77ec9a3f01e', 'avatar', 'IcebergAntarctica', 'IcebergAntarctica.jpg', 'image/jpeg', 'media', 'media', 1615735, '[]', '[]', '[]', '[]', 1, '2023-12-03 18:53:19', '2023-12-03 18:53:19'),
(39, 'App\\Models\\Post', 5, '2fd998b1-7a73-4c74-892b-07152227c7cc', 'thumbnail-mini', 'bing_wallpaper_RebelBase_1920x1080', 'bing_wallpaper_RebelBase_1920x1080.jpg', 'image/jpeg', 'media', 'media', 326014, '[]', '[]', '[]', '{\"media_library_original\": {\"urls\": [\"bing_wallpaper_RebelBase_1920x1080___media_library_original_1920_1080.jpg\", \"bing_wallpaper_RebelBase_1920x1080___media_library_original_1606_903.jpg\", \"bing_wallpaper_RebelBase_1920x1080___media_library_original_1344_756.jpg\", \"bing_wallpaper_RebelBase_1920x1080___media_library_original_1124_632.jpg\", \"bing_wallpaper_RebelBase_1920x1080___media_library_original_940_529.jpg\", \"bing_wallpaper_RebelBase_1920x1080___media_library_original_787_443.jpg\", \"bing_wallpaper_RebelBase_1920x1080___media_library_original_658_370.jpg\", \"bing_wallpaper_RebelBase_1920x1080___media_library_original_550_309.jpg\", \"bing_wallpaper_RebelBase_1920x1080___media_library_original_460_259.jpg\", \"bing_wallpaper_RebelBase_1920x1080___media_library_original_385_217.jpg\"], \"base64svg\": \"data:image/svg+xml;base64,PCFET0NUWVBFIHN2ZyBQVUJMSUMgIi0vL1czQy8vRFREIFNWRyAxLjEvL0VOIiAiaHR0cDovL3d3dy53My5vcmcvR3JhcGhpY3MvU1ZHLzEuMS9EVEQvc3ZnMTEuZHRkIj4KPHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHg9IjAiCiB5PSIwIiB2aWV3Qm94PSIwIDAgMTkyMCAxMDgwIj4KCTxpbWFnZSB3aWR0aD0iMTkyMCIgaGVpZ2h0PSIxMDgwIiB4bGluazpocmVmPSJkYXRhOmltYWdlL2pwZWc7YmFzZTY0LC85ai80QUFRU2taSlJnQUJBUUVBWUFCZ0FBRC8vZ0E3UTFKRlFWUlBVam9nWjJRdGFuQmxaeUIyTVM0d0lDaDFjMmx1WnlCSlNrY2dTbEJGUnlCMk9EQXBMQ0J4ZFdGc2FYUjVJRDBnT1RBSy85c0FRd0FEQWdJREFnSURBd01EQkFNREJBVUlCUVVFQkFVS0J3Y0dDQXdLREF3TENnc0xEUTRTRUEwT0VRNExDeEFXRUJFVEZCVVZGUXdQRnhnV0ZCZ1NGQlVVLzlzQVF3RURCQVFGQkFVSkJRVUpGQTBMRFJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVUvOEFBRVFnQUVnQWdBd0VpQUFJUkFRTVJBZi9FQUI4QUFBRUZBUUVCQVFFQkFBQUFBQUFBQUFBQkFnTUVCUVlIQ0FrS0MvL0VBTFVRQUFJQkF3TUNCQU1GQlFRRUFBQUJmUUVDQXdBRUVRVVNJVEZCQmhOUllRY2ljUlF5Z1pHaENDTkNzY0VWVXRId0pETmljb0lKQ2hZWEdCa2FKU1luS0NrcU5EVTJOemc1T2tORVJVWkhTRWxLVTFSVlZsZFlXVnBqWkdWbVoyaHBhbk4wZFhaM2VIbDZnNFNGaG9lSWlZcVNrNVNWbHBlWW1acWlvNlNscHFlb3FhcXlzN1MxdHJlNHVickN3OFRGeHNmSXljclMwOVRWMXRmWTJkcmg0dVBrNWVibjZPbnE4Zkx6OVBYMjkvajUrdi9FQUI4QkFBTUJBUUVCQVFFQkFRRUFBQUFBQUFBQkFnTUVCUVlIQ0FrS0MvL0VBTFVSQUFJQkFnUUVBd1FIQlFRRUFBRUNkd0FCQWdNUkJBVWhNUVlTUVZFSFlYRVRJaktCQ0JSQ2thR3h3UWtqTTFMd0ZXSnkwUW9XSkRUaEpmRVhHQmthSmljb0tTbzFOamM0T1RwRFJFVkdSMGhKU2xOVVZWWlhXRmxhWTJSbFptZG9hV3B6ZEhWMmQzaDVlb0tEaElXR2g0aUppcEtUbEpXV2w1aVptcUtqcEtXbXA2aXBxckt6dExXMnQ3aTV1c0xEeE1YR3g4akp5dExUMU5YVzE5aloydUxqNU9YbTUranA2dkx6OVBYMjkvajUrdi9hQUF3REFRQUNFUU1SQUQ4QStyN1NlMWtJeGNKK2RidG5wMEU2NVdWU0Q3MThFNkQ4VDlWU0xNbDVJV0hZbXVwcy93Qm9XLzAyUGF0MHpBZGVhK1JmRmtVMm94Wmo5VGphN1BzK2JSN09OZ0hsWG4zcU50SnRZT1ZtWEgxcjVKaCtQMCtyMnhNZDBmT0E2YnE1RFhQMmg5VjAyVXJQZU1udG1wcDhYeXFOeFVIZnNVOEJTVm1lYUp3clk0NDdWeVR1MzJpNCtZOWZXaWl2aHNMdXpybnNpOTRPZHY3WlFiampQVE5abnhtSlcvandjZlNpaXVxbi93QWpHUG9DL2huLzJRPT0iPgoJPC9pbWFnZT4KPC9zdmc+\"}}', 1, '2023-12-03 19:17:04', '2023-12-03 19:17:10'),
(40, 'App\\Models\\Post', 5, '573b5040-3265-4538-8166-ea15dd2ebe81', 'thumbnail-large', 'bing_wallpaper_SmokyFireflies_1920x1080', 'bing_wallpaper_SmokyFireflies_1920x1080.jpg', 'image/jpeg', 'media', 'media', 319909, '[]', '[]', '[]', '{\"media_library_original\": {\"urls\": [\"bing_wallpaper_SmokyFireflies_1920x1080___media_library_original_1920_1080.jpg\", \"bing_wallpaper_SmokyFireflies_1920x1080___media_library_original_1606_903.jpg\", \"bing_wallpaper_SmokyFireflies_1920x1080___media_library_original_1344_756.jpg\", \"bing_wallpaper_SmokyFireflies_1920x1080___media_library_original_1124_632.jpg\", \"bing_wallpaper_SmokyFireflies_1920x1080___media_library_original_940_529.jpg\", \"bing_wallpaper_SmokyFireflies_1920x1080___media_library_original_787_443.jpg\", \"bing_wallpaper_SmokyFireflies_1920x1080___media_library_original_658_370.jpg\", \"bing_wallpaper_SmokyFireflies_1920x1080___media_library_original_550_309.jpg\", \"bing_wallpaper_SmokyFireflies_1920x1080___media_library_original_460_259.jpg\", \"bing_wallpaper_SmokyFireflies_1920x1080___media_library_original_385_217.jpg\"], \"base64svg\": \"data:image/svg+xml;base64,PCFET0NUWVBFIHN2ZyBQVUJMSUMgIi0vL1czQy8vRFREIFNWRyAxLjEvL0VOIiAiaHR0cDovL3d3dy53My5vcmcvR3JhcGhpY3MvU1ZHLzEuMS9EVEQvc3ZnMTEuZHRkIj4KPHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHg9IjAiCiB5PSIwIiB2aWV3Qm94PSIwIDAgMTkyMCAxMDgwIj4KCTxpbWFnZSB3aWR0aD0iMTkyMCIgaGVpZ2h0PSIxMDgwIiB4bGluazpocmVmPSJkYXRhOmltYWdlL2pwZWc7YmFzZTY0LC85ai80QUFRU2taSlJnQUJBUUVBWUFCZ0FBRC8vZ0E3UTFKRlFWUlBVam9nWjJRdGFuQmxaeUIyTVM0d0lDaDFjMmx1WnlCSlNrY2dTbEJGUnlCMk9EQXBMQ0J4ZFdGc2FYUjVJRDBnT1RBSy85c0FRd0FEQWdJREFnSURBd01EQkFNREJBVUlCUVVFQkFVS0J3Y0dDQXdLREF3TENnc0xEUTRTRUEwT0VRNExDeEFXRUJFVEZCVVZGUXdQRnhnV0ZCZ1NGQlVVLzlzQVF3RURCQVFGQkFVSkJRVUpGQTBMRFJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVUvOEFBRVFnQUVnQWdBd0VpQUFJUkFRTVJBZi9FQUI4QUFBRUZBUUVCQVFFQkFBQUFBQUFBQUFBQkFnTUVCUVlIQ0FrS0MvL0VBTFVRQUFJQkF3TUNCQU1GQlFRRUFBQUJmUUVDQXdBRUVRVVNJVEZCQmhOUllRY2ljUlF5Z1pHaENDTkNzY0VWVXRId0pETmljb0lKQ2hZWEdCa2FKU1luS0NrcU5EVTJOemc1T2tORVJVWkhTRWxLVTFSVlZsZFlXVnBqWkdWbVoyaHBhbk4wZFhaM2VIbDZnNFNGaG9lSWlZcVNrNVNWbHBlWW1acWlvNlNscHFlb3FhcXlzN1MxdHJlNHVickN3OFRGeHNmSXljclMwOVRWMXRmWTJkcmg0dVBrNWVibjZPbnE4Zkx6OVBYMjkvajUrdi9FQUI4QkFBTUJBUUVCQVFFQkFRRUFBQUFBQUFBQkFnTUVCUVlIQ0FrS0MvL0VBTFVSQUFJQkFnUUVBd1FIQlFRRUFBRUNkd0FCQWdNUkJBVWhNUVlTUVZFSFlYRVRJaktCQ0JSQ2thR3h3UWtqTTFMd0ZXSnkwUW9XSkRUaEpmRVhHQmthSmljb0tTbzFOamM0T1RwRFJFVkdSMGhKU2xOVVZWWlhXRmxhWTJSbFptZG9hV3B6ZEhWMmQzaDVlb0tEaElXR2g0aUppcEtUbEpXV2w1aVptcUtqcEtXbXA2aXBxckt6dExXMnQ3aTV1c0xEeE1YR3g4akp5dExUMU5YVzE5aloydUxqNU9YbTUranA2dkx6OVBYMjkvajUrdi9hQUF3REFRQUNFUU1SQUQ4QS9PTFI1VHZVQ3VudTU1STdQTGphdGNUcEY5NU02NTlhOUwwMjN0ZkV0c3R1MHl4TmpqSnJydzlLTlZOWDFQbnNSTDJjbGZZNHFiVVVLc0FlYTU3VUx2ZS9GZC9yM3d5dk5QaGVXTjFraUhPVk5lYmFoRTF2S3lPT1FhNTZsQ2RMNGtkdUhkT2Z3TzVac2Z2Q3VoMCtSa2tYYXhYNkdpaW9wZkVqSEVmRWVoV0UwajZOSnVrWnZsN2ttdklQRS84QXgvU2ZXaWl2YnhQOENKeTRIK05JLzlrPSI+Cgk8L2ltYWdlPgo8L3N2Zz4=\"}}', 2, '2023-12-03 19:17:10', '2023-12-03 19:17:15'),
(41, 'App\\Models\\Post', 5, 'ba7cd147-f6d6-478e-813d-4dc0375bd739', 'gallery', 'IcebergAntarctica', 'IcebergAntarctica.jpg', 'image/jpeg', 'media', 'media', 1615735, '[]', '[]', '[]', '{\"media_library_original\": {\"urls\": [\"IcebergAntarctica___media_library_original_1920_1080.jpg\", \"IcebergAntarctica___media_library_original_1606_903.jpg\", \"IcebergAntarctica___media_library_original_1344_756.jpg\", \"IcebergAntarctica___media_library_original_1124_632.jpg\", \"IcebergAntarctica___media_library_original_940_529.jpg\", \"IcebergAntarctica___media_library_original_787_443.jpg\", \"IcebergAntarctica___media_library_original_658_370.jpg\", \"IcebergAntarctica___media_library_original_550_309.jpg\", \"IcebergAntarctica___media_library_original_460_259.jpg\", \"IcebergAntarctica___media_library_original_385_217.jpg\", \"IcebergAntarctica___media_library_original_322_181.jpg\", \"IcebergAntarctica___media_library_original_269_151.jpg\", \"IcebergAntarctica___media_library_original_225_127.jpg\", \"IcebergAntarctica___media_library_original_188_106.jpg\", \"IcebergAntarctica___media_library_original_158_89.jpg\"], \"base64svg\": \"data:image/svg+xml;base64,PCFET0NUWVBFIHN2ZyBQVUJMSUMgIi0vL1czQy8vRFREIFNWRyAxLjEvL0VOIiAiaHR0cDovL3d3dy53My5vcmcvR3JhcGhpY3MvU1ZHLzEuMS9EVEQvc3ZnMTEuZHRkIj4KPHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHg9IjAiCiB5PSIwIiB2aWV3Qm94PSIwIDAgMTkyMCAxMDgwIj4KCTxpbWFnZSB3aWR0aD0iMTkyMCIgaGVpZ2h0PSIxMDgwIiB4bGluazpocmVmPSJkYXRhOmltYWdlL2pwZWc7YmFzZTY0LC85ai80QUFRU2taSlJnQUJBUUVBWUFCZ0FBRC8vZ0E3UTFKRlFWUlBVam9nWjJRdGFuQmxaeUIyTVM0d0lDaDFjMmx1WnlCSlNrY2dTbEJGUnlCMk9EQXBMQ0J4ZFdGc2FYUjVJRDBnT1RBSy85c0FRd0FEQWdJREFnSURBd01EQkFNREJBVUlCUVVFQkFVS0J3Y0dDQXdLREF3TENnc0xEUTRTRUEwT0VRNExDeEFXRUJFVEZCVVZGUXdQRnhnV0ZCZ1NGQlVVLzlzQVF3RURCQVFGQkFVSkJRVUpGQTBMRFJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVUvOEFBRVFnQUVnQWdBd0VpQUFJUkFRTVJBZi9FQUI4QUFBRUZBUUVCQVFFQkFBQUFBQUFBQUFBQkFnTUVCUVlIQ0FrS0MvL0VBTFVRQUFJQkF3TUNCQU1GQlFRRUFBQUJmUUVDQXdBRUVRVVNJVEZCQmhOUllRY2ljUlF5Z1pHaENDTkNzY0VWVXRId0pETmljb0lKQ2hZWEdCa2FKU1luS0NrcU5EVTJOemc1T2tORVJVWkhTRWxLVTFSVlZsZFlXVnBqWkdWbVoyaHBhbk4wZFhaM2VIbDZnNFNGaG9lSWlZcVNrNVNWbHBlWW1acWlvNlNscHFlb3FhcXlzN1MxdHJlNHVickN3OFRGeHNmSXljclMwOVRWMXRmWTJkcmg0dVBrNWVibjZPbnE4Zkx6OVBYMjkvajUrdi9FQUI4QkFBTUJBUUVCQVFFQkFRRUFBQUFBQUFBQkFnTUVCUVlIQ0FrS0MvL0VBTFVSQUFJQkFnUUVBd1FIQlFRRUFBRUNkd0FCQWdNUkJBVWhNUVlTUVZFSFlYRVRJaktCQ0JSQ2thR3h3UWtqTTFMd0ZXSnkwUW9XSkRUaEpmRVhHQmthSmljb0tTbzFOamM0T1RwRFJFVkdSMGhKU2xOVVZWWlhXRmxhWTJSbFptZG9hV3B6ZEhWMmQzaDVlb0tEaElXR2g0aUppcEtUbEpXV2w1aVptcUtqcEtXbXA2aXBxckt6dExXMnQ3aTV1c0xEeE1YR3g4akp5dExUMU5YVzE5aloydUxqNU9YbTUranA2dkx6OVBYMjkvajUrdi9hQUF3REFRQUNFUU1SQUQ4QThMc3ZoVmR5RVlCcnE5RytHMDlpTjBncjFUU3RIdUVtdzBSL0t1aHZORGtGaTVFUnpqMHI2bjZ2cHVlSjlhVjlqeDZUd1REY3hFT3dGWlUzd1lUVUczbytRZlN0SHhqZDMxZzVpalYxRzd0Vy93Q0M5VXUvS2lqa1AzaDNyZ3JVcWtJdVVYc2QxR3ZDY2xHU1BjYkdOZk1IeWo4cTFycEYreXR3T25wUlJYdE04SThSK0lFU2VhM3lMMTlLd3RQK1Zvc2NmU2lpdWJGZjd0STN3Mys4eFAvWiI+Cgk8L2ltYWdlPgo8L3N2Zz4=\"}}', 3, '2023-12-03 19:17:15', '2023-12-03 19:17:22'),
(42, 'App\\Models\\Post', 5, '999450e1-b4f4-4618-9fed-7b2f7fff2ddf', 'gallery', 'Mi Ho', 'Mi-Ho.jpg', 'image/jpeg', 'media', 'media', 2221119, '[]', '[]', '[]', '{\"media_library_original\": {\"urls\": [\"Mi-Ho___media_library_original_1920_1080.jpg\", \"Mi-Ho___media_library_original_1606_903.jpg\", \"Mi-Ho___media_library_original_1343_755.jpg\", \"Mi-Ho___media_library_original_1124_632.jpg\", \"Mi-Ho___media_library_original_940_529.jpg\", \"Mi-Ho___media_library_original_787_443.jpg\", \"Mi-Ho___media_library_original_658_370.jpg\", \"Mi-Ho___media_library_original_550_309.jpg\", \"Mi-Ho___media_library_original_460_259.jpg\", \"Mi-Ho___media_library_original_385_217.jpg\", \"Mi-Ho___media_library_original_322_181.jpg\", \"Mi-Ho___media_library_original_269_151.jpg\", \"Mi-Ho___media_library_original_225_127.jpg\", \"Mi-Ho___media_library_original_188_106.jpg\", \"Mi-Ho___media_library_original_158_89.jpg\", \"Mi-Ho___media_library_original_132_74.jpg\"], \"base64svg\": \"data:image/svg+xml;base64,PCFET0NUWVBFIHN2ZyBQVUJMSUMgIi0vL1czQy8vRFREIFNWRyAxLjEvL0VOIiAiaHR0cDovL3d3dy53My5vcmcvR3JhcGhpY3MvU1ZHLzEuMS9EVEQvc3ZnMTEuZHRkIj4KPHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHg9IjAiCiB5PSIwIiB2aWV3Qm94PSIwIDAgMTkyMCAxMDgwIj4KCTxpbWFnZSB3aWR0aD0iMTkyMCIgaGVpZ2h0PSIxMDgwIiB4bGluazpocmVmPSJkYXRhOmltYWdlL2pwZWc7YmFzZTY0LC85ai80QUFRU2taSlJnQUJBUUVBWUFCZ0FBRC8vZ0E3UTFKRlFWUlBVam9nWjJRdGFuQmxaeUIyTVM0d0lDaDFjMmx1WnlCSlNrY2dTbEJGUnlCMk9EQXBMQ0J4ZFdGc2FYUjVJRDBnT1RBSy85c0FRd0FEQWdJREFnSURBd01EQkFNREJBVUlCUVVFQkFVS0J3Y0dDQXdLREF3TENnc0xEUTRTRUEwT0VRNExDeEFXRUJFVEZCVVZGUXdQRnhnV0ZCZ1NGQlVVLzlzQVF3RURCQVFGQkFVSkJRVUpGQTBMRFJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVUvOEFBRVFnQUVnQWdBd0VpQUFJUkFRTVJBZi9FQUI4QUFBRUZBUUVCQVFFQkFBQUFBQUFBQUFBQkFnTUVCUVlIQ0FrS0MvL0VBTFVRQUFJQkF3TUNCQU1GQlFRRUFBQUJmUUVDQXdBRUVRVVNJVEZCQmhOUllRY2ljUlF5Z1pHaENDTkNzY0VWVXRId0pETmljb0lKQ2hZWEdCa2FKU1luS0NrcU5EVTJOemc1T2tORVJVWkhTRWxLVTFSVlZsZFlXVnBqWkdWbVoyaHBhbk4wZFhaM2VIbDZnNFNGaG9lSWlZcVNrNVNWbHBlWW1acWlvNlNscHFlb3FhcXlzN1MxdHJlNHVickN3OFRGeHNmSXljclMwOVRWMXRmWTJkcmg0dVBrNWVibjZPbnE4Zkx6OVBYMjkvajUrdi9FQUI4QkFBTUJBUUVCQVFFQkFRRUFBQUFBQUFBQkFnTUVCUVlIQ0FrS0MvL0VBTFVSQUFJQkFnUUVBd1FIQlFRRUFBRUNkd0FCQWdNUkJBVWhNUVlTUVZFSFlYRVRJaktCQ0JSQ2thR3h3UWtqTTFMd0ZXSnkwUW9XSkRUaEpmRVhHQmthSmljb0tTbzFOamM0T1RwRFJFVkdSMGhKU2xOVVZWWlhXRmxhWTJSbFptZG9hV3B6ZEhWMmQzaDVlb0tEaElXR2g0aUppcEtUbEpXV2w1aVptcUtqcEtXbXA2aXBxckt6dExXMnQ3aTV1c0xEeE1YR3g4akp5dExUMU5YVzE5aloydUxqNU9YbTUranA2dkx6OVBYMjkvajUrdi9hQUF3REFRQUNFUU1SQUQ4QThiK0ZQaDdTdFZsRDNjWlFEdlhxY2ZoclQ0YnNDMllsSytXdkRueFZuc05xUXNNZTFkVmVmR3pWTEpVRVFKejNGZlJ3b3hocnpzK2FuVW5QUndSOUszRjNGNGZ0dzYyN1RISEFGY1o0aDhhZUpyMDQwM1RtUkIwNHJ5L1NQai9xRnpJa04xdEk5NjFyejQ2WE9tUzdjS0VQUTRvV0ZwU2ZNNXNpV0lxUVhLb0krV3RBSjhyT2VhOUVLZzZHQ1FDZldpaXNWc2RVam0zSkV5a0hCeld4NGpKT2x3SFBPT3RGRlZIcVpUNkgvOWs9Ij4KCTwvaW1hZ2U+Cjwvc3ZnPg==\"}}', 4, '2023-12-03 19:17:40', '2023-12-03 19:17:48'),
(43, 'App\\Models\\PortfolioItem', 3, '17f64a9c-3f24-4a51-9630-8c1eb2b115ae', 'thumbnail', 'IcebergAntarctica', 'IcebergAntarctica.jpg', 'image/jpeg', 'media', 'media', 1615735, '[]', '[]', '[]', '{\"media_library_original\": {\"urls\": [\"IcebergAntarctica___media_library_original_1920_1080.jpg\", \"IcebergAntarctica___media_library_original_1606_903.jpg\", \"IcebergAntarctica___media_library_original_1344_756.jpg\", \"IcebergAntarctica___media_library_original_1124_632.jpg\", \"IcebergAntarctica___media_library_original_940_529.jpg\", \"IcebergAntarctica___media_library_original_787_443.jpg\", \"IcebergAntarctica___media_library_original_658_370.jpg\", \"IcebergAntarctica___media_library_original_550_309.jpg\", \"IcebergAntarctica___media_library_original_460_259.jpg\", \"IcebergAntarctica___media_library_original_385_217.jpg\", \"IcebergAntarctica___media_library_original_322_181.jpg\", \"IcebergAntarctica___media_library_original_269_151.jpg\", \"IcebergAntarctica___media_library_original_225_127.jpg\", \"IcebergAntarctica___media_library_original_188_106.jpg\", \"IcebergAntarctica___media_library_original_158_89.jpg\"], \"base64svg\": \"data:image/svg+xml;base64,PCFET0NUWVBFIHN2ZyBQVUJMSUMgIi0vL1czQy8vRFREIFNWRyAxLjEvL0VOIiAiaHR0cDovL3d3dy53My5vcmcvR3JhcGhpY3MvU1ZHLzEuMS9EVEQvc3ZnMTEuZHRkIj4KPHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHg9IjAiCiB5PSIwIiB2aWV3Qm94PSIwIDAgMTkyMCAxMDgwIj4KCTxpbWFnZSB3aWR0aD0iMTkyMCIgaGVpZ2h0PSIxMDgwIiB4bGluazpocmVmPSJkYXRhOmltYWdlL2pwZWc7YmFzZTY0LC85ai80QUFRU2taSlJnQUJBUUVBWUFCZ0FBRC8vZ0E3UTFKRlFWUlBVam9nWjJRdGFuQmxaeUIyTVM0d0lDaDFjMmx1WnlCSlNrY2dTbEJGUnlCMk9EQXBMQ0J4ZFdGc2FYUjVJRDBnT1RBSy85c0FRd0FEQWdJREFnSURBd01EQkFNREJBVUlCUVVFQkFVS0J3Y0dDQXdLREF3TENnc0xEUTRTRUEwT0VRNExDeEFXRUJFVEZCVVZGUXdQRnhnV0ZCZ1NGQlVVLzlzQVF3RURCQVFGQkFVSkJRVUpGQTBMRFJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVUvOEFBRVFnQUVnQWdBd0VpQUFJUkFRTVJBZi9FQUI4QUFBRUZBUUVCQVFFQkFBQUFBQUFBQUFBQkFnTUVCUVlIQ0FrS0MvL0VBTFVRQUFJQkF3TUNCQU1GQlFRRUFBQUJmUUVDQXdBRUVRVVNJVEZCQmhOUllRY2ljUlF5Z1pHaENDTkNzY0VWVXRId0pETmljb0lKQ2hZWEdCa2FKU1luS0NrcU5EVTJOemc1T2tORVJVWkhTRWxLVTFSVlZsZFlXVnBqWkdWbVoyaHBhbk4wZFhaM2VIbDZnNFNGaG9lSWlZcVNrNVNWbHBlWW1acWlvNlNscHFlb3FhcXlzN1MxdHJlNHVickN3OFRGeHNmSXljclMwOVRWMXRmWTJkcmg0dVBrNWVibjZPbnE4Zkx6OVBYMjkvajUrdi9FQUI4QkFBTUJBUUVCQVFFQkFRRUFBQUFBQUFBQkFnTUVCUVlIQ0FrS0MvL0VBTFVSQUFJQkFnUUVBd1FIQlFRRUFBRUNkd0FCQWdNUkJBVWhNUVlTUVZFSFlYRVRJaktCQ0JSQ2thR3h3UWtqTTFMd0ZXSnkwUW9XSkRUaEpmRVhHQmthSmljb0tTbzFOamM0T1RwRFJFVkdSMGhKU2xOVVZWWlhXRmxhWTJSbFptZG9hV3B6ZEhWMmQzaDVlb0tEaElXR2g0aUppcEtUbEpXV2w1aVptcUtqcEtXbXA2aXBxckt6dExXMnQ3aTV1c0xEeE1YR3g4akp5dExUMU5YVzE5aloydUxqNU9YbTUranA2dkx6OVBYMjkvajUrdi9hQUF3REFRQUNFUU1SQUQ4QThMc3ZoVmR5RVlCcnE5RytHMDlpTjBncjFUU3RIdUVtdzBSL0t1aHZORGtGaTVFUnpqMHI2bjZ2cHVlSjlhVjlqeDZUd1REY3hFT3dGWlUzd1lUVUczbytRZlN0SHhqZDMxZzVpalYxRzd0Vy93Q0M5VXUvS2lqa1AzaDNyZ3JVcWtJdVVYc2QxR3ZDY2xHU1BjYkdOZk1IeWo4cTFycEYreXR3T25wUlJYdE04SThSK0lFU2VhM3lMMTlLd3RQK1Zvc2NmU2lpdWJGZjd0STN3Mys4eFAvWiI+Cgk8L2ltYWdlPgo8L3N2Zz4=\"}}', 1, '2023-12-03 19:35:59', '2023-12-03 19:36:06'),
(44, 'App\\Models\\PortfolioItem', 4, '53bfb485-a3a5-4f3b-9473-a3861f584a72', 'thumbnail', 'bing_wallpaper_SmokyFireflies_1920x1080', 'bing_wallpaper_SmokyFireflies_1920x1080.jpg', 'image/jpeg', 'media', 'media', 319909, '[]', '[]', '[]', '{\"media_library_original\": {\"urls\": [\"bing_wallpaper_SmokyFireflies_1920x1080___media_library_original_1920_1080.jpg\", \"bing_wallpaper_SmokyFireflies_1920x1080___media_library_original_1606_903.jpg\", \"bing_wallpaper_SmokyFireflies_1920x1080___media_library_original_1344_756.jpg\", \"bing_wallpaper_SmokyFireflies_1920x1080___media_library_original_1124_632.jpg\", \"bing_wallpaper_SmokyFireflies_1920x1080___media_library_original_940_529.jpg\", \"bing_wallpaper_SmokyFireflies_1920x1080___media_library_original_787_443.jpg\", \"bing_wallpaper_SmokyFireflies_1920x1080___media_library_original_658_370.jpg\", \"bing_wallpaper_SmokyFireflies_1920x1080___media_library_original_550_309.jpg\", \"bing_wallpaper_SmokyFireflies_1920x1080___media_library_original_460_259.jpg\", \"bing_wallpaper_SmokyFireflies_1920x1080___media_library_original_385_217.jpg\"], \"base64svg\": \"data:image/svg+xml;base64,PCFET0NUWVBFIHN2ZyBQVUJMSUMgIi0vL1czQy8vRFREIFNWRyAxLjEvL0VOIiAiaHR0cDovL3d3dy53My5vcmcvR3JhcGhpY3MvU1ZHLzEuMS9EVEQvc3ZnMTEuZHRkIj4KPHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHg9IjAiCiB5PSIwIiB2aWV3Qm94PSIwIDAgMTkyMCAxMDgwIj4KCTxpbWFnZSB3aWR0aD0iMTkyMCIgaGVpZ2h0PSIxMDgwIiB4bGluazpocmVmPSJkYXRhOmltYWdlL2pwZWc7YmFzZTY0LC85ai80QUFRU2taSlJnQUJBUUVBWUFCZ0FBRC8vZ0E3UTFKRlFWUlBVam9nWjJRdGFuQmxaeUIyTVM0d0lDaDFjMmx1WnlCSlNrY2dTbEJGUnlCMk9EQXBMQ0J4ZFdGc2FYUjVJRDBnT1RBSy85c0FRd0FEQWdJREFnSURBd01EQkFNREJBVUlCUVVFQkFVS0J3Y0dDQXdLREF3TENnc0xEUTRTRUEwT0VRNExDeEFXRUJFVEZCVVZGUXdQRnhnV0ZCZ1NGQlVVLzlzQVF3RURCQVFGQkFVSkJRVUpGQTBMRFJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVUvOEFBRVFnQUVnQWdBd0VpQUFJUkFRTVJBZi9FQUI4QUFBRUZBUUVCQVFFQkFBQUFBQUFBQUFBQkFnTUVCUVlIQ0FrS0MvL0VBTFVRQUFJQkF3TUNCQU1GQlFRRUFBQUJmUUVDQXdBRUVRVVNJVEZCQmhOUllRY2ljUlF5Z1pHaENDTkNzY0VWVXRId0pETmljb0lKQ2hZWEdCa2FKU1luS0NrcU5EVTJOemc1T2tORVJVWkhTRWxLVTFSVlZsZFlXVnBqWkdWbVoyaHBhbk4wZFhaM2VIbDZnNFNGaG9lSWlZcVNrNVNWbHBlWW1acWlvNlNscHFlb3FhcXlzN1MxdHJlNHVickN3OFRGeHNmSXljclMwOVRWMXRmWTJkcmg0dVBrNWVibjZPbnE4Zkx6OVBYMjkvajUrdi9FQUI4QkFBTUJBUUVCQVFFQkFRRUFBQUFBQUFBQkFnTUVCUVlIQ0FrS0MvL0VBTFVSQUFJQkFnUUVBd1FIQlFRRUFBRUNkd0FCQWdNUkJBVWhNUVlTUVZFSFlYRVRJaktCQ0JSQ2thR3h3UWtqTTFMd0ZXSnkwUW9XSkRUaEpmRVhHQmthSmljb0tTbzFOamM0T1RwRFJFVkdSMGhKU2xOVVZWWlhXRmxhWTJSbFptZG9hV3B6ZEhWMmQzaDVlb0tEaElXR2g0aUppcEtUbEpXV2w1aVptcUtqcEtXbXA2aXBxckt6dExXMnQ3aTV1c0xEeE1YR3g4akp5dExUMU5YVzE5aloydUxqNU9YbTUranA2dkx6OVBYMjkvajUrdi9hQUF3REFRQUNFUU1SQUQ4QS9PTFI1VHZVQ3VudTU1STdQTGphdGNUcEY5NU02NTlhOUwwMjN0ZkV0c3R1MHl4TmpqSnJydzlLTlZOWDFQbnNSTDJjbGZZNHFiVVVLc0FlYTU3VUx2ZS9GZC9yM3d5dk5QaGVXTjFraUhPVk5lYmFoRTF2S3lPT1FhNTZsQ2RMNGtkdUhkT2Z3TzVac2Z2Q3VoMCtSa2tYYXhYNkdpaW9wZkVqSEVmRWVoV0UwajZOSnVrWnZsN2ttdklQRS84QXgvU2ZXaWl2YnhQOENKeTRIK05JLzlrPSI+Cgk8L2ltYWdlPgo8L3N2Zz4=\"}}', 1, '2023-12-03 20:59:34', '2023-12-03 20:59:39'),
(45, 'App\\Models\\PortfolioItem', 5, 'eb8db157-8c30-4612-82b0-74b807b34b05', 'thumbnail', 'bing_wallpaper_HiddenBeach_1920x1080', 'bing_wallpaper_HiddenBeach_1920x1080.jpg', 'image/jpeg', 'media', 'media', 263529, '[]', '[]', '[]', '{\"media_library_original\": {\"urls\": [\"bing_wallpaper_HiddenBeach_1920x1080___media_library_original_1920_1080.jpg\", \"bing_wallpaper_HiddenBeach_1920x1080___media_library_original_1606_903.jpg\", \"bing_wallpaper_HiddenBeach_1920x1080___media_library_original_1343_755.jpg\", \"bing_wallpaper_HiddenBeach_1920x1080___media_library_original_1124_632.jpg\", \"bing_wallpaper_HiddenBeach_1920x1080___media_library_original_940_529.jpg\", \"bing_wallpaper_HiddenBeach_1920x1080___media_library_original_787_443.jpg\", \"bing_wallpaper_HiddenBeach_1920x1080___media_library_original_658_370.jpg\", \"bing_wallpaper_HiddenBeach_1920x1080___media_library_original_550_309.jpg\", \"bing_wallpaper_HiddenBeach_1920x1080___media_library_original_460_259.jpg\", \"bing_wallpaper_HiddenBeach_1920x1080___media_library_original_385_217.jpg\"], \"base64svg\": \"data:image/svg+xml;base64,PCFET0NUWVBFIHN2ZyBQVUJMSUMgIi0vL1czQy8vRFREIFNWRyAxLjEvL0VOIiAiaHR0cDovL3d3dy53My5vcmcvR3JhcGhpY3MvU1ZHLzEuMS9EVEQvc3ZnMTEuZHRkIj4KPHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHg9IjAiCiB5PSIwIiB2aWV3Qm94PSIwIDAgMTkyMCAxMDgwIj4KCTxpbWFnZSB3aWR0aD0iMTkyMCIgaGVpZ2h0PSIxMDgwIiB4bGluazpocmVmPSJkYXRhOmltYWdlL2pwZWc7YmFzZTY0LC85ai80QUFRU2taSlJnQUJBUUVBWUFCZ0FBRC8vZ0E3UTFKRlFWUlBVam9nWjJRdGFuQmxaeUIyTVM0d0lDaDFjMmx1WnlCSlNrY2dTbEJGUnlCMk9EQXBMQ0J4ZFdGc2FYUjVJRDBnT1RBSy85c0FRd0FEQWdJREFnSURBd01EQkFNREJBVUlCUVVFQkFVS0J3Y0dDQXdLREF3TENnc0xEUTRTRUEwT0VRNExDeEFXRUJFVEZCVVZGUXdQRnhnV0ZCZ1NGQlVVLzlzQVF3RURCQVFGQkFVSkJRVUpGQTBMRFJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVUvOEFBRVFnQUVnQWdBd0VpQUFJUkFRTVJBZi9FQUI4QUFBRUZBUUVCQVFFQkFBQUFBQUFBQUFBQkFnTUVCUVlIQ0FrS0MvL0VBTFVRQUFJQkF3TUNCQU1GQlFRRUFBQUJmUUVDQXdBRUVRVVNJVEZCQmhOUllRY2ljUlF5Z1pHaENDTkNzY0VWVXRId0pETmljb0lKQ2hZWEdCa2FKU1luS0NrcU5EVTJOemc1T2tORVJVWkhTRWxLVTFSVlZsZFlXVnBqWkdWbVoyaHBhbk4wZFhaM2VIbDZnNFNGaG9lSWlZcVNrNVNWbHBlWW1acWlvNlNscHFlb3FhcXlzN1MxdHJlNHVickN3OFRGeHNmSXljclMwOVRWMXRmWTJkcmg0dVBrNWVibjZPbnE4Zkx6OVBYMjkvajUrdi9FQUI4QkFBTUJBUUVCQVFFQkFRRUFBQUFBQUFBQkFnTUVCUVlIQ0FrS0MvL0VBTFVSQUFJQkFnUUVBd1FIQlFRRUFBRUNkd0FCQWdNUkJBVWhNUVlTUVZFSFlYRVRJaktCQ0JSQ2thR3h3UWtqTTFMd0ZXSnkwUW9XSkRUaEpmRVhHQmthSmljb0tTbzFOamM0T1RwRFJFVkdSMGhKU2xOVVZWWlhXRmxhWTJSbFptZG9hV3B6ZEhWMmQzaDVlb0tEaElXR2g0aUppcEtUbEpXV2w1aVptcUtqcEtXbXA2aXBxckt6dExXMnQ3aTV1c0xEeE1YR3g4akp5dExUMU5YVzE5aloydUxqNU9YbTUranA2dkx6OVBYMjkvajUrdi9hQUF3REFRQUNFUU1SQUQ4QStZdmhWOENiL3dBYnlwNVh5eGs5VFh1MFg3SWNsckV2bXVXWURvS3h2Z3JwUGlNUnhQcDBnalRQclgwNXB5K0s3ZTNqbGtDVHNCMHJnd21Od2RIU3ZUNW1SbUdBeCtKLzNlcnlvOEhoL1krTjlHUzZNcWVwRmZQdnh5K0M3L0R5OE1RVXZHZWhyN3c4WC9FVHhYcG1rT0k3QUFxT3dyNGkrUGZ4SzFqV3BUL2FGc1F5bjByYkUxOFBqVmZEVXVWbU9CdzJKeTk4dUtyYzY4OXoxcjRJenlMYUppUng5R05mVFhocWVSb1Z6SXg0N3NhS0s4Q3A4UjlQVCtFaDhYRW13bHlTZURYdy93REgyTmYzcDJqT2ZTaWl2cHNzL2dTUGs4MS8zaUIvLzlrPSI+Cgk8L2ltYWdlPgo8L3N2Zz4=\"}}', 1, '2023-12-03 20:59:39', '2023-12-03 20:59:44');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(8, '2023_11_28_081545_create_post_categories_table', 2),
(9, '2023_11_28_081743_create_post_tags_table', 2),
(10, '2023_11_28_082840_create_posts_table', 2),
(11, '2023_11_28_122125_create_media_table', 3),
(13, '2023_12_02_122558_create_client_reviews_table', 4),
(16, '2023_12_03_124109_create_portfolios_table', 5),
(17, '2023_12_03_124145_create_portfolio_items_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint UNSIGNED NOT NULL,
  `order_column` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `order_column`, `title`, `seo_slug`, `created_at`, `updated_at`) VALUES
(1, 1, 'Web Dev', 'web-dev', '2023-12-03 08:09:10', '2023-12-03 08:09:10');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_items`
--

CREATE TABLE `portfolio_items` (
  `id` bigint UNSIGNED NOT NULL,
  `order_column` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `portfolio_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_items`
--

INSERT INTO `portfolio_items` (`id`, `order_column`, `title`, `portfolio_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'Nice b', 1, '2023-12-03 08:09:10', '2023-12-03 19:36:15'),
(3, 1, 'Roko', 1, '2023-12-03 19:35:59', '2023-12-03 19:36:15'),
(4, 3, 'xcv', 1, '2023-12-03 20:59:34', '2023-12-03 20:59:34'),
(5, 4, 'ttt', 1, '2023-12-03 20:59:39', '2023-12-03 20:59:39');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_meta_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_meta_keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `seo_slug`, `seo_meta_title`, `seo_meta_description`, `seo_meta_keywords`, `created_at`, `updated_at`) VALUES
(5, 'This is title', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;</p>', 'this-is-title', NULL, NULL, NULL, '2023-12-03 19:17:04', '2024-11-22 07:34:28');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `title`, `seo_slug`, `created_at`, `updated_at`) VALUES
(2, 'Web Development', 'web-development', NULL, NULL),
(3, 'Digital Marketing', 'digital-marketing', NULL, NULL),
(4, 'Seo', 'seo', '2023-11-28 21:19:21', '2023-11-28 21:19:21');

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `title`, `seo_slug`, `created_at`, `updated_at`) VALUES
(1, 'Informations', 'informations', NULL, '2023-11-28 21:31:14'),
(2, 'Us', 'us', '2023-11-29 19:10:38', '2023-11-29 19:10:38');

-- --------------------------------------------------------

--
-- Table structure for table `tags_posts`
--

CREATE TABLE `tags_posts` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `post_tag_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'info@premierproagency.com', NULL, '$2y$12$HrGYXUESvXC0lqgWZ/jrC.7HkoQKOvE3/uUAb2EJjlSOceCuOqaU6', '7K2SOEJMfybfve9WpALPcuRJ7c8ClnloZMzwWwWpsOrrGCVQIpAXOP6rpsd2', '2023-11-22 09:13:03', '2023-11-22 09:13:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories_posts`
--
ALTER TABLE `categories_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_posts_post_id_foreign` (`post_id`),
  ADD KEY `categories_posts_post_category_id_foreign` (`post_category_id`);

--
-- Indexes for table `client_reviews`
--
ALTER TABLE `client_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

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
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_items`
--
ALTER TABLE `portfolio_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portfolio_items_portfolio_id_foreign` (`portfolio_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags_posts`
--
ALTER TABLE `tags_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_posts_post_id_foreign` (`post_id`),
  ADD KEY `tags_posts_post_tag_id_foreign` (`post_tag_id`);

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
-- AUTO_INCREMENT for table `categories_posts`
--
ALTER TABLE `categories_posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `client_reviews`
--
ALTER TABLE `client_reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `portfolio_items`
--
ALTER TABLE `portfolio_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tags_posts`
--
ALTER TABLE `tags_posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories_posts`
--
ALTER TABLE `categories_posts`
  ADD CONSTRAINT `categories_posts_post_category_id_foreign` FOREIGN KEY (`post_category_id`) REFERENCES `post_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categories_posts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `portfolio_items`
--
ALTER TABLE `portfolio_items`
  ADD CONSTRAINT `portfolio_items_portfolio_id_foreign` FOREIGN KEY (`portfolio_id`) REFERENCES `portfolios` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tags_posts`
--
ALTER TABLE `tags_posts`
  ADD CONSTRAINT `tags_posts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tags_posts_post_tag_id_foreign` FOREIGN KEY (`post_tag_id`) REFERENCES `post_tags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
