USE [master]
GO
/****** Object:  Database [Project]    Script Date: 09/07/2025 3:36:46 CH ******/
CREATE DATABASE [Project]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Demo', FILENAME = N'C:\Users\quach\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\Demo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Demo_log', FILENAME = N'C:\Users\quach\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\Demo.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Project] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Project].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Project] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [Project] SET ANSI_NULLS ON 
GO
ALTER DATABASE [Project] SET ANSI_PADDING ON 
GO
ALTER DATABASE [Project] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [Project] SET ARITHABORT ON 
GO
ALTER DATABASE [Project] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Project] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Project] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Project] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Project] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [Project] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [Project] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Project] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [Project] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Project] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Project] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Project] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Project] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Project] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Project] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Project] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Project] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Project] SET RECOVERY FULL 
GO
ALTER DATABASE [Project] SET  MULTI_USER 
GO
ALTER DATABASE [Project] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Project] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Project] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Project] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Project] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Project] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Project] SET QUERY_STORE = OFF
GO
USE [Project]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 09/07/2025 3:36:46 CH ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 09/07/2025 3:36:47 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 09/07/2025 3:36:47 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 09/07/2025 3:36:47 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 09/07/2025 3:36:47 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 09/07/2025 3:36:47 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 09/07/2025 3:36:47 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
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
	[Address] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 09/07/2025 3:36:47 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
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
/****** Object:  Table [dbo].[Categories]    Script Date: 09/07/2025 3:36:47 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 09/07/2025 3:36:47 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[Quantity] [int] NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 09/07/2025 3:36:47 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[Status] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[Address] [nvarchar](max) NULL,
	[Total] [decimal](18, 2) NULL,
	[FullName] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 09/07/2025 3:36:47 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NULL,
	[Quantity] [int] NULL,
	[Image] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[DiscountDate] [datetime2](7) NULL,
	[DiscountEndDate] [datetime2](7) NULL,
	[DiscountPercent] [decimal](18, 2) NULL,
	[CategoryId] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250422155124_DBFirst', N'8.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250422160700_update-user', N'8.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250701051746_AddFullNameAndPhoneToOrder', N'8.0.15')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address]) VALUES (N'5fd48217-ce46-4cf0-b042-5527ba260c8c', N'Dat', N'DAT', N'dat4@gmail.com', N'DAT4@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEDvKO0sZxE0dbqi2JBe3Ymr14POTHZKlvztsExdnMxWNZ5BSK4B3QQwiZT23ulBxdg==', N'5D6D6PKO65PD5RQIZ345OJURERTEJXVJ', N'0b1250ee-839e-497c-b803-d4f0c5ca7dda', N'0389758949', 0, 0, NULL, 1, 0, N'123 Dien Bien Phu')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address]) VALUES (N'8a5b2104-a3ca-484e-975f-56aeb024e817', N'dat2@gmail.com', N'DAT2@GMAIL.COM', N'dat2@gmail.com', N'DAT2@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEBGNxA4PXNG4xWCxHH49yzOLZ3TzflfD7jQToAEkL8wmUfZyT1IQao7djH+XCl0bdQ==', N'IAHCSUU5RTMFGCKVJIHHG5QQCG5K4KUI', N'3bb350b3-7d8c-4702-a5df-c6e846b31080', N'0389758949', 0, 0, NULL, 1, 0, N'123 Dien Bien Phu')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address]) VALUES (N'ac767b81-9202-41a3-8bc3-091ce6883316', N'dat3@gmail.com', N'DAT3@GMAIL.COM', N'dat3@gmail.com', N'DAT3@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEEBcORSjesBbfvJ8kcj9BkQ4ULXgfRVMJAMk5CW155/eD64DrCbZXMefoBrcWQUWIg==', N'7QIR7BP7XGO6DMSB3J6FECN6WPXLEB5V', N'c2c410a9-b325-4468-9adf-b78f748638c0', N'0389758949', 0, 0, NULL, 1, 0, N'123 Dien Bien Phu')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address]) VALUES (N'b36ebad2-e6c1-490d-ad85-7298a8fefe27', N'dat10@gmail.com', N'DAT10@GMAIL.COM', N'dat10@gmail.com', N'DAT10@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEATXpVwsXRv6S9vGkijFl91WxmvskP0emPMZnRVKDD4NZw2U8OQPENhKw8sT6LR6jQ==', N'JQK3SC7IPOKAXITJ2JPLS5HOS6Q5BMZP', N'f5eb4578-d4e6-4f3e-a782-e244c4b45178', N'0389758949', 0, 0, NULL, 1, 0, N'123 Dien Bien Phu')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address]) VALUES (N'c88f9d34-dfd3-4cb8-bd13-460ba41eea31', N'dat8@gmail.com', N'DAT8@GMAIL.COM', N'dat8@gmail.com', N'DAT8@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEPseJuVVAnA1AVHRmQns6pxvVScEbEL6gbRn1s51FAUcGPr4MK26L64+6ohywJAhXA==', N'HLFYP7QXGOODZ6OYKKWVXZK3E6Y7WEM4', N'c891ac17-0b97-4bf6-a1a4-7d2da804b600', N'0389758949', 0, 0, NULL, 1, 0, N'123 Dien Bien Phu')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address]) VALUES (N'f215dd5c-9388-40d6-bbd7-e27ea04e2d8a', N'dat1@gmail.com', N'DAT1@GMAIL.COM', N'dat1@gmail.com', N'DAT1@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEOh0wu41jOTqTJpShNwDoCFbAts7GymVtX5jnhGjuFClVCEBwCqjn8DZJe7aV+pLcA==', N'2LVZ4KZ3YILY5CP6FTV4G5Z2SZQZSOBE', N'a7baa925-7a04-437e-b8f3-8083f80b8c12', N'0389758949', 0, 0, NULL, 1, 0, N'123 Dien Bien Phu')
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (1, N'Citrus Fruits', N'Fruits rich in vitamin C like oranges and lemons')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (2, N'Berries', N'Small, juicy fruits like strawberries and blueberries')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (3, N'Tropical Fruits', N'Exotic fruits from tropical regions')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([Id], [ProductId], [OrderId], [Quantity], [Price]) VALUES (1, 1, 1, 1, 100)
INSERT [dbo].[OrderDetail] ([Id], [ProductId], [OrderId], [Quantity], [Price]) VALUES (2, 4, 2, 1, 30)
INSERT [dbo].[OrderDetail] ([Id], [ProductId], [OrderId], [Quantity], [Price]) VALUES (1002, 1, 1002, 2, 100)
INSERT [dbo].[OrderDetail] ([Id], [ProductId], [OrderId], [Quantity], [Price]) VALUES (1003, 2, 1002, 1, 80)
INSERT [dbo].[OrderDetail] ([Id], [ProductId], [OrderId], [Quantity], [Price]) VALUES (2002, 2, 2002, 8, 80)
INSERT [dbo].[OrderDetail] ([Id], [ProductId], [OrderId], [Quantity], [Price]) VALUES (2003, 1, 2002, 5, 100)
INSERT [dbo].[OrderDetail] ([Id], [ProductId], [OrderId], [Quantity], [Price]) VALUES (3002, 4, 3002, 10, 30)
INSERT [dbo].[OrderDetail] ([Id], [ProductId], [OrderId], [Quantity], [Price]) VALUES (4002, 3, 4002, 10, 120)
INSERT [dbo].[OrderDetail] ([Id], [ProductId], [OrderId], [Quantity], [Price]) VALUES (4003, 2, 4002, 2, 80)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreatedAt], [Address], [Total], [FullName], [Phone]) VALUES (1, N'guest', N'Đang xử lý', CAST(N'2025-06-24T22:36:14.3021543' AS DateTime2), N'123 Nguyễn ĐÌNH Chiểu', CAST(100.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreatedAt], [Address], [Total], [FullName], [Phone]) VALUES (2, N'dat8@gmail.com', N'Đang xử lý', CAST(N'2025-06-24T22:42:38.4862957' AS DateTime2), N'111 aaa', CAST(30.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreatedAt], [Address], [Total], [FullName], [Phone]) VALUES (1002, N'dat8@gmail.com', N'Đang xử lý', CAST(N'2025-06-25T07:25:02.1626869' AS DateTime2), N'123 huung', CAST(280.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreatedAt], [Address], [Total], [FullName], [Phone]) VALUES (2002, N'dat8@gmail.com', N'Đang xử lý', CAST(N'2025-07-01T12:21:02.5713250' AS DateTime2), N'123 DIEN BIEN PHU', CAST(1140.00 AS Decimal(18, 2)), N'DAT', N'0389758949')
INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreatedAt], [Address], [Total], [FullName], [Phone]) VALUES (3002, N'dat8@gmail.com', N'Đang xử lý', CAST(N'2025-07-01T17:48:10.1985717' AS DateTime2), N'111 aaa', CAST(300.00 AS Decimal(18, 2)), N'Dat', N'0389758949')
INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreatedAt], [Address], [Total], [FullName], [Phone]) VALUES (4002, N'dat8@gmail.com', N'Đang xử lý', CAST(N'2025-07-09T15:18:22.5343962' AS DateTime2), N'329/64/31 db', CAST(1360.00 AS Decimal(18, 2)), N'Dat', N'0389758949')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Price], [Quantity], [Image], [Description], [DiscountDate], [DiscountEndDate], [DiscountPercent], [CategoryId]) VALUES (1, N'Orange', CAST(100.00 AS Decimal(18, 2)), 100, N'orange.jpg', N'Fresh and juicy oranges', CAST(N'2025-05-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-08-08T00:00:00.0000000' AS DateTime2), CAST(0.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Quantity], [Image], [Description], [DiscountDate], [DiscountEndDate], [DiscountPercent], [CategoryId]) VALUES (2, N'Lemon', CAST(80.00 AS Decimal(18, 2)), 120, N'product-img-3.jpg', N'Sour lemons full of vitamin C', CAST(N'2025-05-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-08-08T00:00:00.0000000' AS DateTime2), CAST(0.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Quantity], [Image], [Description], [DiscountDate], [DiscountEndDate], [DiscountPercent], [CategoryId]) VALUES (3, N'Strawberry', CAST(120.00 AS Decimal(18, 2)), 80, N'product-img-1.jpg', N'Sweet and fresh strawberries', CAST(N'2025-05-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-08-08T00:00:00.0000000' AS DateTime2), CAST(0.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Quantity], [Image], [Description], [DiscountDate], [DiscountEndDate], [DiscountPercent], [CategoryId]) VALUES (4, N'Blueberry', CAST(30.00 AS Decimal(18, 2)), 60, N'blueberry.jpg', N'Organic blueberries', CAST(N'2025-05-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-08-08T00:00:00.0000000' AS DateTime2), CAST(0.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Quantity], [Image], [Description], [DiscountDate], [DiscountEndDate], [DiscountPercent], [CategoryId]) VALUES (5, N'Mango', CAST(70.00 AS Decimal(18, 2)), 80, N'mango.jpg', N'Ripe tropical mangoes', CAST(N'2025-05-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-08-08T00:00:00.0000000' AS DateTime2), CAST(0.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Quantity], [Image], [Description], [DiscountDate], [DiscountEndDate], [DiscountPercent], [CategoryId]) VALUES (6, N'Pineapple', CAST(60.00 AS Decimal(18, 2)), 100, N'pineapple.jpg', N'Sweet and tangy pineapples', CAST(N'2025-05-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-08-08T00:00:00.0000000' AS DateTime2), CAST(0.00 AS Decimal(18, 2)), 3)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 09/07/2025 3:36:47 CH ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 09/07/2025 3:36:47 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 09/07/2025 3:36:47 CH ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 09/07/2025 3:36:47 CH ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 09/07/2025 3:36:47 CH ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 09/07/2025 3:36:47 CH ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 09/07/2025 3:36:47 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetail_OrderId]    Script Date: 09/07/2025 3:36:47 CH ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetail_OrderId] ON [dbo].[OrderDetail]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetail_ProductId]    Script Date: 09/07/2025 3:36:47 CH ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetail_ProductId] ON [dbo].[OrderDetail]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 09/07/2025 3:36:47 CH ******/
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
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Products_ProductId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
USE [master]
GO
ALTER DATABASE [Project] SET  READ_WRITE 
GO
