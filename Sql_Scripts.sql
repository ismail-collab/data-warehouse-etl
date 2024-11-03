/****** 
Object:  Project Database  
******/


/****** 
--------------------------------------------------------------------------------------------------------------------------
Object:  Database [Project_STA] 
--------------------------------------------------------------------------------------------------------------------------
******/

USE [master]
GO


CREATE DATABASE [Project_STA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Project_STA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Project_STA.mdf' , SIZE = 204800KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Project_STA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Project_STA_log.ldf' , SIZE = 401408KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Project_STA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Project_STA] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Project_STA] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Project_STA] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Project_STA] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Project_STA] SET ARITHABORT OFF 
GO

ALTER DATABASE [Project_STA] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Project_STA] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Project_STA] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Project_STA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Project_STA] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Project_STA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Project_STA] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Project_STA] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Project_STA] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Project_STA] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Project_STA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Project_STA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Project_STA] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Project_STA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Project_STA] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Project_STA] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Project_STA] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Project_STA] SET RECOVERY FULL 
GO

ALTER DATABASE [Project_STA] SET  MULTI_USER 
GO

ALTER DATABASE [Project_STA] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Project_STA] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Project_STA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Project_STA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [Project_STA] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Project_STA] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [Project_STA] SET QUERY_STORE = OFF
GO

ALTER DATABASE [Project_STA] SET  READ_WRITE 
GO

/****** 
--------------------------------------------------------------------------------------------------------------------------
Object:  Table [dbo].[Sellers] 
******/

USE [Project_STA]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Sellers](
	["seller_id"] [varchar](255) NULL,
	["seller_zip_code_prefix"] [varchar](255) NULL,
	["seller_city"] [varchar](255) NULL,
	["seller_state"] [varchar](255) NULL
) ON [PRIMARY]
GO

/****** 
--------------------------------------------------------------------------------------------------------------------------
Object:  Table [dbo].[Reviews] 
******/

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Reviews](
	["review_id"] [varchar](255) NULL,
	["order_id"] [varchar](255) NULL,
	["review_score"] [varchar](255) NULL,
	["review_comment_title"] [varchar](255) NULL,
	["review_comment_message"] [varchar](255) NULL,
	["review_creation_date"] [varchar](255) NULL,
	["review_answer_timestamp"] [varchar](255) NULL
) ON [PRIMARY]
GO

/******
--------------------------------------------------------------------------------------------------------------------------
Object:  Table [dbo].[Products]  
******/

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Products](
	["product_id"] [varchar](255) NULL,
	["product_category_name"] [varchar](255) NULL,
	["product_name_lenght"] [varchar](255) NULL,
	["product_description_lenght"] [varchar](255) NULL,
	["product_photos_qty"] [varchar](255) NULL,
	["product_weight_g"] [varchar](255) NULL,
	["product_length_cm"] [varchar](255) NULL,
	["product_height_cm"] [varchar](255) NULL,
	["product_width_cm"] [varchar](255) NULL
) ON [PRIMARY]
GO

/******
--------------------------------------------------------------------------------------------------------------------------
Object:  Table [dbo].[ProductCategory] 
******/

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ProductCategory](
	[product_category_name] [varchar](255) NULL,
	[product_category_name_english] [varchar](255) NULL
) ON [PRIMARY]
GO

/****** 
--------------------------------------------------------------------------------------------------------------------------
Object:  Table [dbo].[Payments]   
******/

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Payments](
	["order_id"] [varchar](255) NULL,
	["payment_sequential"] [varchar](255) NULL,
	["payment_type"] [varchar](255) NULL,
	["payment_installments"] [varchar](255) NULL,
	["payment_value"] [varchar](255) NULL
) ON [PRIMARY]
GO

/****** 
--------------------------------------------------------------------------------------------------------------------------
Object:  Table [dbo].[Orders]   
******/

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Orders](
	[order_id] [varchar](255) NULL,
	[customer_id] [varchar](255) NULL,
	[order_status] [varchar](255) NULL,
	[order_purchase_timestamp] [varchar](255) NULL,
	[order_approved_at] [varchar](255) NULL,
	[order_delivered_carrier_date] [varchar](255) NULL,
	[order_delivered_customer_date] [varchar](255) NULL,
	[order_estimated_delivery_date] [varchar](255) NULL
) ON [PRIMARY]
GO

/****** 
--------------------------------------------------------------------------------------------------------------------------
Object:  Table [dbo].[OrderItems]   
******/

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OrderItems](
	["order_id"] [varchar](255) NULL,
	["order_item_id"] [varchar](255) NULL,
	["product_id"] [varchar](255) NULL,
	["seller_id"] [varchar](255) NULL,
	["shipping_limit_date"] [varchar](255) NULL,
	["price"] [varchar](255) NULL,
	["freight_value"] [varchar](255) NULL
) ON [PRIMARY]
GO

/****** 
--------------------------------------------------------------------------------------------------------------------------
Object:  Table [dbo].[Geolocation]   
******/

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Geolocation](
	["geolocation_zip_code_prefix"] [varchar](255) NULL,
	["geolocation_lat"] [varchar](255) NULL,
	["geolocation_lng"] [varchar](255) NULL,
	["geolocation_city"] [varchar](255) NULL,
	["geolocation_state"] [varchar](255) NULL
) ON [PRIMARY]
GO

/******
--------------------------------------------------------------------------------------------------------------------------
Object:  Table [dbo].[Customers]    
******/

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Customers](
	["customer_id"] [varchar](255) NULL,
	["customer_unique_id"] [varchar](255) NULL,
	["customer_zip_code_prefix"] [varchar](255) NULL,
	["customer_city"] [varchar](255) NULL,
	["customer_state"] [varchar](255) NULL
) ON [PRIMARY]
GO



/****** 
--------------------------------------------------------------------------------------------------------------------------
Object:  Database [Project_ODS]
--------------------------------------------------------------------------------------------------------------------------
******/

USE [master]
GO


CREATE DATABASE [Project_ODS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Project_ODS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Project_ODS.mdf' , SIZE = 139264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Project_ODS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Project_ODS_log.ldf' , SIZE = 466944KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Project_ODS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Project_ODS] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Project_ODS] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Project_ODS] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Project_ODS] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Project_ODS] SET ARITHABORT OFF 
GO

ALTER DATABASE [Project_ODS] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Project_ODS] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Project_ODS] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Project_ODS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Project_ODS] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Project_ODS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Project_ODS] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Project_ODS] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Project_ODS] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Project_ODS] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Project_ODS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Project_ODS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Project_ODS] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Project_ODS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Project_ODS] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Project_ODS] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Project_ODS] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Project_ODS] SET RECOVERY FULL 
GO

ALTER DATABASE [Project_ODS] SET  MULTI_USER 
GO

ALTER DATABASE [Project_ODS] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Project_ODS] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Project_ODS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Project_ODS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [Project_ODS] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Project_ODS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [Project_ODS] SET QUERY_STORE = OFF
GO

ALTER DATABASE [Project_ODS] SET  READ_WRITE 
GO

/****** 
--------------------------------------------------------------------------------------------------------------------------
Object:  Table [dbo].[Sellers]    
******/

USE [Project_ODS]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Sellers](
	[seller_id] [varchar](50) NULL,
	[seller_zip_code_prefix] [varchar](10) NULL,
	[seller_city] [varchar](50) NULL,
	[seller_state] [varchar](50) NULL,
	[geolocation_lat] [decimal](28, 18) NULL,
	[geolocation_lng] [decimal](28, 18) NULL
) ON [PRIMARY]
GO

/****** 
--------------------------------------------------------------------------------------------------------------------------
Object:  Table [dbo].[Reviews]  
******/

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Reviews](
	[review_id] [varchar](100) NULL,
	[order_id] [varchar](100) NULL,
	[Score] [bigint] NULL
) ON [PRIMARY]
GO

/******
--------------------------------------------------------------------------------------------------------------------------
Object:  Table [dbo].[Products]    
******/

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Products](
	[product_id] [varchar](40) NULL,
	[product_category_name] [varchar](50) NULL,
	[product_weight_g] [numeric](18, 0) NULL,
	[product_volume_cm2] [numeric](38, 0) NULL
) ON [PRIMARY]
GO

/****** 
--------------------------------------------------------------------------------------------------------------------------
Object:  Table [dbo].[Payment] 
******/

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Payment](
	[order_id] [varchar](50) NULL,
	[payment_sequential] [bigint] NULL,
	[payment_type] [varchar](15) NULL,
	[payment_installments] [bigint] NULL,
	[payment_value] [decimal](28, 2) NULL
) ON [PRIMARY]
GO

/****** 
--------------------------------------------------------------------------------------------------------------------------
Object:  Table [dbo].[Orders]   
******/

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Orders](
	[order_id] [varchar](50) NULL,
	[customer_id] [varchar](50) NULL,
	[order_status] [varchar](15) NULL,
	[order_purchase_timestamp] [datetime] NULL,
	[order_approved_at] [datetime] NULL,
	[order_delivered_customer_date] [datetime] NULL,
	[order_estimated_delivery_date] [datetime] NULL,
	[order_delivered_carrier_date] [datetime] NULL
) ON [PRIMARY]
GO

/****** 
--------------------------------------------------------------------------------------------------------------------------
Object:  Table [dbo].[OrderItems]   
******/

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OrderItems](
	[order_id] [varchar](80) NULL,
	[product_id] [varchar](80) NULL,
	[seller_id] [varchar](80) NULL
) ON [PRIMARY]
GO

/****** 
--------------------------------------------------------------------------------------------------------------------------
Object:  Table [dbo].[OrderDetails]   
******/

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OrderDetails](
	[order_id] [varchar](50) NULL,
	[customer_city] [varchar](50) NULL,
	[customer_state] [varchar](50) NULL,
	[payment_sequential] [bigint] NULL,
	[payment_type] [varchar](15) NULL,
	[payment_installments] [bigint] NULL,
	[order_purchase_timestamp] [datetime] NULL,
	[order_approved_at] [datetime] NULL,
	[order_delivered_customer_date] [datetime] NULL,
	[order_estimated_delivery_date] [datetime] NULL,
	[order_delivered_carrier_date] [datetime] NULL
) ON [PRIMARY]
GO

/****** 
--------------------------------------------------------------------------------------------------------------------------
Object:  Table [dbo].[Geolocation]   
******/

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Geolocation](
	[geolocation_zip_code_prefix] [varchar](10) NULL,
	[geolocation_lat] [decimal](28, 18) NULL,
	[geolocation_lng] [decimal](28, 18) NULL,
	[geolocation_city] [varchar](50) NULL,
	[geolocation_state] [varchar](50) NULL
) ON [PRIMARY]
GO

/******
--------------------------------------------------------------------------------------------------------------------------
Object:  Table [dbo].[Customers]    
******/

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Customers](
	[customer_id] [varchar](50) NULL,
	[customer_unique_id] [varchar](50) NULL,
	[customer_zip_code_prefix] [varchar](10) NULL,
	[customer_city] [varchar](50) NULL,
	[customer_state] [varchar](50) NULL,
	[geolocation_lat] [decimal](28, 18) NULL,
	[geolocation_lng] [decimal](28, 18) NULL
) ON [PRIMARY]
GO


/****** 
--------------------------------------------------------------------------------------------------------------------------
Object:  Database [Project_DWH] 
--------------------------------------------------------------------------------------------------------------------------
 ******/

USE [master]
GO


CREATE DATABASE [Project_DWH]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Project_DWH', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Project_DWH.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Project_DWH_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Project_DWH_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Project_DWH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Project_DWH] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Project_DWH] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Project_DWH] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Project_DWH] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Project_DWH] SET ARITHABORT OFF 
GO

ALTER DATABASE [Project_DWH] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Project_DWH] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Project_DWH] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Project_DWH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Project_DWH] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Project_DWH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Project_DWH] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Project_DWH] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Project_DWH] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Project_DWH] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Project_DWH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Project_DWH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Project_DWH] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Project_DWH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Project_DWH] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Project_DWH] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Project_DWH] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Project_DWH] SET RECOVERY FULL 
GO

ALTER DATABASE [Project_DWH] SET  MULTI_USER 
GO

ALTER DATABASE [Project_DWH] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Project_DWH] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Project_DWH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Project_DWH] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [Project_DWH] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Project_DWH] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [Project_DWH] SET QUERY_STORE = OFF
GO

ALTER DATABASE [Project_DWH] SET  READ_WRITE 
GO

/****** 
--------------------------------------------------------------------------------------------------------------------------
Object:  Table [dbo].[FactOrders]  
******/

USE [Project_DWH]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactOrders](
	[orderKey] [int] NULL,
	[product_key] [int] NULL,
	[seller_key] [int] NULL,
	[reviewKey] [int] NULL
) ON [PRIMARY]
GO

/******
--------------------------------------------------------------------------------------------------------------------------
Object:  Table [dbo].[DimSellers]  
******/

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimSellers](
	[seller_key] [int] IDENTITY(1,1) NOT NULL,
	[seller_id] [varchar](50) NULL,
	[seller_zip_code_prefix] [varchar](10) NULL,
	[seller_city] [varchar](50) NULL,
	[seller_state] [varchar](50) NULL,
	[geolocation_lat] [numeric](28, 18) NULL,
	[geolocation_lng] [numeric](28, 18) NULL
) ON [PRIMARY]
GO

/****** 
--------------------------------------------------------------------------------------------------------------------------
Object:  Table [dbo].[DimReviews]  
******/

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimReviews](
	[reviewKey] [int] IDENTITY(1,1) NOT NULL,
	[review_id] [varchar](100) NULL,
	[order_id] [varchar](100) NULL,
	[Score] [bigint] NULL
) ON [PRIMARY]
GO

/****** 
--------------------------------------------------------------------------------------------------------------------------
Object:  Table [dbo].[DimProduct]   
******/

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimProduct](
	[product_key] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [varchar](40) NULL,
	[product_category_name] [varchar](50) NULL,
	[product_weight_g] [numeric](18, 0) NULL,
	[product_volume_cm2] [numeric](38, 0) NULL
) ON [PRIMARY]
GO

/****** 
--------------------------------------------------------------------------------------------------------------------------
Object:  Table [dbo].[DimOrderDetails]   
******/

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimOrderDetails](
	[order_detail_key] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [varchar](50) NULL,
	[customer_city] [varchar](50) NULL,
	[customer_state] [varchar](50) NULL,
	[payment_sequential] [bigint] NULL,
	[payment_type] [varchar](15) NULL,
	[payment_installments] [bigint] NULL,
	[order_purchase_timestamp] [datetime] NULL,
	[order_approved_at] [datetime] NULL,
	[order_delivered_customer_date] [datetime] NULL,
	[order_estimated_delivery_date] [datetime] NULL,
	[order_delivered_carrier_date] [datetime] NULL
) ON [PRIMARY]
GO


/****** 
--------------------------------------------------------------------------------------------------------------------------
Object:  Database [Project_ADM]  
--------------------------------------------------------------------------------------------------------------------------
******/

USE [master]
GO


CREATE DATABASE [Project_ADM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Project_ADM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Project_ADM.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Project_ADM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Project_ADM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Project_ADM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Project_ADM] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Project_ADM] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Project_ADM] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Project_ADM] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Project_ADM] SET ARITHABORT OFF 
GO

ALTER DATABASE [Project_ADM] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Project_ADM] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Project_ADM] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Project_ADM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Project_ADM] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Project_ADM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Project_ADM] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Project_ADM] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Project_ADM] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Project_ADM] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Project_ADM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Project_ADM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Project_ADM] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Project_ADM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Project_ADM] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Project_ADM] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Project_ADM] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Project_ADM] SET RECOVERY FULL 
GO

ALTER DATABASE [Project_ADM] SET  MULTI_USER 
GO

ALTER DATABASE [Project_ADM] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Project_ADM] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Project_ADM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Project_ADM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [Project_ADM] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Project_ADM] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [Project_ADM] SET QUERY_STORE = OFF
GO

ALTER DATABASE [Project_ADM] SET  READ_WRITE 
GO


/****** 
--------------------------------------------------------------------------------------------------------------------------
Object:  Table [dbo].[Regets]   
******/


USE [Project_ADM]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Regets](
	[Regets_Date] [datetime] NULL,
	[RegetsPackadgeAndTask] [nvarchar](210) NULL,
	[RegetColumn] [nvarchar](50) NULL,
	[RegetDescription] [nvarchar](374) NULL
) ON [PRIMARY]
GO

/****** 
--------------------------------------------------------------------------------------------------------------------------
Object:  Table [dbo].[Functional_Regets]    
******/

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Functional_Regets](
	[RegetDate] [datetime] NULL,
	[RegetPackageAndTask] [nvarchar](69) NULL,
	[RegetColumn] [nvarchar](50) NULL,
	[RegetDesc] [nvarchar](93) NULL
) ON [PRIMARY]
GO
