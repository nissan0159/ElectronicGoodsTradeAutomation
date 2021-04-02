USE [master]
GO
/****** Object:  Database [ElectronicsGoodsTradeAutomation]    Script Date: 3/31/2021 12:51:10 PM ******/
CREATE DATABASE [ElectronicsGoodsTradeAutomation]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ElectronicsGoodsTradeAutomation', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ElectronicsGoodsTradeAutomation.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ElectronicsGoodsTradeAutomation_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ElectronicsGoodsTradeAutomation_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ElectronicsGoodsTradeAutomation] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ElectronicsGoodsTradeAutomation].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ElectronicsGoodsTradeAutomation] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ElectronicsGoodsTradeAutomation] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ElectronicsGoodsTradeAutomation] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ElectronicsGoodsTradeAutomation] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ElectronicsGoodsTradeAutomation] SET ARITHABORT OFF 
GO
ALTER DATABASE [ElectronicsGoodsTradeAutomation] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ElectronicsGoodsTradeAutomation] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ElectronicsGoodsTradeAutomation] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ElectronicsGoodsTradeAutomation] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ElectronicsGoodsTradeAutomation] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ElectronicsGoodsTradeAutomation] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ElectronicsGoodsTradeAutomation] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ElectronicsGoodsTradeAutomation] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ElectronicsGoodsTradeAutomation] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ElectronicsGoodsTradeAutomation] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ElectronicsGoodsTradeAutomation] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ElectronicsGoodsTradeAutomation] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ElectronicsGoodsTradeAutomation] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ElectronicsGoodsTradeAutomation] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ElectronicsGoodsTradeAutomation] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ElectronicsGoodsTradeAutomation] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ElectronicsGoodsTradeAutomation] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ElectronicsGoodsTradeAutomation] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ElectronicsGoodsTradeAutomation] SET  MULTI_USER 
GO
ALTER DATABASE [ElectronicsGoodsTradeAutomation] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ElectronicsGoodsTradeAutomation] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ElectronicsGoodsTradeAutomation] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ElectronicsGoodsTradeAutomation] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ElectronicsGoodsTradeAutomation] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ElectronicsGoodsTradeAutomation] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ElectronicsGoodsTradeAutomation] SET QUERY_STORE = OFF
GO
USE [ElectronicsGoodsTradeAutomation]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 3/31/2021 12:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 3/31/2021 12:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[NationalIdentity] [varchar](11) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[Adress] [varchar](255) NOT NULL,
	[PhotoPath] [nvarchar](255) NULL,
	[PhoneNumber] [varchar](12) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 3/31/2021 12:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[NationalityIdentity] [varchar](11) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[Adress] [varchar](255) NOT NULL,
	[PhoneNumber] [varchar](12) NOT NULL,
	[PhotoPath] [nvarchar](255) NULL,
	[Notes] [varchar](255) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/31/2021 12:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [smallint] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [smallint] NOT NULL,
	[OrderDate] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/31/2021 12:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [smallint] NOT NULL,
	[SupplierId] [smallint] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[QuantityPerUnit] [smallint] NOT NULL,
	[UnitPrice] [decimal](7, 2) NOT NULL,
	[UnitsInStock] [smallint] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 3/31/2021 12:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[CompanyName] [varchar](50) NOT NULL,
	[ContactName] [varchar](50) NOT NULL,
	[Adress] [varchar](255) NOT NULL,
	[PhoneNumber] [varchar](12) NOT NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Employees] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employees] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Employees]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Products]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Suppliers] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Suppliers] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Suppliers]
GO
USE [master]
GO
ALTER DATABASE [ElectronicsGoodsTradeAutomation] SET  READ_WRITE 
GO
