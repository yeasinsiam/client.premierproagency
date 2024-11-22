-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 20, 2023 at 03:47 PM
-- Server version: 8.0.34
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `premierp_main`
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
(1, 2, 3, NULL, NULL),
(2, 2, 4, NULL, NULL),
(5, 5, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `client_reviews`
--

CREATE TABLE `client_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `order_column` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(21, 'App\\Models\\Post', 2, '833e725d-1825-4792-ac46-0cfdda44a873', 'thumbnail', 'bing_wallpaper_RebelBase_1920x1080', 'bing_wallpaper_RebelBase_1920x1080.jpg', 'image/jpeg', 'media', 'media', 180327, '[]', '[]', '[]', '{\"media_library_original\": {\"urls\": [\"bing_wallpaper_RebelBase_1920x1080___media_library_original_508_650.jpg\", \"bing_wallpaper_RebelBase_1920x1080___media_library_original_425_544.jpg\", \"bing_wallpaper_RebelBase_1920x1080___media_library_original_355_454.jpg\", \"bing_wallpaper_RebelBase_1920x1080___media_library_original_297_380.jpg\", \"bing_wallpaper_RebelBase_1920x1080___media_library_original_248_317.jpg\", \"bing_wallpaper_RebelBase_1920x1080___media_library_original_208_266.jpg\", \"bing_wallpaper_RebelBase_1920x1080___media_library_original_174_223.jpg\", \"bing_wallpaper_RebelBase_1920x1080___media_library_original_145_186.jpg\", \"bing_wallpaper_RebelBase_1920x1080___media_library_original_121_155.jpg\"], \"base64svg\": \"data:image/svg+xml;base64,PCFET0NUWVBFIHN2ZyBQVUJMSUMgIi0vL1czQy8vRFREIFNWRyAxLjEvL0VOIiAiaHR0cDovL3d3dy53My5vcmcvR3JhcGhpY3MvU1ZHLzEuMS9EVEQvc3ZnMTEuZHRkIj4KPHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHg9IjAiCiB5PSIwIiB2aWV3Qm94PSIwIDAgNTA4IDY1MCI+Cgk8aW1hZ2Ugd2lkdGg9IjUwOCIgaGVpZ2h0PSI2NTAiIHhsaW5rOmhyZWY9ImRhdGE6aW1hZ2UvanBlZztiYXNlNjQsLzlqLzRBQVFTa1pKUmdBQkFRRUFZQUJnQUFELy9nQTdRMUpGUVZSUFVqb2daMlF0YW5CbFp5QjJNUzR3SUNoMWMybHVaeUJKU2tjZ1NsQkZSeUIyT0RBcExDQnhkV0ZzYVhSNUlEMGdPVEFLLzlzQVF3QURBZ0lEQWdJREF3TURCQU1EQkFVSUJRVUVCQVVLQndjR0NBd0tEQXdMQ2dzTERRNFNFQTBPRVE0TEN4QVdFQkVURkJVVkZRd1BGeGdXRkJnU0ZCVVUvOXNBUXdFREJBUUZCQVVKQlFVSkZBMExEUlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVS84QUFFUWdBS1FBZ0F3RWlBQUlSQVFNUkFmL0VBQjhBQUFFRkFRRUJBUUVCQUFBQUFBQUFBQUFCQWdNRUJRWUhDQWtLQy8vRUFMVVFBQUlCQXdNQ0JBTUZCUVFFQUFBQmZRRUNBd0FFRVFVU0lURkJCaE5SWVFjaWNSUXlnWkdoQ0NOQ3NjRVZVdEh3SkROaWNvSUpDaFlYR0JrYUpTWW5LQ2txTkRVMk56ZzVPa05FUlVaSFNFbEtVMVJWVmxkWVdWcGpaR1ZtWjJocGFuTjBkWFozZUhsNmc0U0Zob2VJaVlxU2s1U1ZscGVZbVpxaW82U2xwcWVvcWFxeXM3UzF0cmU0dWJyQ3c4VEZ4c2ZJeWNyUzA5VFYxdGZZMmRyaDR1UGs1ZWJuNk9ucThmTHo5UFgyOS9qNSt2L0VBQjhCQUFNQkFRRUJBUUVCQVFFQUFBQUFBQUFCQWdNRUJRWUhDQWtLQy8vRUFMVVJBQUlCQWdRRUF3UUhCUVFFQUFFQ2R3QUJBZ01SQkFVaE1RWVNRVkVIWVhFVElqS0JDQlJDa2FHeHdRa2pNMUx3RldKeTBRb1dKRFRoSmZFWEdCa2FKaWNvS1NvMU5qYzRPVHBEUkVWR1IwaEpTbE5VVlZaWFdGbGFZMlJsWm1kb2FXcHpkSFYyZDNoNWVvS0RoSVdHaDRpSmlwS1RsSldXbDVpWm1xS2pwS1dtcDZpcHFyS3p0TFcydDdpNXVzTER4TVhHeDhqSnl0TFQxTlhXMTlqWjJ1TGo1T1htNStqcDZ2THo5UFgyOS9qNSt2L2FBQXdEQVFBQ0VRTVJBRDhBKzluZGxCNHFxN1NzZUJ4V3M3V3cvakZjeDQ2OFZRZUdkTU0wWkRTSG9LNG5YNUZ6TU9SU2RrYkVFTGtjMUtZTnYxcmh2QVh4Ry90d3lMZUw1ZU9sZGRKNHAwNVd3WlJTaGlmYUxtanNEaEdEdEkrYzdUNHk2NWR5WmUxWlY5NlRWL0dOeDQwa2p0WTFQbUo5NEUxekY1NHNzL01IbEZkcDlLcTJqbTFOemZXY2hFakFtdndURDhWWXh5dGlsYUxQWVdHcHdhbERkSGIyR29TK0hHYVM2S29nSHJWSy93RGlQYWdsMWw0K3RlTDY3cm1wWGtNOGwxZHZ0QlB5NXJqMDhXaVRkRkx1RWE5L1d2cEZuTldQKzdheFc1eTE2VUtzcnkwTXZ3djRwbHZvaUpybkdQZXZXdkNIaXlDUzMremxsZHVuTmZOUGhUNzVyMUR3VC95RkVyeHMyd0ZLVVplV29VS3N0RDBueERwZHZMQkxLd3hHUmtnVjU3SGNhU0paRWRWS0RnMTZYcmYvQUNCWnY5MnZBcGY5ZGRmV3ZFeXFtNjBKS1Vub2FWM3l0V1AvMlE9PSI+Cgk8L2ltYWdlPgo8L3N2Zz4=\"}}', 1, '2023-11-30 02:09:26', '2023-11-30 02:09:28'),
(24, 'App\\Models\\Post', 2, '586ea9d5-c6f6-4164-97bb-e1c3051114b6', 'thumbnail-large', 'bing_wallpaper_BlackGrouseLekking_1920x1080', 'bing_wallpaper_BlackGrouseLekking_1920x1080.jpg', 'image/jpeg', 'media', 'media', 329262, '[]', '[]', '[]', '{\"media_library_original\": {\"urls\": [\"bing_wallpaper_BlackGrouseLekking_1920x1080___media_library_original_1920_1080.jpg\", \"bing_wallpaper_BlackGrouseLekking_1920x1080___media_library_original_1606_903.jpg\", \"bing_wallpaper_BlackGrouseLekking_1920x1080___media_library_original_1344_756.jpg\", \"bing_wallpaper_BlackGrouseLekking_1920x1080___media_library_original_1124_632.jpg\", \"bing_wallpaper_BlackGrouseLekking_1920x1080___media_library_original_940_529.jpg\", \"bing_wallpaper_BlackGrouseLekking_1920x1080___media_library_original_787_443.jpg\", \"bing_wallpaper_BlackGrouseLekking_1920x1080___media_library_original_658_370.jpg\", \"bing_wallpaper_BlackGrouseLekking_1920x1080___media_library_original_550_309.jpg\", \"bing_wallpaper_BlackGrouseLekking_1920x1080___media_library_original_460_259.jpg\", \"bing_wallpaper_BlackGrouseLekking_1920x1080___media_library_original_385_217.jpg\"], \"base64svg\": \"data:image/svg+xml;base64,PCFET0NUWVBFIHN2ZyBQVUJMSUMgIi0vL1czQy8vRFREIFNWRyAxLjEvL0VOIiAiaHR0cDovL3d3dy53My5vcmcvR3JhcGhpY3MvU1ZHLzEuMS9EVEQvc3ZnMTEuZHRkIj4KPHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHg9IjAiCiB5PSIwIiB2aWV3Qm94PSIwIDAgMTkyMCAxMDgwIj4KCTxpbWFnZSB3aWR0aD0iMTkyMCIgaGVpZ2h0PSIxMDgwIiB4bGluazpocmVmPSJkYXRhOmltYWdlL2pwZWc7YmFzZTY0LC85ai80QUFRU2taSlJnQUJBUUVBWUFCZ0FBRC8vZ0E3UTFKRlFWUlBVam9nWjJRdGFuQmxaeUIyTVM0d0lDaDFjMmx1WnlCSlNrY2dTbEJGUnlCMk9EQXBMQ0J4ZFdGc2FYUjVJRDBnT1RBSy85c0FRd0FEQWdJREFnSURBd01EQkFNREJBVUlCUVVFQkFVS0J3Y0dDQXdLREF3TENnc0xEUTRTRUEwT0VRNExDeEFXRUJFVEZCVVZGUXdQRnhnV0ZCZ1NGQlVVLzlzQVF3RURCQVFGQkFVSkJRVUpGQTBMRFJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVUvOEFBRVFnQUVnQWdBd0VpQUFJUkFRTVJBZi9FQUI4QUFBRUZBUUVCQVFFQkFBQUFBQUFBQUFBQkFnTUVCUVlIQ0FrS0MvL0VBTFVRQUFJQkF3TUNCQU1GQlFRRUFBQUJmUUVDQXdBRUVRVVNJVEZCQmhOUllRY2ljUlF5Z1pHaENDTkNzY0VWVXRId0pETmljb0lKQ2hZWEdCa2FKU1luS0NrcU5EVTJOemc1T2tORVJVWkhTRWxLVTFSVlZsZFlXVnBqWkdWbVoyaHBhbk4wZFhaM2VIbDZnNFNGaG9lSWlZcVNrNVNWbHBlWW1acWlvNlNscHFlb3FhcXlzN1MxdHJlNHVickN3OFRGeHNmSXljclMwOVRWMXRmWTJkcmg0dVBrNWVibjZPbnE4Zkx6OVBYMjkvajUrdi9FQUI4QkFBTUJBUUVCQVFFQkFRRUFBQUFBQUFBQkFnTUVCUVlIQ0FrS0MvL0VBTFVSQUFJQkFnUUVBd1FIQlFRRUFBRUNkd0FCQWdNUkJBVWhNUVlTUVZFSFlYRVRJaktCQ0JSQ2thR3h3UWtqTTFMd0ZXSnkwUW9XSkRUaEpmRVhHQmthSmljb0tTbzFOamM0T1RwRFJFVkdSMGhKU2xOVVZWWlhXRmxhWTJSbFptZG9hV3B6ZEhWMmQzaDVlb0tEaElXR2g0aUppcEtUbEpXV2w1aVptcUtqcEtXbXA2aXBxckt6dExXMnQ3aTV1c0xEeE1YR3g4akp5dExUMU5YVzE5aloydUxqNU9YbTUranA2dkx6OVBYMjkvajUrdi9hQUF3REFRQUNFUU1SQUQ4QStHZENQMjNVNGdCbGl3cjFhK3NMcU1SeENOZzdKd0NLMlBEWDdNSGl2Uk5VZ3U1TE1za2JCaU1WNkxyWHcrOFIrSjlSald5MDFvR2dUYVR0NjF4U3cwdVIyV3AwUXJybVYyZU0rSExkN1NXNlc1RzA0NzF6dmlhV0NGV1pEa2sxNkMvd1M4ZFgvaWVTMGEza2pWenl3QnhYUWF4K3lSNG9sdEFGUXM5Y3p3VldYSzMwT2o2MVRqekpkVDlBVEVoQitSZnlwbWp3UkxjU0VSb0Q2aFJSUlgxY3RqNXhiaUczaUdwRnZLVGQ2N1JtdEYwWCs2UHlvb3BnZi8vWiI+Cgk8L2ltYWdlPgo8L3N2Zz4=\"}}', 4, '2023-11-30 02:45:09', '2023-11-30 02:45:14'),
(25, 'App\\Models\\Post', 2, '9d5f7468-9dd3-4a22-9611-61d1d9a0de22', 'thumbnail-mini', 'bing_wallpaper_RebelBase_1920x1080', 'bing_wallpaper_RebelBase_1920x1080.jpg', 'image/jpeg', 'media', 'media', 174567, '[]', '[]', '[]', '{\"media_library_original\": {\"urls\": [\"bing_wallpaper_RebelBase_1920x1080___media_library_original_508_650.jpg\", \"bing_wallpaper_RebelBase_1920x1080___media_library_original_425_544.jpg\", \"bing_wallpaper_RebelBase_1920x1080___media_library_original_355_454.jpg\", \"bing_wallpaper_RebelBase_1920x1080___media_library_original_297_380.jpg\", \"bing_wallpaper_RebelBase_1920x1080___media_library_original_248_317.jpg\", \"bing_wallpaper_RebelBase_1920x1080___media_library_original_208_266.jpg\", \"bing_wallpaper_RebelBase_1920x1080___media_library_original_174_223.jpg\", \"bing_wallpaper_RebelBase_1920x1080___media_library_original_145_186.jpg\"], \"base64svg\": \"data:image/svg+xml;base64,PCFET0NUWVBFIHN2ZyBQVUJMSUMgIi0vL1czQy8vRFREIFNWRyAxLjEvL0VOIiAiaHR0cDovL3d3dy53My5vcmcvR3JhcGhpY3MvU1ZHLzEuMS9EVEQvc3ZnMTEuZHRkIj4KPHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHg9IjAiCiB5PSIwIiB2aWV3Qm94PSIwIDAgNTA4IDY1MCI+Cgk8aW1hZ2Ugd2lkdGg9IjUwOCIgaGVpZ2h0PSI2NTAiIHhsaW5rOmhyZWY9ImRhdGE6aW1hZ2UvanBlZztiYXNlNjQsLzlqLzRBQVFTa1pKUmdBQkFRRUFZQUJnQUFELy9nQTdRMUpGUVZSUFVqb2daMlF0YW5CbFp5QjJNUzR3SUNoMWMybHVaeUJKU2tjZ1NsQkZSeUIyT0RBcExDQnhkV0ZzYVhSNUlEMGdPVEFLLzlzQVF3QURBZ0lEQWdJREF3TURCQU1EQkFVSUJRVUVCQVVLQndjR0NBd0tEQXdMQ2dzTERRNFNFQTBPRVE0TEN4QVdFQkVURkJVVkZRd1BGeGdXRkJnU0ZCVVUvOXNBUXdFREJBUUZCQVVKQlFVSkZBMExEUlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVS84QUFFUWdBS1FBZ0F3RWlBQUlSQVFNUkFmL0VBQjhBQUFFRkFRRUJBUUVCQUFBQUFBQUFBQUFCQWdNRUJRWUhDQWtLQy8vRUFMVVFBQUlCQXdNQ0JBTUZCUVFFQUFBQmZRRUNBd0FFRVFVU0lURkJCaE5SWVFjaWNSUXlnWkdoQ0NOQ3NjRVZVdEh3SkROaWNvSUpDaFlYR0JrYUpTWW5LQ2txTkRVMk56ZzVPa05FUlVaSFNFbEtVMVJWVmxkWVdWcGpaR1ZtWjJocGFuTjBkWFozZUhsNmc0U0Zob2VJaVlxU2s1U1ZscGVZbVpxaW82U2xwcWVvcWFxeXM3UzF0cmU0dWJyQ3c4VEZ4c2ZJeWNyUzA5VFYxdGZZMmRyaDR1UGs1ZWJuNk9ucThmTHo5UFgyOS9qNSt2L0VBQjhCQUFNQkFRRUJBUUVCQVFFQUFBQUFBQUFCQWdNRUJRWUhDQWtLQy8vRUFMVVJBQUlCQWdRRUF3UUhCUVFFQUFFQ2R3QUJBZ01SQkFVaE1RWVNRVkVIWVhFVElqS0JDQlJDa2FHeHdRa2pNMUx3RldKeTBRb1dKRFRoSmZFWEdCa2FKaWNvS1NvMU5qYzRPVHBEUkVWR1IwaEpTbE5VVlZaWFdGbGFZMlJsWm1kb2FXcHpkSFYyZDNoNWVvS0RoSVdHaDRpSmlwS1RsSldXbDVpWm1xS2pwS1dtcDZpcHFyS3p0TFcydDdpNXVzTER4TVhHeDhqSnl0TFQxTlhXMTlqWjJ1TGo1T1htNStqcDZ2THo5UFgyOS9qNSt2L2FBQXdEQVFBQ0VRTVJBRDhBKzhaTUxrNHlhaTg5MjRBTmE3VzBPZnZDdVE4Y2VNclh3aEdtUUhkdWdGY2p4UElyeUJVdVoyUjBNUWQxd2FlRU1kWXZoSHhqYStJYkR6eVJHUjFCclliVkxJbi9BRnkvblJIRWN5dWdjRkhSbmd0ajhlSmIxZ1dna1JQV3NieEo0bWs4WWFpajI2dE1rZlVWeTgrcFdTN29JOW9CR0FhcFcrcDNYaGJTN2lhMllTYnVRYS9Ec0x4WlZydDA4VXJKN0hyeHcwS1V1YUx1ZWk2TjRnT2kycnJjSHlCMkdjVld1Zkg4TWJraTRQUHZYZzNpTHhqcWwxQUpycWZhdlhhSzV0dkdzVThPNTVtVGI3MTd5ejJyVGZMUlhORTQ2MUNOU1hOZXdhTDRudTcrTkpua3dBZWVhOVQwalZJTlUwc1FzTjJSelhoZmgzL2tHMTZyNEQvMUZmQ1p0UWhHTGxGV3N6cW96YnNpbDRwME9CWUc4NTlzWVBHYTVTMjBYU0wxQ2tqS29IZk5kbjhUUCtRYlhsOXAvcXo5YXZBS2RYRDgzTTBaMVh5eXRZLy8yUT09Ij4KCTwvaW1hZ2U+Cjwvc3ZnPg==\"}}', 5, '2023-11-30 02:45:50', '2023-11-30 02:45:52'),
(34, 'App\\Models\\Post', 5, '7e4523d6-0450-4f8b-a238-cbb6dfc245a8', 'thumbnail-mini', 'how to increase domain authority 2024 (1)', 'how-to-increase-domain-authority-2024-(1).jpg', 'image/jpeg', 'media', 'media', 139244, '[]', '[]', '[]', '{\"media_library_original\": {\"urls\": [\"how-to-increase-domain-authority-2024-(1)___media_library_original_508_650.jpg\", \"how-to-increase-domain-authority-2024-(1)___media_library_original_425_544.jpg\", \"how-to-increase-domain-authority-2024-(1)___media_library_original_355_454.jpg\", \"how-to-increase-domain-authority-2024-(1)___media_library_original_297_380.jpg\", \"how-to-increase-domain-authority-2024-(1)___media_library_original_248_317.jpg\", \"how-to-increase-domain-authority-2024-(1)___media_library_original_208_266.jpg\", \"how-to-increase-domain-authority-2024-(1)___media_library_original_174_223.jpg\", \"how-to-increase-domain-authority-2024-(1)___media_library_original_145_186.jpg\"], \"base64svg\": \"data:image/svg+xml;base64,PCFET0NUWVBFIHN2ZyBQVUJMSUMgIi0vL1czQy8vRFREIFNWRyAxLjEvL0VOIiAiaHR0cDovL3d3dy53My5vcmcvR3JhcGhpY3MvU1ZHLzEuMS9EVEQvc3ZnMTEuZHRkIj4KPHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHg9IjAiCiB5PSIwIiB2aWV3Qm94PSIwIDAgNTA4IDY1MCI+Cgk8aW1hZ2Ugd2lkdGg9IjUwOCIgaGVpZ2h0PSI2NTAiIHhsaW5rOmhyZWY9ImRhdGE6aW1hZ2UvanBlZztiYXNlNjQsLzlqLzRBQVFTa1pKUmdBQkFRRUFZQUJnQUFELy9nQTdRMUpGUVZSUFVqb2daMlF0YW5CbFp5QjJNUzR3SUNoMWMybHVaeUJKU2tjZ1NsQkZSeUIyTmpJcExDQnhkV0ZzYVhSNUlEMGdPVEFLLzlzQVF3QURBZ0lEQWdJREF3TURCQU1EQkFVSUJRVUVCQVVLQndjR0NBd0tEQXdMQ2dzTERRNFNFQTBPRVE0TEN4QVdFQkVURkJVVkZRd1BGeGdXRkJnU0ZCVVUvOXNBUXdFREJBUUZCQVVKQlFVSkZBMExEUlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVS84QUFFUWdBS1FBZ0F3RVJBQUlSQVFNUkFmL0VBQjhBQUFFRkFRRUJBUUVCQUFBQUFBQUFBQUFCQWdNRUJRWUhDQWtLQy8vRUFMVVFBQUlCQXdNQ0JBTUZCUVFFQUFBQmZRRUNBd0FFRVFVU0lURkJCaE5SWVFjaWNSUXlnWkdoQ0NOQ3NjRVZVdEh3SkROaWNvSUpDaFlYR0JrYUpTWW5LQ2txTkRVMk56ZzVPa05FUlVaSFNFbEtVMVJWVmxkWVdWcGpaR1ZtWjJocGFuTjBkWFozZUhsNmc0U0Zob2VJaVlxU2s1U1ZscGVZbVpxaW82U2xwcWVvcWFxeXM3UzF0cmU0dWJyQ3c4VEZ4c2ZJeWNyUzA5VFYxdGZZMmRyaDR1UGs1ZWJuNk9ucThmTHo5UFgyOS9qNSt2L0VBQjhCQUFNQkFRRUJBUUVCQVFFQUFBQUFBQUFCQWdNRUJRWUhDQWtLQy8vRUFMVVJBQUlCQWdRRUF3UUhCUVFFQUFFQ2R3QUJBZ01SQkFVaE1RWVNRVkVIWVhFVElqS0JDQlJDa2FHeHdRa2pNMUx3RldKeTBRb1dKRFRoSmZFWEdCa2FKaWNvS1NvMU5qYzRPVHBEUkVWR1IwaEpTbE5VVlZaWFdGbGFZMlJsWm1kb2FXcHpkSFYyZDNoNWVvS0RoSVdHaDRpSmlwS1RsSldXbDVpWm1xS2pwS1dtcDZpcHFyS3p0TFcydDdpNXVzTER4TVhHeDhqSnl0TFQxTlhXMTlqWjJ1TGo1T1htNStqcDZ2THo5UFgyOS9qNSt2L2FBQXdEQVFBQ0VRTVJBRDhBL1JuNHJmRW0wK0dmaHliVkx2N2tZelhUUW91dExsUTBybnkxSi93VVIwbnpIRWNPVlU0cm9xMHFWR1hMSjZrU2tvdXpHV0gvQUFVUjA3VVpXamh0dHpMMXBWYWRHakhubExRcE5OcEhhZkQ3OXRqUy9GdmlLUFM1WXZLa2ZwV2FwMDZrT2VtN25kVXdsU2xCVGt0RHYvMnA5Q3RkZCtIMXpEZHZzaHdjbk5lRGpNYld3VU9laXRUdHlyRFF4TmJsbnNmbXROOFB2QkVkMDhSMUJneGJCd2VLeVdJclY2ZnRhbTU3dFhLYWJxV1VkQy9ZL0JiUjRwRE5wdDJ6STNPNEd2enZOK0o2OUtmc2VYUkgyMkI0UG9WNmFxU1BRdmc1OEpyYXg4ZFcxMDB6TzRQZXB5bmlyRVZLcW8yc2pyemJoMm5Td3Q3N0gyRisyWGRTVzN3d3V6R3hYSTV4WDZ4T01KTDNqOGd5cm05dXJINTAyQjhOeWFCSkpjTURkY2tzVHptdmpKVktpeFBKcWZ1VWNLbmh1ZFcyT2wrRjNqRFRvYmVTS1hMSXArVW12RnpqQjRhVlhtYTFPM0xGaVpVcktSN0Y4UFBGT25UZUxiY3hNSTE5VFhqWUxDMDFpRTZhT3JOSXpqZzVlMGtlamZ0bitKZFQ4UWFXTkcwZ2VjSmZsSVhtdnZhMmNVcFZsUmk5VDhVeXpBVHAwM1daOHU2SCt4TjR6MVBTQmVPSFZaQnYyVjB5aFhsTG1pajdiQzV4Z2FkRndxeTFQU2ZBWDdQbzhQNmQ5bTFEVHBXdUY0TEJhK1R6UEI0MnJWOTFIbmYyN0dEYXBTME5mWGZoVk5ZMmJ5YVZZenBkRDdwQ211UExzQmo2V0pUa3REREU1NHExSnhsSSttdEsrQjg3ZUpsdk5SbCswUW9jZ056WDA5SGg2RkxFKzJiUG1QN2Nrc002TVVlMVd1bncyOXVzS1JxRVVZd0JYMmlpa3JIeWNwT1R1eU50Q3NuWXNiYU1rOTl0T3laTjJKL3dqOWgvejZ4Lzk4MFdTQzdMZE1SS3ZTZ0JhQUNnRC8vWiI+Cgk8L2ltYWdlPgo8L3N2Zz4=\"}}', 1, '2023-12-04 01:12:44', '2023-12-04 01:12:44'),
(35, 'App\\Models\\Post', 5, '1f831217-b199-46bf-8c51-8ef722e5094d', 'thumbnail-large', 'how to increase domain authority 2024', 'how-to-increase-domain-authority-2024.jpg', 'image/jpeg', 'media', 'media', 97252, '[]', '[]', '[]', '{\"media_library_original\": {\"urls\": [\"how-to-increase-domain-authority-2024___media_library_original_1080_1080.jpg\", \"how-to-increase-domain-authority-2024___media_library_original_903_903.jpg\", \"how-to-increase-domain-authority-2024___media_library_original_756_756.jpg\", \"how-to-increase-domain-authority-2024___media_library_original_632_632.jpg\", \"how-to-increase-domain-authority-2024___media_library_original_529_529.jpg\", \"how-to-increase-domain-authority-2024___media_library_original_442_442.jpg\", \"how-to-increase-domain-authority-2024___media_library_original_370_370.jpg\"], \"base64svg\": \"data:image/svg+xml;base64,PCFET0NUWVBFIHN2ZyBQVUJMSUMgIi0vL1czQy8vRFREIFNWRyAxLjEvL0VOIiAiaHR0cDovL3d3dy53My5vcmcvR3JhcGhpY3MvU1ZHLzEuMS9EVEQvc3ZnMTEuZHRkIj4KPHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHg9IjAiCiB5PSIwIiB2aWV3Qm94PSIwIDAgMTA4MCAxMDgwIj4KCTxpbWFnZSB3aWR0aD0iMTA4MCIgaGVpZ2h0PSIxMDgwIiB4bGluazpocmVmPSJkYXRhOmltYWdlL2pwZWc7YmFzZTY0LC85ai80QUFRU2taSlJnQUJBUUVBWUFCZ0FBRC8vZ0E3UTFKRlFWUlBVam9nWjJRdGFuQmxaeUIyTVM0d0lDaDFjMmx1WnlCSlNrY2dTbEJGUnlCMk5qSXBMQ0J4ZFdGc2FYUjVJRDBnT1RBSy85c0FRd0FEQWdJREFnSURBd01EQkFNREJBVUlCUVVFQkFVS0J3Y0dDQXdLREF3TENnc0xEUTRTRUEwT0VRNExDeEFXRUJFVEZCVVZGUXdQRnhnV0ZCZ1NGQlVVLzlzQVF3RURCQVFGQkFVSkJRVUpGQTBMRFJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVUvOEFBRVFnQUlBQWdBd0VSQUFJUkFRTVJBZi9FQUI4QUFBRUZBUUVCQVFFQkFBQUFBQUFBQUFBQkFnTUVCUVlIQ0FrS0MvL0VBTFVRQUFJQkF3TUNCQU1GQlFRRUFBQUJmUUVDQXdBRUVRVVNJVEZCQmhOUllRY2ljUlF5Z1pHaENDTkNzY0VWVXRId0pETmljb0lKQ2hZWEdCa2FKU1luS0NrcU5EVTJOemc1T2tORVJVWkhTRWxLVTFSVlZsZFlXVnBqWkdWbVoyaHBhbk4wZFhaM2VIbDZnNFNGaG9lSWlZcVNrNVNWbHBlWW1acWlvNlNscHFlb3FhcXlzN1MxdHJlNHVickN3OFRGeHNmSXljclMwOVRWMXRmWTJkcmg0dVBrNWVibjZPbnE4Zkx6OVBYMjkvajUrdi9FQUI4QkFBTUJBUUVCQVFFQkFRRUFBQUFBQUFBQkFnTUVCUVlIQ0FrS0MvL0VBTFVSQUFJQkFnUUVBd1FIQlFRRUFBRUNkd0FCQWdNUkJBVWhNUVlTUVZFSFlYRVRJaktCQ0JSQ2thR3h3UWtqTTFMd0ZXSnkwUW9XSkRUaEpmRVhHQmthSmljb0tTbzFOamM0T1RwRFJFVkdSMGhKU2xOVVZWWlhXRmxhWTJSbFptZG9hV3B6ZEhWMmQzaDVlb0tEaElXR2g0aUppcEtUbEpXV2w1aVptcUtqcEtXbXA2aXBxckt6dExXMnQ3aTV1c0xEeE1YR3g4akp5dExUMU5YVzE5aloydUxqNU9YbTUranA2dkx6OVBYMjkvajUrdi9hQUF3REFRQUNFUU1SQUQ4QS9QTFR0SW0xR2NSUW9YYzlBSysyazQwNDgwajVpS2xVZkxFOWg4RGZDZXp1ckIyMVJIamx4d01WNXM4ZlI2U090WUt2L0taUGk3NGJXOXZic05Qalo1UWVtS1BybEsxMnhyQ1ZyMnNlYmFocHR6b3N1eTRRbzNvYTNwMVkxRmVMTXFsR1ZOMmtqb1BDRjdMcGVvcGNSUkdVcnpqR2E3c1RoMVhwdURaeDBjVjlXcUtaNjk0ZitJRjdyK3B4MmtGcmlVOFlBcjQ3RjVUREMwM0p5UHJNSm1zOFhVVVlvcStNZkYxMzRSMU13M1ZxTjU1NUZaNFhBUnhkTzZadmlzYkxDVDFSNC80NjhRUDRndkJPMFhsRDZWNytGdzMxYVBMYzhERVlyNnpMbVBUdjJmYlBUdFE4UWZaNzhJVWs0Ryt2UXhrNVJqZUo4eldwU21ybytuZkIzN043MkhpbHRZdGRyV3hPNUF2U3ZrTXp4enFVdVRxZlNjUE9OT3BlYkcvRlQ5bVc1OFdha3QrMkZWVGxzanRYRmxlTGxRdkZucVo5V3BUVjRQVStXdmovQU9GOUw4THp4MmRxOFpsakdHMit0ZlYwS2txbXJQa3NKR1Zyczg2MGJWNTlIMUNHYUdSbzJWZ2NxYTltVnBSc3lrajlTLzJWUEZrZmpId1BiQnBQTW1SUUd6WHdPT284bFIzUG9zUGdvVlljME5HZGo4ZHRmZzhHZUI3NjZrYlkzbG5iK1ZjMUNsenpTUlVzdWpCT1ZSM1B4NzhlK0lwdkVmaVM4dVpKV2tEU0VqSjk2KzJweDVJcEhsOHFpOUQvMlE9PSI+Cgk8L2ltYWdlPgo8L3N2Zz4=\"}}', 2, '2023-12-04 01:12:44', '2023-12-04 01:12:45');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_items`
--

CREATE TABLE `portfolio_items` (
  `id` bigint UNSIGNED NOT NULL,
  `order_column` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `portfolio_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
(2, 'This is post title', '<p>&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum velit tortor, interdum sed cursus eu, sagittis ut nunc. Sed vitae tellus et arcu aliquet faucibus fermentum non lacus.&nbsp;</p><p>Praesent fringilla quis massa et placerat. Mauris eu dui eget urna pellentesque gravida vitae quis nibh. Ut at augue tortor. Pellentesque quis suscipit magna.&nbsp;</p><blockquote>&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quam tortor, ultrices accumsan mauris eget, pulvinar tincidunt erat. Sed nisi nisi, rutrum sit amet elit&nbsp;</blockquote><p>Praesent fringilla quis massa et placerat. Mauris eu dui eget urna pellentesque gravida vitae.</p><p>Etiam mollis sem sed bibendum blandit. Aenean quis luctus ligula, vitae suscipit dui. Nunc diam orci, tincidunt eget consectetur sit amet, vulputate.&nbsp;</p><h2>Lorem ipsum dolor</h2><ul><li>&nbsp;Lorem ipsum dolor sit amet.&nbsp;</li><li>&nbsp;Lorem ipsum dolor sit amet.&nbsp;</li><li>&nbsp;Lorem ipsum dolor sit amet.&nbsp;</li></ul><p>&nbsp;Sed mauris nulla, tempor eu est vel, dapibus hendrerit mauris curabitur dictum pharetra.&nbsp;</p><p>&nbsp;Etiam mollis sem sed bibendum blandit. Aenean quis luctus ligula, vitae suscipit dui. Nunc diam orci, tincidunt eget consectetur sit amet, vulputate.&nbsp;</p>', 'this-is-post-title', NULL, NULL, NULL, '2023-11-29 05:23:49', '2023-11-30 04:27:26'),
(5, 'How to Increase Domain Authority 2024', '<p>Domain Authority (DA) is a crucial metric in the world of SEO (Search Engine Optimization). It quantifies how likely a website is to rank in search engine results. Let’s dive into some effective strategies to enhance your domain authority:</p><ol><li>Build High-Quality Backlinks: Backlinks from reputable websites play a significant role in boosting DA. Aim for quality over quantity. Seek out authoritative sites related to your niche and earn natural, relevant backlinks.</li><li>Create Exceptional Content: Craft informative, engaging content that others would want to link to. High-quality articles, blog posts, infographics, and videos can attract organic backlinks.</li><li>Internal Linking: Utilize internal links within your website. Connecting relevant pages enhances the authority of individual pages and contributes to overall domain authority.</li><li>Social Media Engagement: Active social media presence can indirectly impact DA. Promote your content, interact with your audience, and inspire social sharing.</li><li>Remove Spammy Backlinks: Regularly audit your backlink profile. Disavow or remove low-quality, spammy links that might negatively affect your domain authority.</li><li>Digital PR: Promote your content through digital PR efforts. Collaborate with influencers, participate in industry events, and get featured in reputable publications.</li></ol><p>DA is comparative, not absolute. Even if your DA isn’t perfect, you can still outrank competitors if your score is higher than theirs. Keep these strategies in mind to improve your website’s authority and climb the search engine rankings!&nbsp;</p><p><br></p><h3><strong>How can I improve my website\'s DA score?</strong></h3><p>Certainly! Improving your Domain Authority (DA) is essential for better search engine rankings and increased organic traffic. Let’s explore effective strategies to enhance your website’s authority:</p><ol><li>Quality Backlinks:<ul><li>Focus on high-quality backlinks from authoritative websites. Seek out relevant sites within your niche.</li><li>Earn natural backlinks by creating exceptional content that others want to link to. Quality matters more than quantity.</li></ul></li><li>Link Building Tactics:<ul><li>Guest Posting: Contribute guest posts to reputable blogs in your industry. Include a link back to your site.</li><li>Broken Link Building: Identify broken links on external websites and propose your content as a substitute.</li><li>Resource Pages: Reach out to webmasters with valuable content that can be added to their resource pages.</li></ul></li><li>Content Optimization:<ul><li>Update Older Content: Refresh existing articles with new information. Add value to pages with low authority scores.</li><li>Keyword Research: Optimize your content with relevant keywords to attract organic traffic.</li></ul></li><li>Technical SEO:<ul><li>Website Speed: Enhance your website to achieve quicker loading speeds</li><li>&nbsp;Use tools like Google PageSpeed Insights.</li><li>Mobile Optimization: Ensure your site is mobile-friendly. Google prioritizes mobile-first indexing.</li><li>Fix Broken Links: Make sure to keep an eye out for broken links on a regular basis and address them promptly by fixing them.</li></ul></li><li>User Experience:<ul><li>Internal Linking: Include internal links to connect pages that are related to each other.</li><li>&nbsp;Distribute authority across your site.</li><li>User-Friendly Design: Improve navigation, readability, and overall user experience.</li></ul></li><li>Monitor Progress:<ul><li>Track your DA score over time. Use tools like Ahrefs or Moz to monitor changes.</li><li>Stay Consistent: Implement these strategies consistently to see gradual improvements.</li></ul></li></ol><p>DA is a relative metric, and it’s influenced by external factors. Focus on building a strong online presence, providing value to users, and attracting quality backlinks.&nbsp;</p><p><br></p><h3><strong>How do I check my domain authority score?</strong></h3><p><br></p><p>Certainly! Checking your Domain Authority (DA) is essential for understanding your website’s strength in terms of SEO. Here are a few ways to check your domain authority:</p><ol><li>Moz Domain Authority Checker:<ul><li>Use the <strong>Free Domain Authority Checker by Moz</strong>. Enter your domain, and it will show you the Domain Authority, Page Authority, ranking keywords, and more. You can access this directly from Moz’s own index1.</li><li>Moz\'s Domain Authority (DA) metric relies on their top-notch web index, a go-to resource trusted by SEO professionals globally. It’s a valuable tool to estimate your website’s ability to get organic traffic from Google.</li></ul></li><li>Ahrefs Website Authority Checker:<ul><li>Ahrefs provides a <strong>Website Authority Checker</strong> that calculates your website’s <strong>Domain Rating (DR)</strong>. DR looks at the quantity and quality of external backlinks to your site. The higher your DR, the stronger and more authoritative your website is2.</li><li>Visit the&nbsp; Ahrefs Website Authority Checker&nbsp; and input your domain to see your authority score.</li></ul></li><li>Browser Extensions:<ul><li>Install browser extensions like <a href=\"https://chromewebstore.google.com/detail/mozbar/eakacpaijcpapndcfffdgphdiccmpknp\"><strong>MozBar</strong></a>. It’s a free toolbar that displays the DA score of any website you visit, along with other metrics like Page Authority (PA) and the number of backlinks3.</li></ul></li></ol><p>Remember that domain authority is a relative metric, not an absolute one. Focus on earning backlinks from strong pages on reputable sites within your industry to improve your website’s authority.&nbsp;</p><p>More info to visit: <a href=\"https://premierproagency.com/\">premierproagency</a><br>&nbsp;</p>', 'how-to-increase-domain-authority-2024', 'how to increase domain authority 2024', 'Discover effective tactics to enhance Domain Authority (DA). Quality backlinks, content optimization, and user experience tips. Track progress with Moz and Ahrefs tools. ', ' increase domain authority', '2023-12-04 01:12:44', '2023-12-05 07:03:36');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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

--
-- Dumping data for table `tags_posts`
--

INSERT INTO `tags_posts` (`id`, `post_id`, `post_tag_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(4, 5, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

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
