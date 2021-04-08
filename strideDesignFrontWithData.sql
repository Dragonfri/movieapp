USE [master]
GO
/****** Object:  Database [StrideDesignFront]    Script Date: 3/15/2020 11:47:47 PM ******/
CREATE DATABASE [StrideDesignFront]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'StrideDesignFront', FILENAME = N'D:\Download\StrideDesignFront\StrideDesignFront.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'StrideDesignFront_log', FILENAME = N'D:\Download\StrideDesignFront\StrideDesignFront_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [StrideDesignFront] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StrideDesignFront].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StrideDesignFront] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StrideDesignFront] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StrideDesignFront] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StrideDesignFront] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StrideDesignFront] SET ARITHABORT OFF 
GO
ALTER DATABASE [StrideDesignFront] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [StrideDesignFront] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StrideDesignFront] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StrideDesignFront] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StrideDesignFront] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StrideDesignFront] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StrideDesignFront] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StrideDesignFront] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StrideDesignFront] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StrideDesignFront] SET  DISABLE_BROKER 
GO
ALTER DATABASE [StrideDesignFront] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StrideDesignFront] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StrideDesignFront] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StrideDesignFront] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StrideDesignFront] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StrideDesignFront] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [StrideDesignFront] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StrideDesignFront] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [StrideDesignFront] SET  MULTI_USER 
GO
ALTER DATABASE [StrideDesignFront] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StrideDesignFront] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StrideDesignFront] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StrideDesignFront] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [StrideDesignFront] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [StrideDesignFront] SET QUERY_STORE = OFF
GO
USE [StrideDesignFront]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [StrideDesignFront]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 3/15/2020 11:47:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[admin_id] [uniqueidentifier] NOT NULL,
	[user_id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[client]    Script Date: 3/15/2020 11:47:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[client](
	[client_id] [uniqueidentifier] NOT NULL,
	[first_name] [varchar](30) NOT NULL,
	[last_name] [varchar](30) NOT NULL,
	[category] [varchar](10) NULL,
	[phone] [varchar](15) NULL,
	[address] [varchar](30) NULL,
	[city] [varchar](20) NULL,
	[province] [varchar](20) NULL,
	[postalCode] [varchar](6) NULL,
	[email] [varchar](30) NULL,
	[website] [varchar](30) NULL,
	[biz_type] [varchar](30) NULL,
	[biz_year] [numeric](4, 0) NULL,
	[associations] [varchar](max) NULL,
	[recommender] [varchar](max) NULL,
	[hst] [int] NULL,
	[referrals] [varchar](max) NULL,
	[mailing] [varchar](1) NULL,
	[comments] [varchar](max) NULL,
 CONSTRAINT [PK_client] PRIMARY KEY CLUSTERED 
(
	[client_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[code_category]    Script Date: 3/15/2020 11:47:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[code_category](
	[category_id] [uniqueidentifier] NOT NULL,
	[category_name] [varchar](30) NOT NULL,
 CONSTRAINT [PK_code_category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[code_list]    Script Date: 3/15/2020 11:47:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[code_list](
	[code_id] [uniqueidentifier] NOT NULL,
	[category_id] [uniqueidentifier] NOT NULL,
	[code_name] [nchar](10) NOT NULL,
 CONSTRAINT [PK_code_list] PRIMARY KEY CLUSTERED 
(
	[code_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[drapery]    Script Date: 3/15/2020 11:47:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[drapery](
	[drapery_id] [uniqueidentifier] NOT NULL,
	[window_id] [uniqueidentifier] NOT NULL,
	[type_name] [varchar](30) NULL,
	[type_value] [varchar](50) NULL,
	[designed_by] [uniqueidentifier] NOT NULL,
	[created_time] [datetime] NOT NULL,
	[updated_by] [uniqueidentifier] NULL,
	[updated_time] [datetime] NULL,
 CONSTRAINT [PK_drapery] PRIMARY KEY CLUSTERED 
(
	[drapery_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employee]    Script Date: 3/15/2020 11:47:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee](
	[user_id] [uniqueidentifier] NOT NULL,
	[first_name] [varchar](30) NOT NULL,
	[last_name] [varchar](30) NOT NULL,
	[username] [varchar](30) NOT NULL,
	[password] [varchar](max) NOT NULL,
	[job_id] [uniqueidentifier] NULL,
	[email] [varchar](30) NOT NULL,
	[address] [varchar](30) NULL,
	[city] [varchar](20) NULL,
	[province] [varchar](20) NULL,
	[postalCode] [varchar](6) NULL,
	[phone] [varchar](15) NULL,
 CONSTRAINT [PK_employee] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[invoice]    Script Date: 3/15/2020 11:47:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invoice](
	[invoice_id] [uniqueidentifier] NOT NULL,
	[project_id] [uniqueidentifier] NULL,
	[invoice_date] [date] NULL,
	[terms] [int] NULL,
	[bill_place] [varchar](30) NULL,
	[bill_address] [varchar](30) NULL,
	[bill_phone] [varchar](30) NULL,
	[ship_place] [varchar](30) NULL,
	[ship_address] [varchar](30) NULL,
	[subtotal] [numeric](18, 2) NULL,
	[shipping] [numeric](18, 2) NULL,
	[hst] [numeric](18, 2) NULL,
	[total_amount] [numeric](18, 2) NULL,
	[invoice_by] [uniqueidentifier] NOT NULL,
	[created_time] [datetime] NOT NULL,
	[updated_by] [uniqueidentifier] NULL,
	[updated_time] [datetime] NULL,
 CONSTRAINT [PK_invoice] PRIMARY KEY CLUSTERED 
(
	[invoice_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[items]    Script Date: 3/15/2020 11:47:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[items](
	[item_id] [uniqueidentifier] NOT NULL,
	[project_id] [uniqueidentifier] NOT NULL,
	[room_id] [uniqueidentifier] NOT NULL,
	[item_name] [varchar](30) NOT NULL,
	[supplier_id] [uniqueidentifier] NULL,
	[pattern] [int] NULL,
	[colour] [int] NULL,
	[quantity] [numeric](8, 2) NULL,
	[uom] [varchar](10) NULL,
	[amount] [numeric](8, 2) NULL,
	[designed_by] [uniqueidentifier] NOT NULL,
	[created_time] [datetime] NOT NULL,
	[updated_by] [uniqueidentifier] NULL,
	[updated_time] [datetime] NULL,
 CONSTRAINT [PK_item] PRIMARY KEY CLUSTERED 
(
	[item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[job_type]    Script Date: 3/15/2020 11:47:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[job_type](
	[job_id] [uniqueidentifier] NOT NULL,
	[job_title] [varchar](30) NOT NULL,
 CONSTRAINT [PK_job_type] PRIMARY KEY CLUSTERED 
(
	[job_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project]    Script Date: 3/15/2020 11:47:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project](
	[project_id] [uniqueidentifier] NOT NULL,
	[project_tag] [varchar](20) NOT NULL,
	[client_id] [uniqueidentifier] NOT NULL,
	[status] [varchar](1) NOT NULL,
	[designed_by] [uniqueidentifier] NOT NULL,
	[created_time] [datetime] NOT NULL,
	[updated_by] [uniqueidentifier] NULL,
	[updated_time] [datetime] NULL,
 CONSTRAINT [PK_project] PRIMARY KEY CLUSTERED 
(
	[project_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[purchase_order]    Script Date: 3/15/2020 11:47:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[purchase_order](
	[order_id] [uniqueidentifier] NOT NULL,
	[project_id] [uniqueidentifier] NOT NULL,
	[supplier_id] [uniqueidentifier] NOT NULL,
	[shipping_place] [varchar](30) NULL,
	[shipping_address] [varchar](max) NULL,
	[shipping_phone] [varchar](15) NULL,
	[estimated_shipdate] [date] NULL,
	[ordered_by] [uniqueidentifier] NOT NULL,
	[created_time] [datetime] NOT NULL,
	[updated_by] [uniqueidentifier] NULL,
	[updated_time] [datetime] NULL,
 CONSTRAINT [PK_purchase_order] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[purchase_orderdetail]    Script Date: 3/15/2020 11:47:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[purchase_orderdetail](
	[purchase_orderdetail_id] [uniqueidentifier] NOT NULL,
	[project_id] [uniqueidentifier] NOT NULL,
	[order_id] [uniqueidentifier] NOT NULL,
	[item_id] [uniqueidentifier] NOT NULL,
	[item_name] [varchar](30) NULL,
	[pattern] [int] NULL,
	[colour] [int] NULL,
	[quantity] [numeric](8, 2) NULL,
	[uom] [varchar](10) NULL,
	[unit_price] [numeric](8, 2) NULL,
	[amount] [numeric](8, 2) NULL,
	[delivery_status] [varchar](1) NULL,
	[ordered_by] [uniqueidentifier] NOT NULL,
	[created_time] [datetime] NOT NULL,
	[updated_by] [uniqueidentifier] NULL,
	[updated_time] [datetime] NULL,
 CONSTRAINT [PK_purchase_orderdetail] PRIMARY KEY CLUSTERED 
(
	[purchase_orderdetail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[purchase_stock]    Script Date: 3/15/2020 11:47:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[purchase_stock](
	[purchase_stock_id] [uniqueidentifier] NOT NULL,
	[project_id] [uniqueidentifier] NOT NULL,
	[order_id] [uniqueidentifier] NOT NULL,
	[item_id] [uniqueidentifier] NOT NULL,
	[item_name] [varchar](50) NULL,
	[pattern] [int] NULL,
	[colour] [int] NULL,
	[quantity] [numeric](8, 2) NULL,
	[uom] [varchar](10) NULL,
	[amount] [varchar](8) NULL,
	[received_by] [uniqueidentifier] NOT NULL,
	[created_time] [datetime] NOT NULL,
	[updated_by] [uniqueidentifier] NULL,
	[updated_time] [datetime] NULL,
 CONSTRAINT [PK_purchase_stock] PRIMARY KEY CLUSTERED 
(
	[purchase_stock_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[room]    Script Date: 3/15/2020 11:47:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[room](
	[project_id] [uniqueidentifier] NOT NULL,
	[room_id] [uniqueidentifier] NOT NULL,
	[room_tag] [varchar](30) NOT NULL,
	[designed_by] [uniqueidentifier] NOT NULL,
	[created_time] [datetime] NOT NULL,
	[updated_by] [uniqueidentifier] NULL,
	[updated_time] [datetime] NULL,
 CONSTRAINT [PK_room] PRIMARY KEY CLUSTERED 
(
	[room_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[supplier]    Script Date: 3/15/2020 11:47:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[supplier](
	[supplier_id] [uniqueidentifier] NOT NULL,
	[company] [varchar](30) NOT NULL,
	[category] [varchar](30) NULL,
	[account] [varchar](30) NULL,
	[address] [varchar](30) NULL,
	[city] [varchar](30) NULL,
	[province] [varchar](30) NULL,
	[postalCode] [varchar](6) NULL,
	[rep] [varchar](50) NULL,
	[phone] [varchar](15) NULL,
	[rep_email] [varchar](30) NULL,
	[website] [varchar](30) NULL,
	[login] [varchar](30) NULL,
	[password] [varchar](30) NULL,
	[order_notes] [varchar](max) NULL,
	[order_method] [varchar](30) NULL,
	[ordering_email] [varchar](30) NULL,
	[price_found] [varchar](30) NULL,
	[discount_ow] [varchar](50) NULL,
	[discount_or] [varchar](50) NULL,
	[discount_notes] [varchar](max) NULL,
	[terms] [varchar](max) NULL,
	[lead_time] [varchar](50) NULL,
	[sales_req] [varchar](50) NULL,
	[books] [varchar](50) NULL,
	[payment_method] [varchar](30) NULL,
	[payment_notes] [varchar](max) NULL,
 CONSTRAINT [PK_supplier] PRIMARY KEY CLUSTERED 
(
	[supplier_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[window]    Script Date: 3/15/2020 11:47:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[window](
	[window_id] [uniqueidentifier] NOT NULL,
	[room_id] [uniqueidentifier] NOT NULL,
	[window_tag] [varchar](20) NULL,
	[floor_ceiling] [numeric](8, 3) NULL,
	[tot_ceiling] [numeric](8, 3) NULL,
	[bot_floor] [numeric](8, 3) NULL,
	[loot_object] [numeric](8, 3) NULL,
	[root_object] [numeric](8, 3) NULL,
	[inside_horizontal] [numeric](8, 3) NULL,
	[outside_horizontal] [numeric](8, 3) NULL,
	[inside_vertical] [numeric](8, 3) NULL,
	[outside_vertical] [numeric](8, 3) NULL,
	[sill] [varchar](1) NULL,
	[trim_depth] [numeric](8, 3) NULL,
	[inside_depth] [numeric](8, 3) NULL,
	[control] [varchar](1) NULL,
 CONSTRAINT [PK_window] PRIMARY KEY CLUSTERED 
(
	[window_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[client] ([client_id], [first_name], [last_name], [category], [phone], [address], [city], [province], [postalCode], [email], [website], [biz_type], [biz_year], [associations], [recommender], [hst], [referrals], [mailing], [comments]) VALUES (N'd2001f8d-ff7d-4cf8-af98-4b64bbacca98', N'Donald', N'Trump', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[client] ([client_id], [first_name], [last_name], [category], [phone], [address], [city], [province], [postalCode], [email], [website], [biz_type], [biz_year], [associations], [recommender], [hst], [referrals], [mailing], [comments]) VALUES (N'be874b7c-d1c8-476d-ae44-58dae3ef42d9', N'Clark', N'Kent', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[employee] ([user_id], [first_name], [last_name], [username], [password], [job_id], [email], [address], [city], [province], [postalCode], [phone]) VALUES (N'fc9c0b13-4ff1-425f-b961-03dc0b1fc5a3', N'John', N'Doe', N'jdoe', N'0jIvRl0HsxWT5xu3E8UmaW2gF/+g/VAeckIqeZ3gN30=', N'2c5cf21b-df0d-466f-80c5-4ecd902028b9', N'jdoe@email.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[employee] ([user_id], [first_name], [last_name], [username], [password], [job_id], [email], [address], [city], [province], [postalCode], [phone]) VALUES (N'0733ba70-31df-4c68-b46d-0569b817cd0d', N'Jane', N'Doe', N'JaneDoe', N'VPc31yhvy5IpZWvjVGp4uHU+CD/qvk41bWG9f2eOe0o=', N'2c5cf21b-df0d-466f-80c5-4ecd902028b9', N'janedoe@email.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[job_type] ([job_id], [job_title]) VALUES (N'2c5cf21b-df0d-466f-80c5-4ecd902028b9', N'Test')
INSERT [dbo].[job_type] ([job_id], [job_title]) VALUES (N'995feb39-d458-49aa-9733-a6028c56474e', N'Designer')
INSERT [dbo].[job_type] ([job_id], [job_title]) VALUES (N'06fa9483-e2a8-4d2c-940e-b72cb38ab42f', N'Admin')
INSERT [dbo].[project] ([project_id], [project_tag], [client_id], [status], [designed_by], [created_time], [updated_by], [updated_time]) VALUES (N'9bd24249-4347-431e-8baf-2c168789d755', N'Project A', N'd2001f8d-ff7d-4cf8-af98-4b64bbacca98', N'O', N'fc9c0b13-4ff1-425f-b961-03dc0b1fc5a3', CAST(N'2020-03-15T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[project] ([project_id], [project_tag], [client_id], [status], [designed_by], [created_time], [updated_by], [updated_time]) VALUES (N'121e34db-16d4-44ea-afab-c7cb2770161f', N'Project B', N'be874b7c-d1c8-476d-ae44-58dae3ef42d9', N'O', N'0733ba70-31df-4c68-b46d-0569b817cd0d', CAST(N'2020-03-15T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[room] ([project_id], [room_id], [room_tag], [designed_by], [created_time], [updated_by], [updated_time]) VALUES (N'9bd24249-4347-431e-8baf-2c168789d755', N'e6ad9362-03bb-4cbb-8b88-22fe20df7d76', N'Test', N'fc9c0b13-4ff1-425f-b961-03dc0b1fc5a3', CAST(N'2020-03-15T23:42:55.660' AS DateTime), NULL, NULL)
INSERT [dbo].[room] ([project_id], [room_id], [room_tag], [designed_by], [created_time], [updated_by], [updated_time]) VALUES (N'9bd24249-4347-431e-8baf-2c168789d755', N'c95d8085-d72c-44c0-bbb1-563f6163b2f0', N'Bathroom', N'fc9c0b13-4ff1-425f-b961-03dc0b1fc5a3', CAST(N'2020-03-15T23:15:10.757' AS DateTime), NULL, NULL)
INSERT [dbo].[room] ([project_id], [room_id], [room_tag], [designed_by], [created_time], [updated_by], [updated_time]) VALUES (N'9bd24249-4347-431e-8baf-2c168789d755', N'a769dfc7-9a1c-4e79-ad2a-63aa0512d8ce', N'Jason''s', N'fc9c0b13-4ff1-425f-b961-03dc0b1fc5a3', CAST(N'2020-03-15T23:22:36.393' AS DateTime), NULL, NULL)
INSERT [dbo].[room] ([project_id], [room_id], [room_tag], [designed_by], [created_time], [updated_by], [updated_time]) VALUES (N'9bd24249-4347-431e-8baf-2c168789d755', N'dcda2338-cfdf-481d-9437-8b3e28f541fa', N'Living', N'fc9c0b13-4ff1-425f-b961-03dc0b1fc5a3', CAST(N'2020-03-15T19:25:55.287' AS DateTime), NULL, NULL)
INSERT [dbo].[room] ([project_id], [room_id], [room_tag], [designed_by], [created_time], [updated_by], [updated_time]) VALUES (N'9bd24249-4347-431e-8baf-2c168789d755', N'5a87da88-32ff-4835-a1f8-ddd52f1775d8', N'Dining', N'fc9c0b13-4ff1-425f-b961-03dc0b1fc5a3', CAST(N'2020-03-15T23:10:29.670' AS DateTime), NULL, NULL)
INSERT [dbo].[room] ([project_id], [room_id], [room_tag], [designed_by], [created_time], [updated_by], [updated_time]) VALUES (N'9bd24249-4347-431e-8baf-2c168789d755', N'24fce751-1242-43e4-b87e-efa71f5f52a4', N'Jake''s', N'fc9c0b13-4ff1-425f-b961-03dc0b1fc5a3', CAST(N'2020-03-15T23:19:21.010' AS DateTime), NULL, NULL)
INSERT [dbo].[supplier] ([supplier_id], [company], [category], [account], [address], [city], [province], [postalCode], [rep], [phone], [rep_email], [website], [login], [password], [order_notes], [order_method], [ordering_email], [price_found], [discount_ow], [discount_or], [discount_notes], [terms], [lead_time], [sales_req], [books], [payment_method], [payment_notes]) VALUES (N'01f161c1-8698-4bb6-a6af-f52c926e15e5', N'Fake Company', N'N/A', NULL, N'123 Fake St', N'Fake City', N'Ontario', N'N2P1A1', N'Fake Fakerson', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[window] ([window_id], [room_id], [window_tag], [floor_ceiling], [tot_ceiling], [bot_floor], [loot_object], [root_object], [inside_horizontal], [outside_horizontal], [inside_vertical], [outside_vertical], [sill], [trim_depth], [inside_depth], [control]) VALUES (N'17ffa564-648e-49d8-ae7f-982382e29401', N'c95d8085-d72c-44c0-bbb1-563f6163b2f0', N'East Window', CAST(1.000 AS Numeric(8, 3)), CAST(2.000 AS Numeric(8, 3)), CAST(3.000 AS Numeric(8, 3)), CAST(4.000 AS Numeric(8, 3)), CAST(5.000 AS Numeric(8, 3)), CAST(6.000 AS Numeric(8, 3)), CAST(7.000 AS Numeric(8, 3)), CAST(8.000 AS Numeric(8, 3)), CAST(9.000 AS Numeric(8, 3)), N'Y', CAST(10.000 AS Numeric(8, 3)), CAST(11.000 AS Numeric(8, 3)), N'R')
ALTER TABLE [dbo].[project] ADD  CONSTRAINT [DF_project_status]  DEFAULT ('N') FOR [status]
GO
ALTER TABLE [dbo].[purchase_orderdetail] ADD  CONSTRAINT [DF_purchase_orderdetail_delivery_status]  DEFAULT ('N') FOR [delivery_status]
GO
ALTER TABLE [dbo].[supplier] ADD  CONSTRAINT [DF_supplier_province]  DEFAULT ('Ontario') FOR [province]
GO
ALTER TABLE [dbo].[window] ADD  CONSTRAINT [DF_window_sill]  DEFAULT ('N') FOR [sill]
GO
ALTER TABLE [dbo].[window] ADD  CONSTRAINT [DF_window_control]  DEFAULT ('L') FOR [control]
GO
ALTER TABLE [dbo].[admin]  WITH CHECK ADD  CONSTRAINT [FK_admin_employee] FOREIGN KEY([user_id])
REFERENCES [dbo].[employee] ([user_id])
GO
ALTER TABLE [dbo].[admin] CHECK CONSTRAINT [FK_admin_employee]
GO
ALTER TABLE [dbo].[code_list]  WITH CHECK ADD  CONSTRAINT [FK_code_list_code_category] FOREIGN KEY([category_id])
REFERENCES [dbo].[code_category] ([category_id])
GO
ALTER TABLE [dbo].[code_list] CHECK CONSTRAINT [FK_code_list_code_category]
GO
ALTER TABLE [dbo].[drapery]  WITH CHECK ADD  CONSTRAINT [FK_drapery_window] FOREIGN KEY([window_id])
REFERENCES [dbo].[window] ([window_id])
GO
ALTER TABLE [dbo].[drapery] CHECK CONSTRAINT [FK_drapery_window]
GO
ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [FK_employee_job_type] FOREIGN KEY([job_id])
REFERENCES [dbo].[job_type] ([job_id])
GO
ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [FK_employee_job_type]
GO
ALTER TABLE [dbo].[invoice]  WITH CHECK ADD  CONSTRAINT [FK_invoice_employee_1] FOREIGN KEY([invoice_by])
REFERENCES [dbo].[employee] ([user_id])
GO
ALTER TABLE [dbo].[invoice] CHECK CONSTRAINT [FK_invoice_employee_1]
GO
ALTER TABLE [dbo].[invoice]  WITH CHECK ADD  CONSTRAINT [FK_invoice_employee_2] FOREIGN KEY([updated_by])
REFERENCES [dbo].[employee] ([user_id])
GO
ALTER TABLE [dbo].[invoice] CHECK CONSTRAINT [FK_invoice_employee_2]
GO
ALTER TABLE [dbo].[invoice]  WITH CHECK ADD  CONSTRAINT [FK_invoice_project] FOREIGN KEY([project_id])
REFERENCES [dbo].[project] ([project_id])
GO
ALTER TABLE [dbo].[invoice] CHECK CONSTRAINT [FK_invoice_project]
GO
ALTER TABLE [dbo].[items]  WITH CHECK ADD  CONSTRAINT [FK_item_employee_1] FOREIGN KEY([designed_by])
REFERENCES [dbo].[employee] ([user_id])
GO
ALTER TABLE [dbo].[items] CHECK CONSTRAINT [FK_item_employee_1]
GO
ALTER TABLE [dbo].[items]  WITH CHECK ADD  CONSTRAINT [FK_item_employee_2] FOREIGN KEY([updated_by])
REFERENCES [dbo].[employee] ([user_id])
GO
ALTER TABLE [dbo].[items] CHECK CONSTRAINT [FK_item_employee_2]
GO
ALTER TABLE [dbo].[items]  WITH CHECK ADD  CONSTRAINT [FK_item_project] FOREIGN KEY([project_id])
REFERENCES [dbo].[project] ([project_id])
GO
ALTER TABLE [dbo].[items] CHECK CONSTRAINT [FK_item_project]
GO
ALTER TABLE [dbo].[items]  WITH CHECK ADD  CONSTRAINT [FK_item_room] FOREIGN KEY([room_id])
REFERENCES [dbo].[room] ([room_id])
GO
ALTER TABLE [dbo].[items] CHECK CONSTRAINT [FK_item_room]
GO
ALTER TABLE [dbo].[project]  WITH CHECK ADD  CONSTRAINT [FK_project_client] FOREIGN KEY([client_id])
REFERENCES [dbo].[client] ([client_id])
GO
ALTER TABLE [dbo].[project] CHECK CONSTRAINT [FK_project_client]
GO
ALTER TABLE [dbo].[project]  WITH CHECK ADD  CONSTRAINT [FK_project_employee_1] FOREIGN KEY([designed_by])
REFERENCES [dbo].[employee] ([user_id])
GO
ALTER TABLE [dbo].[project] CHECK CONSTRAINT [FK_project_employee_1]
GO
ALTER TABLE [dbo].[project]  WITH CHECK ADD  CONSTRAINT [FK_project_employee_2] FOREIGN KEY([updated_by])
REFERENCES [dbo].[employee] ([user_id])
GO
ALTER TABLE [dbo].[project] CHECK CONSTRAINT [FK_project_employee_2]
GO
ALTER TABLE [dbo].[purchase_order]  WITH CHECK ADD  CONSTRAINT [FK_purchase_order_employee_1] FOREIGN KEY([ordered_by])
REFERENCES [dbo].[employee] ([user_id])
GO
ALTER TABLE [dbo].[purchase_order] CHECK CONSTRAINT [FK_purchase_order_employee_1]
GO
ALTER TABLE [dbo].[purchase_order]  WITH CHECK ADD  CONSTRAINT [FK_purchase_order_employee_2] FOREIGN KEY([updated_by])
REFERENCES [dbo].[employee] ([user_id])
GO
ALTER TABLE [dbo].[purchase_order] CHECK CONSTRAINT [FK_purchase_order_employee_2]
GO
ALTER TABLE [dbo].[purchase_order]  WITH CHECK ADD  CONSTRAINT [FK_purchase_order_project] FOREIGN KEY([project_id])
REFERENCES [dbo].[project] ([project_id])
GO
ALTER TABLE [dbo].[purchase_order] CHECK CONSTRAINT [FK_purchase_order_project]
GO
ALTER TABLE [dbo].[purchase_order]  WITH CHECK ADD  CONSTRAINT [FK_purchase_order_supplier] FOREIGN KEY([supplier_id])
REFERENCES [dbo].[supplier] ([supplier_id])
GO
ALTER TABLE [dbo].[purchase_order] CHECK CONSTRAINT [FK_purchase_order_supplier]
GO
ALTER TABLE [dbo].[purchase_orderdetail]  WITH CHECK ADD  CONSTRAINT [FK_purchase_orderdetail_employee_1] FOREIGN KEY([ordered_by])
REFERENCES [dbo].[employee] ([user_id])
GO
ALTER TABLE [dbo].[purchase_orderdetail] CHECK CONSTRAINT [FK_purchase_orderdetail_employee_1]
GO
ALTER TABLE [dbo].[purchase_orderdetail]  WITH CHECK ADD  CONSTRAINT [FK_purchase_orderdetail_employee_2] FOREIGN KEY([updated_by])
REFERENCES [dbo].[employee] ([user_id])
GO
ALTER TABLE [dbo].[purchase_orderdetail] CHECK CONSTRAINT [FK_purchase_orderdetail_employee_2]
GO
ALTER TABLE [dbo].[purchase_orderdetail]  WITH CHECK ADD  CONSTRAINT [FK_purchase_orderdetail_item] FOREIGN KEY([item_id])
REFERENCES [dbo].[items] ([item_id])
GO
ALTER TABLE [dbo].[purchase_orderdetail] CHECK CONSTRAINT [FK_purchase_orderdetail_item]
GO
ALTER TABLE [dbo].[purchase_orderdetail]  WITH CHECK ADD  CONSTRAINT [FK_purchase_orderdetail_project] FOREIGN KEY([project_id])
REFERENCES [dbo].[project] ([project_id])
GO
ALTER TABLE [dbo].[purchase_orderdetail] CHECK CONSTRAINT [FK_purchase_orderdetail_project]
GO
ALTER TABLE [dbo].[purchase_orderdetail]  WITH CHECK ADD  CONSTRAINT [FK_purchase_orderdetail_purchase_order] FOREIGN KEY([order_id])
REFERENCES [dbo].[purchase_order] ([order_id])
GO
ALTER TABLE [dbo].[purchase_orderdetail] CHECK CONSTRAINT [FK_purchase_orderdetail_purchase_order]
GO
ALTER TABLE [dbo].[purchase_stock]  WITH CHECK ADD  CONSTRAINT [FK_purchase_stock_employee_1] FOREIGN KEY([received_by])
REFERENCES [dbo].[employee] ([user_id])
GO
ALTER TABLE [dbo].[purchase_stock] CHECK CONSTRAINT [FK_purchase_stock_employee_1]
GO
ALTER TABLE [dbo].[purchase_stock]  WITH CHECK ADD  CONSTRAINT [FK_purchase_stock_employee_2] FOREIGN KEY([updated_by])
REFERENCES [dbo].[employee] ([user_id])
GO
ALTER TABLE [dbo].[purchase_stock] CHECK CONSTRAINT [FK_purchase_stock_employee_2]
GO
ALTER TABLE [dbo].[purchase_stock]  WITH CHECK ADD  CONSTRAINT [FK_purchase_stock_item] FOREIGN KEY([item_id])
REFERENCES [dbo].[items] ([item_id])
GO
ALTER TABLE [dbo].[purchase_stock] CHECK CONSTRAINT [FK_purchase_stock_item]
GO
ALTER TABLE [dbo].[purchase_stock]  WITH CHECK ADD  CONSTRAINT [FK_purchase_stock_order] FOREIGN KEY([order_id])
REFERENCES [dbo].[purchase_order] ([order_id])
GO
ALTER TABLE [dbo].[purchase_stock] CHECK CONSTRAINT [FK_purchase_stock_order]
GO
ALTER TABLE [dbo].[purchase_stock]  WITH CHECK ADD  CONSTRAINT [FK_purchase_stock_project] FOREIGN KEY([project_id])
REFERENCES [dbo].[project] ([project_id])
GO
ALTER TABLE [dbo].[purchase_stock] CHECK CONSTRAINT [FK_purchase_stock_project]
GO
ALTER TABLE [dbo].[room]  WITH CHECK ADD  CONSTRAINT [FK_room_employee_1] FOREIGN KEY([designed_by])
REFERENCES [dbo].[employee] ([user_id])
GO
ALTER TABLE [dbo].[room] CHECK CONSTRAINT [FK_room_employee_1]
GO
ALTER TABLE [dbo].[room]  WITH CHECK ADD  CONSTRAINT [FK_room_employee_2] FOREIGN KEY([updated_by])
REFERENCES [dbo].[employee] ([user_id])
GO
ALTER TABLE [dbo].[room] CHECK CONSTRAINT [FK_room_employee_2]
GO
ALTER TABLE [dbo].[room]  WITH CHECK ADD  CONSTRAINT [FK_room_project] FOREIGN KEY([project_id])
REFERENCES [dbo].[project] ([project_id])
GO
ALTER TABLE [dbo].[room] CHECK CONSTRAINT [FK_room_project]
GO
ALTER TABLE [dbo].[window]  WITH CHECK ADD  CONSTRAINT [FK_window_room] FOREIGN KEY([room_id])
REFERENCES [dbo].[room] ([room_id])
GO
ALTER TABLE [dbo].[window] CHECK CONSTRAINT [FK_window_room]
GO
USE [master]
GO
ALTER DATABASE [StrideDesignFront] SET  READ_WRITE 
GO
