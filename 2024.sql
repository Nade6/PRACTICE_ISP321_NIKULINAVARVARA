USE [master]
GO
/****** Object:  Database [Practice2024]    Script Date: 05.12.2024 15:49:49 ******/
CREATE DATABASE [Practice2024]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Practice2024', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Practice2024.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Practice2024_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Practice2024_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Practice2024] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Practice2024].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Practice2024] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Practice2024] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Practice2024] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Practice2024] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Practice2024] SET ARITHABORT OFF 
GO
ALTER DATABASE [Practice2024] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Practice2024] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Practice2024] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Practice2024] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Practice2024] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Practice2024] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Practice2024] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Practice2024] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Practice2024] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Practice2024] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Practice2024] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Practice2024] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Practice2024] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Practice2024] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Practice2024] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Practice2024] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Practice2024] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Practice2024] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Practice2024] SET  MULTI_USER 
GO
ALTER DATABASE [Practice2024] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Practice2024] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Practice2024] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Practice2024] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Practice2024] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Practice2024] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Practice2024] SET QUERY_STORE = ON
GO
ALTER DATABASE [Practice2024] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Practice2024]
GO
/****** Object:  Table [dbo].[BrokenPixels]    Script Date: 05.12.2024 15:49:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BrokenPixels](
	[id] [int] NOT NULL,
	[brokenPixels] [nvarchar](50) NULL,
 CONSTRAINT [PK_BrokenPixels] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Efficiency]    Script Date: 05.12.2024 15:49:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Efficiency](
	[id] [int] NOT NULL,
	[efficiency] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Efficiency] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Keyboards]    Script Date: 05.12.2024 15:49:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Keyboards](
	[id] [int] NOT NULL,
	[keyboardName] [nvarchar](50) NOT NULL,
	[typeKeyboard] [nvarchar](50) NOT NULL,
	[interfaceConnection] [nvarchar](50) NULL,
	[wireless] [nvarchar](50) NOT NULL,
	[idEffinciency] [int] NOT NULL,
	[idQuantityKeyboard] [int] NOT NULL,
 CONSTRAINT [PK_Keyboards_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturers]    Script Date: 05.12.2024 15:49:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturers](
	[id] [int] NOT NULL,
	[manufacturer] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Manufacturers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Monitors]    Script Date: 05.12.2024 15:49:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Monitors](
	[id] [int] NOT NULL,
	[idmanufacturer] [int] NOT NULL,
	[idQuantityMonitors] [int] NOT NULL,
	[nameModel] [nvarchar](50) NOT NULL,
	[screenResolution] [nvarchar](50) NOT NULL,
	[gercovka] [nvarchar](100) NOT NULL,
	[idTypeMatricy] [int] NULL,
	[idBrokenPixels] [int] NULL,
	[commentForBrokenPixels] [nvarchar](200) NULL,
	[idEfficiency] [int] NOT NULL,
	[idStatusSelling] [int] NOT NULL,
 CONSTRAINT [PK_Monitors] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pks]    Script Date: 05.12.2024 15:49:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pks](
	[id] [nchar](10) NOT NULL,
	[processor] [nvarchar](50) NULL,
	[motherboard] [nvarchar](100) NOT NULL,
	[RAMmemory] [nvarchar](50) NULL,
	[kuller] [nvarchar](50) NULL,
	[hardDrive] [nvarchar](50) NULL,
	[energyBlock] [nvarchar](100) NULL,
	[videoCard] [nvarchar](50) NULL,
	[fan] [nvarchar](50) NULL,
	[idEfficiency] [int] NOT NULL,
	[other] [nvarchar](50) NULL,
 CONSTRAINT [PK_Pks_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusSelling]    Script Date: 05.12.2024 15:49:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusSelling](
	[id] [int] NOT NULL,
	[statusSelling] [nvarchar](60) NOT NULL,
 CONSTRAINT [PK_StatusSelling] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeMatricy]    Script Date: 05.12.2024 15:49:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeMatricy](
	[id] [int] NOT NULL,
	[typeMatricy] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TypeMatricy] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 05.12.2024 15:49:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[fname] [nvarchar](50) NOT NULL,
	[login] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BrokenPixels] ([id], [brokenPixels]) VALUES (1, N'Есть')
INSERT [dbo].[BrokenPixels] ([id], [brokenPixels]) VALUES (2, N'Нет')
INSERT [dbo].[BrokenPixels] ([id], [brokenPixels]) VALUES (3, N'Неизвестно')
GO
INSERT [dbo].[Efficiency] ([id], [efficiency]) VALUES (1, N'Неизвестно')
INSERT [dbo].[Efficiency] ([id], [efficiency]) VALUES (2, N'Работает')
INSERT [dbo].[Efficiency] ([id], [efficiency]) VALUES (3, N'Не работает')
INSERT [dbo].[Efficiency] ([id], [efficiency]) VALUES (4, N'Частично работает')
GO
INSERT [dbo].[Keyboards] ([id], [keyboardName], [typeKeyboard], [interfaceConnection], [wireless], [idEffinciency], [idQuantityKeyboard]) VALUES (1, N'Logitech Keyboard dk120', N'Мембранная, тонкая', N'USB', N'Нет', 2, 1)
INSERT [dbo].[Keyboards] ([id], [keyboardName], [typeKeyboard], [interfaceConnection], [wireless], [idEffinciency], [idQuantityKeyboard]) VALUES (2, N'Logitech Keyboard dk120', N'Мембранная, тонкая', N'USB', N'Нет', 2, 1)
INSERT [dbo].[Keyboards] ([id], [keyboardName], [typeKeyboard], [interfaceConnection], [wireless], [idEffinciency], [idQuantityKeyboard]) VALUES (3, N'Logitech Keyboard dk120', N'Мембранная, тонкая', N'USB', N'Нет', 2, 1)
INSERT [dbo].[Keyboards] ([id], [keyboardName], [typeKeyboard], [interfaceConnection], [wireless], [idEffinciency], [idQuantityKeyboard]) VALUES (4, N'Logitech Keyboard dk120', N'Мембранная, тонкая', N'USB', N'Нет', 2, 1)
INSERT [dbo].[Keyboards] ([id], [keyboardName], [typeKeyboard], [interfaceConnection], [wireless], [idEffinciency], [idQuantityKeyboard]) VALUES (5, N'Genius kb110', N'Мембранная', N'USB', N'Нет', 2, 1)
INSERT [dbo].[Keyboards] ([id], [keyboardName], [typeKeyboard], [interfaceConnection], [wireless], [idEffinciency], [idQuantityKeyboard]) VALUES (6, N'Mitsumi kfk ea4xt', N'Мембранная', N'PS/2', N'Нет', 1, 2)
INSERT [dbo].[Keyboards] ([id], [keyboardName], [typeKeyboard], [interfaceConnection], [wireless], [idEffinciency], [idQuantityKeyboard]) VALUES (7, N'Mitsumi kfk ea4xt', N'Мембранная', N'PS/2', N'Нет', 1, 2)
INSERT [dbo].[Keyboards] ([id], [keyboardName], [typeKeyboard], [interfaceConnection], [wireless], [idEffinciency], [idQuantityKeyboard]) VALUES (8, N'Mitsumi kfk ea4xt', N'Мембранная', N'PS/2', N'Нет', 1, 2)
INSERT [dbo].[Keyboards] ([id], [keyboardName], [typeKeyboard], [interfaceConnection], [wireless], [idEffinciency], [idQuantityKeyboard]) VALUES (9, N'Mitsumi kfk ea4xt', N'Мембранная', N'PS/2', N'Нет', 1, 2)
INSERT [dbo].[Keyboards] ([id], [keyboardName], [typeKeyboard], [interfaceConnection], [wireless], [idEffinciency], [idQuantityKeyboard]) VALUES (10, N'Mitsumi kfk ea4xt', N'Мембранная', N'PS/2', N'Нет', 1, 2)
INSERT [dbo].[Keyboards] ([id], [keyboardName], [typeKeyboard], [interfaceConnection], [wireless], [idEffinciency], [idQuantityKeyboard]) VALUES (11, N'Mitsumi kfk ea4xt', N'Мембранная', N'PS/2', N'Нет', 1, 2)
INSERT [dbo].[Keyboards] ([id], [keyboardName], [typeKeyboard], [interfaceConnection], [wireless], [idEffinciency], [idQuantityKeyboard]) VALUES (12, N'Microsoft Basic Keyboard 1.0a', N'Мембранная ', N'PS/3', N'Нет', 1, 3)
INSERT [dbo].[Keyboards] ([id], [keyboardName], [typeKeyboard], [interfaceConnection], [wireless], [idEffinciency], [idQuantityKeyboard]) VALUES (13, N'Cherry rs 6000 ', N'Мембранная ', N'USB', N'Нет', 2, 4)
INSERT [dbo].[Keyboards] ([id], [keyboardName], [typeKeyboard], [interfaceConnection], [wireless], [idEffinciency], [idQuantityKeyboard]) VALUES (14, N'Genius kkb 2050', N'Мембранная ', N'PS/2', N'Нет', 1, 5)
INSERT [dbo].[Keyboards] ([id], [keyboardName], [typeKeyboard], [interfaceConnection], [wireless], [idEffinciency], [idQuantityKeyboard]) VALUES (15, N'Mitsumi kfk ea4sa', N'Мембранная ', N'PS/3', N'Нет', 1, 6)
INSERT [dbo].[Keyboards] ([id], [keyboardName], [typeKeyboard], [interfaceConnection], [wireless], [idEffinciency], [idQuantityKeyboard]) VALUES (16, N'Mitsumi kfk ea4sa', N'Мембранная ', N'PS/3', N'Нет', 1, 6)
INSERT [dbo].[Keyboards] ([id], [keyboardName], [typeKeyboard], [interfaceConnection], [wireless], [idEffinciency], [idQuantityKeyboard]) VALUES (17, N'Mitsumi kfk ea4sa', N'Мембранная ', N'PS/3', N'Нет', 1, 6)
INSERT [dbo].[Keyboards] ([id], [keyboardName], [typeKeyboard], [interfaceConnection], [wireless], [idEffinciency], [idQuantityKeyboard]) VALUES (18, N'Genius kb 06xe', N'Мембранная ', N'PS/4', N'Нет', 1, 7)
INSERT [dbo].[Keyboards] ([id], [keyboardName], [typeKeyboard], [interfaceConnection], [wireless], [idEffinciency], [idQuantityKeyboard]) VALUES (19, N'Genius kb 06xe', N'Мембранная ', N'PS/4', N'Нет', 1, 7)
INSERT [dbo].[Keyboards] ([id], [keyboardName], [typeKeyboard], [interfaceConnection], [wireless], [idEffinciency], [idQuantityKeyboard]) VALUES (20, N'Genius kb 06xe', N'Мембранная ', N'PS/4', N'Нет', 1, 7)
INSERT [dbo].[Keyboards] ([id], [keyboardName], [typeKeyboard], [interfaceConnection], [wireless], [idEffinciency], [idQuantityKeyboard]) VALUES (21, N'Logitech y-sm48', N'Мембранная ', N'PS/5', N'Нет', 1, 8)
INSERT [dbo].[Keyboards] ([id], [keyboardName], [typeKeyboard], [interfaceConnection], [wireless], [idEffinciency], [idQuantityKeyboard]) VALUES (22, N'logitech k520', N'Мембранная', N'Радиоканал, usb', N'50/50', 1, 9)
INSERT [dbo].[Keyboards] ([id], [keyboardName], [typeKeyboard], [interfaceConnection], [wireless], [idEffinciency], [idQuantityKeyboard]) VALUES (23, N'logitech k520', N'Мембранная', N'Радиоканал, usb', N'50/50', 1, 9)
INSERT [dbo].[Keyboards] ([id], [keyboardName], [typeKeyboard], [interfaceConnection], [wireless], [idEffinciency], [idQuantityKeyboard]) VALUES (24, N'ETC y-bl49a', N'Мембранная ', N'USB', N'Нет', 2, 10)
GO
INSERT [dbo].[Manufacturers] ([id], [manufacturer]) VALUES (1, N'Acer')
INSERT [dbo].[Manufacturers] ([id], [manufacturer]) VALUES (2, N'Apple')
INSERT [dbo].[Manufacturers] ([id], [manufacturer]) VALUES (3, N'BENQ')
INSERT [dbo].[Manufacturers] ([id], [manufacturer]) VALUES (4, N'BENQ ')
INSERT [dbo].[Manufacturers] ([id], [manufacturer]) VALUES (5, N'Dell')
INSERT [dbo].[Manufacturers] ([id], [manufacturer]) VALUES (6, N'Nec')
INSERT [dbo].[Manufacturers] ([id], [manufacturer]) VALUES (7, N'Neovo ')
INSERT [dbo].[Manufacturers] ([id], [manufacturer]) VALUES (8, N'Samsung')
INSERT [dbo].[Manufacturers] ([id], [manufacturer]) VALUES (9, N'ViewSonic')
GO
INSERT [dbo].[Monitors] ([id], [idmanufacturer], [idQuantityMonitors], [nameModel], [screenResolution], [gercovka], [idTypeMatricy], [idBrokenPixels], [commentForBrokenPixels], [idEfficiency], [idStatusSelling]) VALUES (1, 1, 1, N'X-17AV', N'1280×1024', N'75', 6, 3, NULL, 1, 1)
INSERT [dbo].[Monitors] ([id], [idmanufacturer], [idQuantityMonitors], [nameModel], [screenResolution], [gercovka], [idTypeMatricy], [idBrokenPixels], [commentForBrokenPixels], [idEfficiency], [idStatusSelling]) VALUES (2, 1, 1, N'X-17AV', N'1280×1025', N'75', 6, 3, NULL, 1, 1)
INSERT [dbo].[Monitors] ([id], [idmanufacturer], [idQuantityMonitors], [nameModel], [screenResolution], [gercovka], [idTypeMatricy], [idBrokenPixels], [commentForBrokenPixels], [idEfficiency], [idStatusSelling]) VALUES (3, 1, 1, N'X-17AV', N'1280×1026', N'75', 6, 3, NULL, 1, 1)
INSERT [dbo].[Monitors] ([id], [idmanufacturer], [idQuantityMonitors], [nameModel], [screenResolution], [gercovka], [idTypeMatricy], [idBrokenPixels], [commentForBrokenPixels], [idEfficiency], [idStatusSelling]) VALUES (4, 1, 1, N'X-17AV', N'1280×1027', N'75', 6, 3, NULL, 1, 1)
INSERT [dbo].[Monitors] ([id], [idmanufacturer], [idQuantityMonitors], [nameModel], [screenResolution], [gercovka], [idTypeMatricy], [idBrokenPixels], [commentForBrokenPixels], [idEfficiency], [idStatusSelling]) VALUES (5, 1, 1, N'X-17AV', N'1280×1028', N'75', 6, 3, NULL, 1, 1)
INSERT [dbo].[Monitors] ([id], [idmanufacturer], [idQuantityMonitors], [nameModel], [screenResolution], [gercovka], [idTypeMatricy], [idBrokenPixels], [commentForBrokenPixels], [idEfficiency], [idStatusSelling]) VALUES (6, 1, 1, N'X-17AV', N'1280×1029', N'75', 6, 3, NULL, 1, 1)
INSERT [dbo].[Monitors] ([id], [idmanufacturer], [idQuantityMonitors], [nameModel], [screenResolution], [gercovka], [idTypeMatricy], [idBrokenPixels], [commentForBrokenPixels], [idEfficiency], [idStatusSelling]) VALUES (7, 1, 1, N'X-17AV', N'1280×1030', N'75', 6, 3, NULL, 1, 1)
INSERT [dbo].[Monitors] ([id], [idmanufacturer], [idQuantityMonitors], [nameModel], [screenResolution], [gercovka], [idTypeMatricy], [idBrokenPixels], [commentForBrokenPixels], [idEfficiency], [idStatusSelling]) VALUES (8, 2, 2, N'2408WFPb', N'1920x1200', N'75', 4, 1, N'отходит матрица, сломался подъемник', 2, 1)
INSERT [dbo].[Monitors] ([id], [idmanufacturer], [idQuantityMonitors], [nameModel], [screenResolution], [gercovka], [idTypeMatricy], [idBrokenPixels], [commentForBrokenPixels], [idEfficiency], [idStatusSelling]) VALUES (9, 2, 2, N'2408WFPb', N'1920x1201', N'75', 4, 1, N'не работает с переходниками, отдаем', 2, 2)
INSERT [dbo].[Monitors] ([id], [idmanufacturer], [idQuantityMonitors], [nameModel], [screenResolution], [gercovka], [idTypeMatricy], [idBrokenPixels], [commentForBrokenPixels], [idEfficiency], [idStatusSelling]) VALUES (10, 3, 3, N'710n d', N'1280x1024', N'75', 6, 1, NULL, 2, 1)
INSERT [dbo].[Monitors] ([id], [idmanufacturer], [idQuantityMonitors], [nameModel], [screenResolution], [gercovka], [idTypeMatricy], [idBrokenPixels], [commentForBrokenPixels], [idEfficiency], [idStatusSelling]) VALUES (11, 3, 3, N'710n d', N'1280x1025', N'75', 6, 2, NULL, 3, 1)
INSERT [dbo].[Monitors] ([id], [idmanufacturer], [idQuantityMonitors], [nameModel], [screenResolution], [gercovka], [idTypeMatricy], [idBrokenPixels], [commentForBrokenPixels], [idEfficiency], [idStatusSelling]) VALUES (12, 3, 3, N'710n d', N'1280x1026', N'75', 6, 2, NULL, 3, 1)
INSERT [dbo].[Monitors] ([id], [idmanufacturer], [idQuantityMonitors], [nameModel], [screenResolution], [gercovka], [idTypeMatricy], [idBrokenPixels], [commentForBrokenPixels], [idEfficiency], [idStatusSelling]) VALUES (13, 3, 3, N'710n d', N'1280x1027', N'75', 6, 2, NULL, 2, 1)
INSERT [dbo].[Monitors] ([id], [idmanufacturer], [idQuantityMonitors], [nameModel], [screenResolution], [gercovka], [idTypeMatricy], [idBrokenPixels], [commentForBrokenPixels], [idEfficiency], [idStatusSelling]) VALUES (14, 3, 3, N'710n d', N'1280x1028', N'75', 6, 2, NULL, 2, 1)
INSERT [dbo].[Monitors] ([id], [idmanufacturer], [idQuantityMonitors], [nameModel], [screenResolution], [gercovka], [idTypeMatricy], [idBrokenPixels], [commentForBrokenPixels], [idEfficiency], [idStatusSelling]) VALUES (15, 3, 3, N'710n d', N'1280x1029', N'75', 6, 2, NULL, 2, 1)
INSERT [dbo].[Monitors] ([id], [idmanufacturer], [idQuantityMonitors], [nameModel], [screenResolution], [gercovka], [idTypeMatricy], [idBrokenPixels], [commentForBrokenPixels], [idEfficiency], [idStatusSelling]) VALUES (16, 4, 4, N'Q7T4', N'1280x1024', N'75', 6, 3, NULL, 1, 1)
INSERT [dbo].[Monitors] ([id], [idmanufacturer], [idQuantityMonitors], [nameModel], [screenResolution], [gercovka], [idTypeMatricy], [idBrokenPixels], [commentForBrokenPixels], [idEfficiency], [idStatusSelling]) VALUES (17, 3, 5, N'740N', N'1280x1024', N'75', 6, NULL, NULL, 2, 1)
INSERT [dbo].[Monitors] ([id], [idmanufacturer], [idQuantityMonitors], [nameModel], [screenResolution], [gercovka], [idTypeMatricy], [idBrokenPixels], [commentForBrokenPixels], [idEfficiency], [idStatusSelling]) VALUES (18, 5, 6, N'ASLCD73V - BK -1 ', N'1280x1024', N'61-99', 6, 1, N'Засвет в углах', 4, 1)
INSERT [dbo].[Monitors] ([id], [idmanufacturer], [idQuantityMonitors], [nameModel], [screenResolution], [gercovka], [idTypeMatricy], [idBrokenPixels], [commentForBrokenPixels], [idEfficiency], [idStatusSelling]) VALUES (19, 6, 7, N'VS13963', N'1920x1080(27'''')', N'24-83кГц', 7, NULL, NULL, 2, 2)
INSERT [dbo].[Monitors] ([id], [idmanufacturer], [idQuantityMonitors], [nameModel], [screenResolution], [gercovka], [idTypeMatricy], [idBrokenPixels], [commentForBrokenPixels], [idEfficiency], [idStatusSelling]) VALUES (20, 7, 8, N'AL1717A', N'1280x1024', N'75', 6, 3, NULL, 3, 1)
INSERT [dbo].[Monitors] ([id], [idmanufacturer], [idQuantityMonitors], [nameModel], [screenResolution], [gercovka], [idTypeMatricy], [idBrokenPixels], [commentForBrokenPixels], [idEfficiency], [idStatusSelling]) VALUES (21, 4, 9, N'Q9C5', N'1280x1024', N'76', 6, 3, NULL, 3, 1)
INSERT [dbo].[Monitors] ([id], [idmanufacturer], [idQuantityMonitors], [nameModel], [screenResolution], [gercovka], [idTypeMatricy], [idBrokenPixels], [commentForBrokenPixels], [idEfficiency], [idStatusSelling]) VALUES (22, 6, 10, N'VS13208', N'1366x768', N'Горизонтальная: 24-82 кГц; вертикальная: 50-75 Гц', 5, 3, NULL, 3, 1)
INSERT [dbo].[Monitors] ([id], [idmanufacturer], [idQuantityMonitors], [nameModel], [screenResolution], [gercovka], [idTypeMatricy], [idBrokenPixels], [commentForBrokenPixels], [idEfficiency], [idStatusSelling]) VALUES (23, 3, 11, N'971P', N'1280x1024', N'61-99', 2, 3, NULL, 1, 1)
INSERT [dbo].[Monitors] ([id], [idmanufacturer], [idQuantityMonitors], [nameModel], [screenResolution], [gercovka], [idTypeMatricy], [idBrokenPixels], [commentForBrokenPixels], [idEfficiency], [idStatusSelling]) VALUES (24, 4, 12, N'q7c5', N'1280x1024', N'75', 6, 3, NULL, 3, 1)
INSERT [dbo].[Monitors] ([id], [idmanufacturer], [idQuantityMonitors], [nameModel], [screenResolution], [gercovka], [idTypeMatricy], [idBrokenPixels], [commentForBrokenPixels], [idEfficiency], [idStatusSelling]) VALUES (25, 4, 13, N'fp93vw', N'1440x900', N'76', 6, 3, NULL, 3, 1)
INSERT [dbo].[Monitors] ([id], [idmanufacturer], [idQuantityMonitors], [nameModel], [screenResolution], [gercovka], [idTypeMatricy], [idBrokenPixels], [commentForBrokenPixels], [idEfficiency], [idStatusSelling]) VALUES (26, 8, 14, N'FP91G+U', N'1280x1024', N'76', 6, 3, NULL, 3, 1)
INSERT [dbo].[Monitors] ([id], [idmanufacturer], [idQuantityMonitors], [nameModel], [screenResolution], [gercovka], [idTypeMatricy], [idBrokenPixels], [commentForBrokenPixels], [idEfficiency], [idStatusSelling]) VALUES (27, 3, 15, N'245b plus', N'1920x1200', N'75', 6, 1, N'- трещины в правых углах', 2, 1)
INSERT [dbo].[Monitors] ([id], [idmanufacturer], [idQuantityMonitors], [nameModel], [screenResolution], [gercovka], [idTypeMatricy], [idBrokenPixels], [commentForBrokenPixels], [idEfficiency], [idStatusSelling]) VALUES (28, 9, 16, N'cinema hd display ', N'2560x1600', N'60', 3, 3, NULL, 1, 1)
INSERT [dbo].[Monitors] ([id], [idmanufacturer], [idQuantityMonitors], [nameModel], [screenResolution], [gercovka], [idTypeMatricy], [idBrokenPixels], [commentForBrokenPixels], [idEfficiency], [idStatusSelling]) VALUES (29, 1, 17, N'x-20bv', N'1600x1200', N'75', 5, 3, NULL, 1, 1)
INSERT [dbo].[Monitors] ([id], [idmanufacturer], [idQuantityMonitors], [nameModel], [screenResolution], [gercovka], [idTypeMatricy], [idBrokenPixels], [commentForBrokenPixels], [idEfficiency], [idStatusSelling]) VALUES (30, 7, 18, N'AL1717', N'1280x1024', N'75', 6, NULL, NULL, 2, 1)
INSERT [dbo].[Monitors] ([id], [idmanufacturer], [idQuantityMonitors], [nameModel], [screenResolution], [gercovka], [idTypeMatricy], [idBrokenPixels], [commentForBrokenPixels], [idEfficiency], [idStatusSelling]) VALUES (31, 3, 19, N'2493HM', N'1920x1200', N'75', 6, 3, NULL, 1, 1)
INSERT [dbo].[Monitors] ([id], [idmanufacturer], [idQuantityMonitors], [nameModel], [screenResolution], [gercovka], [idTypeMatricy], [idBrokenPixels], [commentForBrokenPixels], [idEfficiency], [idStatusSelling]) VALUES (32, 5, 20, N'LCD2490WUXi2', N'1920x1200', N'85', NULL, 1, N'Немного выгорел слева, пролаги', 2, 1)
GO
INSERT [dbo].[Pks] ([id], [processor], [motherboard], [RAMmemory], [kuller], [hardDrive], [energyBlock], [videoCard], [fan], [idEfficiency], [other]) VALUES (N'1         ', N'Intel 05 pentium D 3.006hz', N'Asus PSL02', NULL, N'zalman Quiet CPU Cooler', NULL, NULL, NULL, N'Стандартные', 3, NULL)
INSERT [dbo].[Pks] ([id], [processor], [motherboard], [RAMmemory], [kuller], [hardDrive], [energyBlock], [videoCard], [fan], [idEfficiency], [other]) VALUES (N'10        ', N'Intel 04 seleron d 2666hz', N'Asus PSU-VM1394', NULL, N'Боксовый', NULL, N'Power man  ip-p350aj2-0 700 руб/шт.', NULL, NULL, 3, NULL)
INSERT [dbo].[Pks] ([id], [processor], [motherboard], [RAMmemory], [kuller], [hardDrive], [energyBlock], [videoCard], [fan], [idEfficiency], [other]) VALUES (N'11        ', N'?', N'Asus PSNT WS ', NULL, N'zalman Quiet CPU Cooler', NULL, NULL, NULL, N'Стандартные', 3, NULL)
INSERT [dbo].[Pks] ([id], [processor], [motherboard], [RAMmemory], [kuller], [hardDrive], [energyBlock], [videoCard], [fan], [idEfficiency], [other]) VALUES (N'12        ', N'AMD Athlon tm 64', N'Asus ABN-E  REV 2.01J', NULL, N'ЦП с тепловыми трубками', NULL, N'Power Man IP-P450DJ2-0 650 руб/шт.', N'Asus n1 3219', N'Стандартные 2x', 3, NULL)
INSERT [dbo].[Pks] ([id], [processor], [motherboard], [RAMmemory], [kuller], [hardDrive], [energyBlock], [videoCard], [fan], [idEfficiency], [other]) VALUES (N'13        ', N'Intel 04 seleron d 2.66hz', N'Asus psjv-mx ', N'Hynix pc  3200u-30330 100руб/шт', N'Боксовый', NULL, NULL, NULL, NULL, 3, NULL)
INSERT [dbo].[Pks] ([id], [processor], [motherboard], [RAMmemory], [kuller], [hardDrive], [energyBlock], [videoCard], [fan], [idEfficiency], [other]) VALUES (N'14        ', N'Intel 04 seleron d 2.806hz', N'Intel Decktop board d945jspe', NULL, N'glacialtech lgloo 5072 light', NULL, N'FSP GROUP INC ATX-450PNR 1400 руб/шт.', N'Compex r ', NULL, 3, NULL)
INSERT [dbo].[Pks] ([id], [processor], [motherboard], [RAMmemory], [kuller], [hardDrive], [energyBlock], [videoCard], [fan], [idEfficiency], [other]) VALUES (N'15        ', N'Intel core 08i3-530 2.93hz', N'Asus P7H550-M PRO', N'Kingstom kvr 1333d3s8n9/2g 2x 200руб/шт.', N'Titan dc12v', N'wd 1500hlfs', N'power man ip-p350gj2-0 300 руб/шт.', NULL, N'Стандартные', 1, NULL)
INSERT [dbo].[Pks] ([id], [processor], [motherboard], [RAMmemory], [kuller], [hardDrive], [energyBlock], [videoCard], [fan], [idEfficiency], [other]) VALUES (N'16        ', N'Intel core 2duo 05 2.13hz', N'gigabyte ga-g41m-es2l', NULL, NULL, NULL, N'power man ip-p450dj2-0 450 руб/шт.', NULL, NULL, 3, N'Резьба крепежа расшатана')
INSERT [dbo].[Pks] ([id], [processor], [motherboard], [RAMmemory], [kuller], [hardDrive], [energyBlock], [videoCard], [fan], [idEfficiency], [other]) VALUES (N'17        ', N'Intel pentium 04 d 3409zh', N'Asus ps8-e', NULL, N'Боксовый', NULL, N'Power man ip-p350aj2-0 /400 руб/шт.', NULL, N'Стандартные', 3, N'USB 2X')
INSERT [dbo].[Pks] ([id], [processor], [motherboard], [RAMmemory], [kuller], [hardDrive], [energyBlock], [videoCard], [fan], [idEfficiency], [other]) VALUES (N'18        ', N'Intel core 08 i3-530 2936hz', N'Asus P7H550-M PRO', NULL, N'Titan dc12v', N'wd 1500hlfs', N'power man ip-p350gj2-0 250 руб/шт.', NULL, N'Стандартные 2x', 3, NULL)
INSERT [dbo].[Pks] ([id], [processor], [motherboard], [RAMmemory], [kuller], [hardDrive], [energyBlock], [videoCard], [fan], [idEfficiency], [other]) VALUES (N'19        ', N'Intel core 2 duo 0e e6750 2.60hz', N'Asus psk', NULL, N'Боксовый', NULL, N'power man ip-s450aq2-0 1700 руб/шт.', NULL, N'Стандартные 2x', 3, N'кулер отсоединен ')
INSERT [dbo].[Pks] ([id], [processor], [motherboard], [RAMmemory], [kuller], [hardDrive], [energyBlock], [videoCard], [fan], [idEfficiency], [other]) VALUES (N'2         ', N'Intel 04 Seleron D 2.536hz', N'SRU E210883', NULL, N'Боксовый', NULL, N'Power man ip-p350aj2-0 /400руб/шт.', NULL, N'Стандартные', 3, NULL)
INSERT [dbo].[Pks] ([id], [processor], [motherboard], [RAMmemory], [kuller], [hardDrive], [energyBlock], [videoCard], [fan], [idEfficiency], [other]) VALUES (N'20        ', N'Intel core i3-530 2.93hz', N'Asus P7H550-M PRO', NULL, N'Titan dc12v', N'wd 1500hlfs', N'FSP GROUP INC ATX-450pa 2500 руб/шт.', NULL, NULL, 1, N'блок питания (?) стоит неправильно')
INSERT [dbo].[Pks] ([id], [processor], [motherboard], [RAMmemory], [kuller], [hardDrive], [energyBlock], [videoCard], [fan], [idEfficiency], [other]) VALUES (N'21        ', NULL, N'Asus ps kpl-am se', N'kingston kvr800d2n6k2/4g 500 руб/шт.', N'Titan dc12v', N'wd 1500hlfs', N'hiper type m500  2300 руб/шт.', NULL, N'Стандартные', 3, N'Вентиляторы не на задней панели')
INSERT [dbo].[Pks] ([id], [processor], [motherboard], [RAMmemory], [kuller], [hardDrive], [energyBlock], [videoCard], [fan], [idEfficiency], [other]) VALUES (N'22        ', N'intel seleron 089 0540 2.50hz malay', N'Asus pbh61-m le\use83', N'Samsung m378b5773dh0-ch9 200руб/шт', N'Боксовый', N'wd 1500hlfs', N'hiper type m500 2300 руб/шт.', N'Asus gaming series let''s game', N'Стандартные', 3, N'Вентиляторы не на задней панели')
INSERT [dbo].[Pks] ([id], [processor], [motherboard], [RAMmemory], [kuller], [hardDrive], [energyBlock], [videoCard], [fan], [idEfficiency], [other]) VALUES (N'23        ', N'Intel(R) Core ™ i7 cpu 950', N'Asus P6X58D Premium', N'Kingston HyperX KHX1866C 10D3/GB x3 ', N'Zalman ZP13525BLM ', N'Physical Address Extension (PAE)', N'Corsair hx850i  5000 руб/шт.', N'NVIDIA GeForce GTX 580', N'Стандртные', 2, N'Вентиляторы на передней панели')
INSERT [dbo].[Pks] ([id], [processor], [motherboard], [RAMmemory], [kuller], [hardDrive], [energyBlock], [videoCard], [fan], [idEfficiency], [other]) VALUES (N'3         ', N'Intel B 506600 core 2duad 2.406hz', N'Asus PSNT WS', NULL, N'Боксовый', NULL, N'Power man IW-P430J2-0 /300руб.шт.', NULL, N'Стандартные', 3, NULL)
INSERT [dbo].[Pks] ([id], [processor], [motherboard], [RAMmemory], [kuller], [hardDrive], [energyBlock], [videoCard], [fan], [idEfficiency], [other]) VALUES (N'4         ', N'Intel 04 Seleron D 2.806hz', N'Asus PSR-MX', NULL, N'Боксовый', NULL, NULL, N'Asus iipp', NULL, 3, NULL)
INSERT [dbo].[Pks] ([id], [processor], [motherboard], [RAMmemory], [kuller], [hardDrive], [energyBlock], [videoCard], [fan], [idEfficiency], [other]) VALUES (N'5         ', N'Intel 06 e 540 pentium dual-core 2706hz', N'Asus PSG41-m lx', NULL, N'Боксовый', NULL, N'Atx2.03(p4) /200руб./шт.', NULL, NULL, 3, NULL)
INSERT [dbo].[Pks] ([id], [processor], [motherboard], [RAMmemory], [kuller], [hardDrive], [energyBlock], [videoCard], [fan], [idEfficiency], [other]) VALUES (N'6         ', N'Intel 04 seleron d 2.206hz', N'E210882', NULL, N'Боксовый', NULL, N'Power man IP-P350Aj2-0 /400 руб./шт.', NULL, N'Стандартные', 3, NULL)
INSERT [dbo].[Pks] ([id], [processor], [motherboard], [RAMmemory], [kuller], [hardDrive], [energyBlock], [videoCard], [fan], [idEfficiency], [other]) VALUES (N'7         ', N'intel pentium 4 01 206hz', N'Asus PP4P800-VM', N'M366D643A-60=GG 512 МБ DDR3 2x 200руб/шт.', N'Боксовый', NULL, N'SWITHED TO 200-240V /700 руб/шт.', NULL, NULL, 3, N'D-Link wireless DWA-510')
INSERT [dbo].[Pks] ([id], [processor], [motherboard], [RAMmemory], [kuller], [hardDrive], [energyBlock], [videoCard], [fan], [idEfficiency], [other]) VALUES (N'8         ', N'Intel core i3-2100 3.106hz', N'Asus PBH61-M L X2', N'Kingstom kvr 1333d3s8n9/2g 2x 200руб/шт.', N'Боксовый', NULL, N'Power Man IP-S450HQ7-0 /1000 руб/шт.', NULL, NULL, 3, NULL)
INSERT [dbo].[Pks] ([id], [processor], [motherboard], [RAMmemory], [kuller], [hardDrive], [energyBlock], [videoCard], [fan], [idEfficiency], [other]) VALUES (N'9         ', N'Intel core i7-2600k 3.406 hz', N'Asus pbh67-M', N'hyper x cenesis ddr3 8 гб 2x 650руб/шт', N'Боксовый', N'wd 3000hlfs', N'Core sair TX650hz oversupply /2400 руб/шт.', N'NX8800GTX', N'Стандартные', 1, NULL)
GO
INSERT [dbo].[StatusSelling] ([id], [statusSelling]) VALUES (1, N'Выставлен')
INSERT [dbo].[StatusSelling] ([id], [statusSelling]) VALUES (2, N'Отдаем')
GO
INSERT [dbo].[TypeMatricy] ([id], [typeMatricy]) VALUES (1, N'E-IPS')
INSERT [dbo].[TypeMatricy] ([id], [typeMatricy]) VALUES (2, N'PVA')
INSERT [dbo].[TypeMatricy] ([id], [typeMatricy]) VALUES (3, N'S-IPS')
INSERT [dbo].[TypeMatricy] ([id], [typeMatricy]) VALUES (4, N'S-PVA')
INSERT [dbo].[TypeMatricy] ([id], [typeMatricy]) VALUES (5, N'TFT TN')
INSERT [dbo].[TypeMatricy] ([id], [typeMatricy]) VALUES (6, N'TN')
INSERT [dbo].[TypeMatricy] ([id], [typeMatricy]) VALUES (7, N'VA')
GO
INSERT [dbo].[Users] ([id], [name], [fname], [login], [password]) VALUES (1, N'Александра', N'Булычкина', N'Anminars26@mail.com', N'PAARA')
GO
ALTER TABLE [dbo].[Keyboards]  WITH CHECK ADD  CONSTRAINT [FK_Keyboards_Efficiency] FOREIGN KEY([idEffinciency])
REFERENCES [dbo].[Efficiency] ([id])
GO
ALTER TABLE [dbo].[Keyboards] CHECK CONSTRAINT [FK_Keyboards_Efficiency]
GO
ALTER TABLE [dbo].[Monitors]  WITH CHECK ADD  CONSTRAINT [FK_Monitors_BrokenPixels] FOREIGN KEY([idBrokenPixels])
REFERENCES [dbo].[BrokenPixels] ([id])
GO
ALTER TABLE [dbo].[Monitors] CHECK CONSTRAINT [FK_Monitors_BrokenPixels]
GO
ALTER TABLE [dbo].[Monitors]  WITH CHECK ADD  CONSTRAINT [FK_Monitors_Efficiency] FOREIGN KEY([idEfficiency])
REFERENCES [dbo].[Efficiency] ([id])
GO
ALTER TABLE [dbo].[Monitors] CHECK CONSTRAINT [FK_Monitors_Efficiency]
GO
ALTER TABLE [dbo].[Monitors]  WITH CHECK ADD  CONSTRAINT [FK_Monitors_Manufacturers] FOREIGN KEY([idmanufacturer])
REFERENCES [dbo].[Manufacturers] ([id])
GO
ALTER TABLE [dbo].[Monitors] CHECK CONSTRAINT [FK_Monitors_Manufacturers]
GO
ALTER TABLE [dbo].[Monitors]  WITH CHECK ADD  CONSTRAINT [FK_Monitors_StatusSelling] FOREIGN KEY([idStatusSelling])
REFERENCES [dbo].[StatusSelling] ([id])
GO
ALTER TABLE [dbo].[Monitors] CHECK CONSTRAINT [FK_Monitors_StatusSelling]
GO
ALTER TABLE [dbo].[Monitors]  WITH CHECK ADD  CONSTRAINT [FK_Monitors_TypeMatricy] FOREIGN KEY([idTypeMatricy])
REFERENCES [dbo].[TypeMatricy] ([id])
GO
ALTER TABLE [dbo].[Monitors] CHECK CONSTRAINT [FK_Monitors_TypeMatricy]
GO
ALTER TABLE [dbo].[Pks]  WITH CHECK ADD  CONSTRAINT [FK_Pks_Efficiency] FOREIGN KEY([idEfficiency])
REFERENCES [dbo].[Efficiency] ([id])
GO
ALTER TABLE [dbo].[Pks] CHECK CONSTRAINT [FK_Pks_Efficiency]
GO
USE [master]
GO
ALTER DATABASE [Practice2024] SET  READ_WRITE 
GO
