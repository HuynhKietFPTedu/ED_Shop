USE [master]
GO
/****** Object:  Database [AspNetUser]    Script Date: 3/24/2024 7:15:57 AM ******/
CREATE DATABASE [AspNetUser]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AspNetUser', FILENAME = N'C:\Users\PC\AspNetUser.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AspNetUser_log', FILENAME = N'C:\Users\PC\AspNetUser_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [AspNetUser] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AspNetUser].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AspNetUser] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AspNetUser] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AspNetUser] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AspNetUser] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AspNetUser] SET ARITHABORT OFF 
GO
ALTER DATABASE [AspNetUser] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AspNetUser] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AspNetUser] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AspNetUser] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AspNetUser] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AspNetUser] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AspNetUser] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AspNetUser] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AspNetUser] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AspNetUser] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AspNetUser] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AspNetUser] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AspNetUser] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AspNetUser] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AspNetUser] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AspNetUser] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [AspNetUser] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AspNetUser] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AspNetUser] SET  MULTI_USER 
GO
ALTER DATABASE [AspNetUser] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AspNetUser] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AspNetUser] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AspNetUser] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AspNetUser] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AspNetUser] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [AspNetUser] SET QUERY_STORE = OFF
GO
USE [AspNetUser]
GO
/****** Object:  User [DESKTOP-H82IH4V\TuKi2901]    Script Date: 3/24/2024 7:15:58 AM ******/
CREATE USER [DESKTOP-H82IH4V\TuKi2901] FOR LOGIN [DESKTOP-H82IH4V\TuKi2901] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [DESKTOP-H82IH4V\TuKi2901]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [DESKTOP-H82IH4V\TuKi2901]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [DESKTOP-H82IH4V\TuKi2901]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [DESKTOP-H82IH4V\TuKi2901]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [DESKTOP-H82IH4V\TuKi2901]
GO
ALTER ROLE [db_datareader] ADD MEMBER [DESKTOP-H82IH4V\TuKi2901]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [DESKTOP-H82IH4V\TuKi2901]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [DESKTOP-H82IH4V\TuKi2901]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [DESKTOP-H82IH4V\TuKi2901]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/24/2024 7:15:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 3/24/2024 7:15:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/24/2024 7:15:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/24/2024 7:15:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/24/2024 7:15:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/24/2024 7:15:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/24/2024 7:15:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [uniqueidentifier] NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Avatar] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Gender] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 3/24/2024 7:15:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 3/24/2024 7:15:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[BrandId] [int] IDENTITY(1,1) NOT NULL,
	[BrandName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 3/24/2024 7:15:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[AccountId] [uniqueidentifier] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_Carts] PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 3/24/2024 7:15:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/24/2024 7:15:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[ProductQuantity] [int] NOT NULL,
	[ProductDescription] [nvarchar](max) NULL,
	[ProductPrice] [float] NOT NULL,
	[ProductImage] [nvarchar](max) NOT NULL,
	[ProductScreen] [nvarchar](max) NULL,
	[ProductPlatform] [nvarchar](max) NULL,
	[ProductCamera] [nvarchar](max) NULL,
	[ProductChip] [nvarchar](max) NULL,
	[ProductRam] [nvarchar](max) NULL,
	[ProductStorage] [nvarchar](max) NULL,
	[ProductBattery] [nvarchar](max) NULL,
	[ProductColor] [nvarchar](max) NULL,
	[BrandId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240318102322_v1', N'8.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240318112759_v2', N'8.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240321194140_v1', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240323155920_v2', N'8.0.3')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [Address], [Avatar], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Gender]) VALUES (N'783797bd-9c16-4102-8012-3514d5c708ac', N'Nguyễn Văn B', N'Long An', N'avartar1.png', N'BAdmin', N'BADMIN', N'huynhtrantuankiet2901@gmail.com', N'HUYNHTRANTUANKIET2901@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEMMnywsX8In5JdAaD3oiNC/yMGGh0t7+AW/3kHfufzh9B8B/i4TgrLRt4hhMBVNLKg==', N'PTCCMP4ZM4VWDB56DROU2R2LI3BPJAFM', N'89590ba0-a29c-4b96-8026-es22e22bada4', N'0123456789', 0, 0, NULL, 1, 0, N'Male')
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [Address], [Avatar], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Gender]) VALUES (N'783797bd-9c16-4102-8084-3514d5c708ac', N'Nguyễn Văn A', N'Long An', N'avartar1.png', N'AAdmin', N'AADMIN', N'huynhtrantuankiet2901@gmail.com', N'HUYNHTRANTUANKIET2901@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEMMnywsX8In5JdAaD3oiNC/yMGGh0t7+AW/3kHfufzh9B8B/i4TgrLRt4hhMNVNLKg==', N'PTCCMP4ZM4VWDB56DROU2R2LI3SPJAFM', N'89590ba0-a29c-4b96-8026-es22e82bada4', N'0123456789', 0, 0, NULL, 1, 0, N'Male')
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [Address], [Avatar], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Gender]) VALUES (N'783797bd-9c16-4102-8084-3514d7c708ac', N'Huỳnh Trần Tuấn Kiệt', N'Long An', N'avartar1.png', N'KietAdmin', N'KIETADMIN', N'huynhtrantuankiet2901@gmail.com', N'HUYNHTRANTUANKIET2901@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEMMnywsX8In5JdAaD3oiNC/yMGGh0t7+AW/3kHfufzh9B8B/i4TgrLRt4hhMNONLKg==', N'PTCCMP4ZM4VWDB56DROU2R2LI3SPJUFM', N'89590ba0-a29c-4b96-8026-eb22e82bada4', N'0123456789', 0, 0, NULL, 1, 0, N'Male')
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([BrandId], [BrandName]) VALUES (3, N'Samsung')
INSERT [dbo].[Brands] ([BrandId], [BrandName]) VALUES (7, N'Apple')
INSERT [dbo].[Brands] ([BrandId], [BrandName]) VALUES (10, N'Motorola')
INSERT [dbo].[Brands] ([BrandId], [BrandName]) VALUES (12, N'Asus')
INSERT [dbo].[Brands] ([BrandId], [BrandName]) VALUES (16, N'Acer')
INSERT [dbo].[Brands] ([BrandId], [BrandName]) VALUES (17, N'Dell')
INSERT [dbo].[Brands] ([BrandId], [BrandName]) VALUES (20, N'Google')
INSERT [dbo].[Brands] ([BrandId], [BrandName]) VALUES (21, N'HP')
INSERT [dbo].[Brands] ([BrandId], [BrandName]) VALUES (22, N'Lenovo')
INSERT [dbo].[Brands] ([BrandId], [BrandName]) VALUES (23, N'Microsoft')
INSERT [dbo].[Brands] ([BrandId], [BrandName]) VALUES (26, N'OnePlus')
INSERT [dbo].[Brands] ([BrandId], [BrandName]) VALUES (28, N'Realme')
INSERT [dbo].[Brands] ([BrandId], [BrandName]) VALUES (29, N'Sony')
INSERT [dbo].[Brands] ([BrandId], [BrandName]) VALUES (32, N'Xiaomi')
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (5, N'Smart Phone')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (24, N'Laptop')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductQuantity], [ProductDescription], [ProductPrice], [ProductImage], [ProductScreen], [ProductPlatform], [ProductCamera], [ProductChip], [ProductRam], [ProductStorage], [ProductBattery], [ProductColor], [BrandId], [CategoryId]) VALUES (19, N'Google Pixel 6 Pro', 200, N'Google Pixel 6 Pro là flagship mới nhất của Google với màn hình OLED 6.7 inch, chip Snapdragon 888, camera 50MP + 12MP + 48MP và pin 5003mAh.', 899.99, N'1.png', N'6.7 inch OLED', N'Android', N'50MP + 12MP + 48MP', N'Snapdragon 888', N'12GB', N'128GB', N'5000mAh', N'Stormy Black', 20, 5)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductQuantity], [ProductDescription], [ProductPrice], [ProductImage], [ProductScreen], [ProductPlatform], [ProductCamera], [ProductChip], [ProductRam], [ProductStorage], [ProductBattery], [ProductColor], [BrandId], [CategoryId]) VALUES (20, N'OnePlus 9 Pro', 120, N'OnePlus 9 Pro là flagship của OnePlus với màn hình Fluid AMOLED 6.7 inch, chip Snapdragon 888, camera 48MP + 50MP + 8MP + 2MP và pin 4500mAh.', 899.99, N'2.png', N'6.7 inch Fluid AMOLED', N'Android', N'48MP + 50MP + 8MP + 2MP', N'Snapdragon 888', N'8GB', N'128GB', N'4500mAh', N'Morning Mist', 26, 5)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductQuantity], [ProductDescription], [ProductPrice], [ProductImage], [ProductScreen], [ProductPlatform], [ProductCamera], [ProductChip], [ProductRam], [ProductStorage], [ProductBattery], [ProductColor], [BrandId], [CategoryId]) VALUES (21, N'Xiaomi Mi 11 Ultra', 180, N'Xiaomi Mi 11 Ultra là smartphone cao cấp của Xiaomi với màn hình AMOLED 6.81 inch, chip Snapdragon 888, camera 50MP + 48MP + 48MP và pin 5000mAh.', 999.99, N'3.png', N'6.81 inch AMOLED', N'Android', N'50MP + 48MP + 48MP', N'Snapdragon 888', N'8GB', N'256GB', N'5000mAh', N'Ceramic White', 32, 5)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductQuantity], [ProductDescription], [ProductPrice], [ProductImage], [ProductScreen], [ProductPlatform], [ProductCamera], [ProductChip], [ProductRam], [ProductStorage], [ProductBattery], [ProductColor], [BrandId], [CategoryId]) VALUES (22, N'Sony Xperia 1 III', 100, N'Sony Xperia 1 III là một trong những smartphone hàng đầu của Sony với màn hình OLED 6.5 inch, chip Snapdragon 888, camera 12MP + 12MP + 12MP và pin 4500mAh.', 1299.99, N'4.png', N'6.5 inch OLED', N'Android', N'12MP + 12MP + 12MP', N'Snapdragon 888', N'12GB', N'256GB', N'4500mAh', N'Frosted Black', 29, 5)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductQuantity], [ProductDescription], [ProductPrice], [ProductImage], [ProductScreen], [ProductPlatform], [ProductCamera], [ProductChip], [ProductRam], [ProductStorage], [ProductBattery], [ProductColor], [BrandId], [CategoryId]) VALUES (23, N'Samsung Galaxy Z Fold 3', 80, N'Samsung Galaxy Z Fold 3 là smartphone gập của Samsung với màn hình Dynamic AMOLED 2X 7.6 inch, chip Snapdragon 888, camera 12MP + 12MP + 12MP và pin 4400mAh.', 1799.99, N'5.png', N'7.6 inch Dynamic AMOLED 2X', N'Android', N'12MP + 12MP + 12MP', N'Snapdragon 888', N'12GB', N'512GB', N'4400mAh', N'Phantom Green', 3, 5)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductQuantity], [ProductDescription], [ProductPrice], [ProductImage], [ProductScreen], [ProductPlatform], [ProductCamera], [ProductChip], [ProductRam], [ProductStorage], [ProductBattery], [ProductColor], [BrandId], [CategoryId]) VALUES (24, N'iPhone 13', 200, N'iPhone 13 là phiên bản tiêu chuẩn của dòng iPhone mới nhất của Apple với màn hình Super Retina XDR 6.1 inch, chip A15 Bionic, camera 12MP + 12MP + 12MP và pin 3456mAh.', 799.99, N'6.png', N'6.1 inch Super Retina XDR OLED', N'iOS', N'12MP + 12MP + 12MP', N'A15 Bionic', N'4GB', N'128GB', N'3000mAh', N'Midnight', 7, 5)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductQuantity], [ProductDescription], [ProductPrice], [ProductImage], [ProductScreen], [ProductPlatform], [ProductCamera], [ProductChip], [ProductRam], [ProductStorage], [ProductBattery], [ProductColor], [BrandId], [CategoryId]) VALUES (25, N'Google Pixel 5a', 150, N'Google Pixel 5a là phiên bản giá rẻ của dòng Pixel với màn hình OLED 6.34 inch, chip Snapdragon 765G, camera 12.2MP + 16MP và pin 4680mAh.', 449.99, N'7.png', N'6.34 inch OLED', N'Android', N'12.2MP + 16MP', N'Snapdragon 765G', N'6GB', N'128GB', N'4680mAh', N'Sorta Sage', 20, 5)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductQuantity], [ProductDescription], [ProductPrice], [ProductImage], [ProductScreen], [ProductPlatform], [ProductCamera], [ProductChip], [ProductRam], [ProductStorage], [ProductBattery], [ProductColor], [BrandId], [CategoryId]) VALUES (26, N'OnePlus Nord 2', 180, N'OnePlus Nord 2 là mẫu smartphone tầm trung của OnePlus với màn hình Fluid AMOLED 6.43 inch, chip MediaTek Dimensity 1200, camera 50MP + 8MP + 2MP và pin 4500mAh.', 499.99, N'8.png', N'6.43 inch Fluid AMOLED', N'Android', N'50MP + 8MP + 2MP', N'MediaTek Dimensity 1200', N'8GB', N'256GB', N'4500mAh', N'Blue Haze', 26, 5)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductQuantity], [ProductDescription], [ProductPrice], [ProductImage], [ProductScreen], [ProductPlatform], [ProductCamera], [ProductChip], [ProductRam], [ProductStorage], [ProductBattery], [ProductColor], [BrandId], [CategoryId]) VALUES (27, N'Xiaomi Redmi Note 10 Pro', 250, N'Xiaomi Redmi Note 10 Pro là smartphone tầm trung của Xiaomi với màn hình AMOLED 6.67 inch, chip Snapdragon 732G, camera 108MP + 8MP + 5MP + 2MP và pin 5020mAh.', 349.99, N'4.png', N'6.67 inch AMOLED', N'Android', N'108MP + 8MP + 5MP + 2MP', N'Snapdragon 732G', N'6GB', N'64GB', N'5020mAh', N'Glacier Blue', 32, 5)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductQuantity], [ProductDescription], [ProductPrice], [ProductImage], [ProductScreen], [ProductPlatform], [ProductCamera], [ProductChip], [ProductRam], [ProductStorage], [ProductBattery], [ProductColor], [BrandId], [CategoryId]) VALUES (28, N'Realme GT Master Edition', 200, N'Realme GT Master Edition là smartphone tầm trung của Realme với màn hình Super AMOLED 6.43 inch, chip Snapdragon 778G, camera 64MP + 8MP + 2MP và pin 4300mAh.', 399.99, N'1.png', N'6.43 inch Super AMOLED', N'Android', N'64MP + 8MP + 2MP', N'Snapdragon 778G', N'6GB', N'128GB', N'4300mAh', N'Lunar White', 28, 5)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductQuantity], [ProductDescription], [ProductPrice], [ProductImage], [ProductScreen], [ProductPlatform], [ProductCamera], [ProductChip], [ProductRam], [ProductStorage], [ProductBattery], [ProductColor], [BrandId], [CategoryId]) VALUES (29, N'Motorola Moto G Power (2021)', 150, N'Motorola Moto G Power (2021) là smartphone tầm trung của Motorola với màn hình IPS LCD 6.6 inch, chip Snapdragon 662, camera 48MP + 2MP + 2MP và pin 5000mAh.', 249.99, N'2.png', N'6.6 inch IPS LCD', N'Android', N'48MP + 2MP + 2MP', N'Snapdragon 662', N'4GB', N'32GB', N'5000mAh', N'Flash Gray', 10, 5)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductQuantity], [ProductDescription], [ProductPrice], [ProductImage], [ProductScreen], [ProductPlatform], [ProductCamera], [ProductChip], [ProductRam], [ProductStorage], [ProductBattery], [ProductColor], [BrandId], [CategoryId]) VALUES (30, N'Google Pixel 6 Pro', 80, N'Google Pixel 6 Pro là mẫu smartphone mới nhất của Google với màn hình OLED 6.7 inch, chip Tensor, camera 50MP + 12MP + 48MP và pin 5000mAh.', 899.99, N'3.png', N'6.7 inch OLED', N'Android', N'50MP + 12MP + 48MP', N'Tensor', N'12GB', N'512GB', N'5000mAh', N'Stormy Black', 20, 5)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductQuantity], [ProductDescription], [ProductPrice], [ProductImage], [ProductScreen], [ProductPlatform], [ProductCamera], [ProductChip], [ProductRam], [ProductStorage], [ProductBattery], [ProductColor], [BrandId], [CategoryId]) VALUES (31, N'Xiaomi Mi 11 Lite 5G', 120, N'Xiaomi Mi 11 Lite 5G là một trong những smartphone tầm trung của Xiaomi với màn hình AMOLED 6.55 inch, chip Snapdragon 780G, camera 64MP + 8MP + 5MP và pin 4250mAh.', 399.99, N'4.png', N'6.55 inch AMOLED', N'Android', N'64MP + 8MP + 5MP', N'Snapdragon 780G', N'6GB', N'128GB', N'4250mAh', N'Truffle Black', 32, 5)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductQuantity], [ProductDescription], [ProductPrice], [ProductImage], [ProductScreen], [ProductPlatform], [ProductCamera], [ProductChip], [ProductRam], [ProductStorage], [ProductBattery], [ProductColor], [BrandId], [CategoryId]) VALUES (32, N'OnePlus Nord CE 5G', 150, N'OnePlus Nord CE 5G là mẫu smartphone giá rẻ của OnePlus với màn hình Fluid AMOLED 6.43 inch, chip Snapdragon 750G, camera 64MP + 8MP + 2MP và pin 4500mAh.', 299.99, N'5.png', N'6.43 inch Fluid AMOLED', N'Android', N'64MP + 8MP + 2MP', N'Snapdragon 750G', N'12GB', N'256GB', N'4500mAh', N'Charcoal Ink', 26, 5)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductQuantity], [ProductDescription], [ProductPrice], [ProductImage], [ProductScreen], [ProductPlatform], [ProductCamera], [ProductChip], [ProductRam], [ProductStorage], [ProductBattery], [ProductColor], [BrandId], [CategoryId]) VALUES (33, N'Realme 8 Pro', 180, N'Realme 8 Pro là smartphone tầm trung của Realme với màn hình Super AMOLED 6.4 inch, chip Snapdragon 720G, camera 108MP + 8MP + 2MP + 2MP và pin 4500mAh.', 279.99, N'6.png', N'6.4 inch Super AMOLED', N'Android', N'108MP + 8MP + 2MP + 2MP', N'Snapdragon 720G', N'8GB', N'256GB', N'4500mAh', N'Infinite Black', 28, 5)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductQuantity], [ProductDescription], [ProductPrice], [ProductImage], [ProductScreen], [ProductPlatform], [ProductCamera], [ProductChip], [ProductRam], [ProductStorage], [ProductBattery], [ProductColor], [BrandId], [CategoryId]) VALUES (34, N'Motorola Moto G50', 200, N'Motorola Moto G50 là smartphone giá rẻ của Motorola với màn hình IPS LCD 6.5 inch, chip Snapdragon 480, camera 48MP + 5MP + 2MP và pin 5000mAh.', 199.99, N'7.png', N'6.5 inch IPS LCD', N'Android', N'48MP + 5MP + 2MP', N'Snapdragon 480', N'6GB', N'128GB', N'5000mAh', N'Steel Gray', 10, 5)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductQuantity], [ProductDescription], [ProductPrice], [ProductImage], [ProductScreen], [ProductPlatform], [ProductCamera], [ProductChip], [ProductRam], [ProductStorage], [ProductBattery], [ProductColor], [BrandId], [CategoryId]) VALUES (35, N'Samsung Galaxy A52', 250, N'Samsung Galaxy A52 là mẫu smartphone tầm trung của Samsung với màn hình Super AMOLED 6.5 inch, chip Snapdragon 720G, camera 64MP + 12MP + 5MP + 5MP và pin 4500mAh.', 349.99, N'8.png', N'6.5 inch Super AMOLED', N'Android', N'64MP + 12MP + 5MP + 5MP', N'Snapdragon 720G', N'4GB', N'128GB', N'4500mAh', N'Awesome Violet', 3, 5)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductQuantity], [ProductDescription], [ProductPrice], [ProductImage], [ProductScreen], [ProductPlatform], [ProductCamera], [ProductChip], [ProductRam], [ProductStorage], [ProductBattery], [ProductColor], [BrandId], [CategoryId]) VALUES (36, N'iPhone SE (2022)', 150, N'iPhone SE (2022) là mẫu smartphone giá rẻ nhất của Apple với màn hình Retina LCD 4.7 inch, chip A15 Bionic, camera 12MP và pin 2270mAh.', 399.99, N'1.png', N'4.7 inch Retina LCD', N'iOS', N'12MP', N'A15 Bionic', N'4GB', N'256GB', N'2270mAh', N'Product Red', 7, 5)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductQuantity], [ProductDescription], [ProductPrice], [ProductImage], [ProductScreen], [ProductPlatform], [ProductCamera], [ProductChip], [ProductRam], [ProductStorage], [ProductBattery], [ProductColor], [BrandId], [CategoryId]) VALUES (37, N'Dell XPS 15', 50, N'Dell XPS 15 là mẫu laptop cao cấp với màn hình OLED 15.6 inch, vi xử lý Intel Core i7, RAM 16GB, SSD 512GB và pin 86Wh.', 1499.99, N'2.png', N'15.6 inch OLED', N'Window', N'Không áp dụng', N'Intel Core i7', N'16GB', N'512GB', N'86Wh', N'Silver', 17, 24)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductQuantity], [ProductDescription], [ProductPrice], [ProductImage], [ProductScreen], [ProductPlatform], [ProductCamera], [ProductChip], [ProductRam], [ProductStorage], [ProductBattery], [ProductColor], [BrandId], [CategoryId]) VALUES (38, N'MacBook Pro 16-inch', 30, N'MacBook Pro 16-inch là laptop chuyên dụng cho công việc sáng tạo với màn hình Retina 16 inch, chip M1 Pro, RAM 32GB, SSD 1TB và pin 100Wh.', 2399.99, N'3.png', N'16 inch Retina', N'macOS', N'Không áp dụng', N'Apple M1 Pro', N'32GB', N'1TB', N'100Wh', N'Space Gray', 7, 24)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductQuantity], [ProductDescription], [ProductPrice], [ProductImage], [ProductScreen], [ProductPlatform], [ProductCamera], [ProductChip], [ProductRam], [ProductStorage], [ProductBattery], [ProductColor], [BrandId], [CategoryId]) VALUES (39, N'Lenovo ThinkPad X1 Carbon', 40, N'Lenovo ThinkPad X1 Carbon là dòng laptop doanh nhân cao cấp với màn hình IPS 14 inch, vi xử lý Intel Core i5, RAM 8GB, SSD 256GB và pin 51Wh.', 1299.99, N'4.png', N'14 inch IPS', N'Window', N'Không áp dụng', N'Intel Core i5', N'8GB', N'256GB', N'51Wh', N'Black', 22, 24)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductQuantity], [ProductDescription], [ProductPrice], [ProductImage], [ProductScreen], [ProductPlatform], [ProductCamera], [ProductChip], [ProductRam], [ProductStorage], [ProductBattery], [ProductColor], [BrandId], [CategoryId]) VALUES (40, N'HP Spectre x360', 60, N'HP Spectre x360 là laptop 2 trong 1 với màn hình AMOLED 13.3 inch cảm ứng, chip Intel Core i7, RAM 16GB, SSD 512GB và pin 66Wh.', 1399.99, N'5.png', N'13.3 inch AMOLED Touchscreen', N'Window', N'Không áp dụng', N'Intel Core i7', N'16GB', N'512GB', N'66Wh', N'Dark Ash Silver', 21, 24)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductQuantity], [ProductDescription], [ProductPrice], [ProductImage], [ProductScreen], [ProductPlatform], [ProductCamera], [ProductChip], [ProductRam], [ProductStorage], [ProductBattery], [ProductColor], [BrandId], [CategoryId]) VALUES (41, N'Asus ROG Zephyrus G14', 80, N'Asus ROG Zephyrus G14 là laptop gaming siêu nhẹ với màn hình IPS 14 inch, chip AMD Ryzen 9, RAM 32GB, SSD 1TB và pin 76Wh.', 1699.99, N'6.png', N'14 inch IPS', N'Window', N'Không áp dụng', N'AMD Ryzen 9', N'32GB', N'1TB', N'76Wh', N'Moonlight White', 12, 24)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductQuantity], [ProductDescription], [ProductPrice], [ProductImage], [ProductScreen], [ProductPlatform], [ProductCamera], [ProductChip], [ProductRam], [ProductStorage], [ProductBattery], [ProductColor], [BrandId], [CategoryId]) VALUES (42, N'Acer Swift 5', 70, N'Acer Swift 5 là laptop siêu nhẹ với màn hình IPS 14 inch, chip Intel Core i7, RAM 16GB, SSD 512GB và pin 56Wh.', 999.99, N'7.png', N'14 inch IPS', N'Window', N'Không áp dụng', N'Intel Core i7', N'16GB', N'512GB', N'56Wh', N'Mist Green', 16, 24)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductQuantity], [ProductDescription], [ProductPrice], [ProductImage], [ProductScreen], [ProductPlatform], [ProductCamera], [ProductChip], [ProductRam], [ProductStorage], [ProductBattery], [ProductColor], [BrandId], [CategoryId]) VALUES (43, N'Microsoft Surface Laptop 4', 90, N'Microsoft Surface Laptop 4 là laptop cao cấp với màn hình PixelSense 13.5 inch, chip Intel Core i5, RAM 8GB, SSD 256GB và pin 49Wh.', 1299.99, N'8.png', N'13.5 inch PixelSense', N'Window', N'Không áp dụng', N'Intel Core i5', N'8GB', N'256GB', N'49Wh', N'Platinum', 23, 24)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 3/24/2024 7:15:58 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 3/24/2024 7:15:58 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 3/24/2024 7:15:58 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 3/24/2024 7:15:58 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 3/24/2024 7:15:58 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 3/24/2024 7:15:58 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 3/24/2024 7:15:58 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Carts_ProductId]    Script Date: 3/24/2024 7:15:58 AM ******/
CREATE NONCLUSTERED INDEX [IX_Carts_ProductId] ON [dbo].[Carts]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_BrandId]    Script Date: 3/24/2024 7:15:58 AM ******/
CREATE NONCLUSTERED INDEX [IX_Products_BrandId] ON [dbo].[Products]
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 3/24/2024 7:15:58 AM ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_AspNetUsers_AccountId] FOREIGN KEY([AccountId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_AspNetUsers_AccountId]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_Products_ProductId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Brands_BrandId] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([BrandId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Brands_BrandId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
USE [master]
GO
ALTER DATABASE [AspNetUser] SET  READ_WRITE 
GO
