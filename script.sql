USE [master]
GO
/****** Object:  Database [BookingRestaurant_PRN]    Script Date: 07/23/2022 07:59:55 ******/
CREATE DATABASE [BookingRestaurant_PRN] 

GO
ALTER DATABASE [BookingRestaurant_PRN] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [BookingRestaurant_PRN] SET ANSI_NULLS OFF
GO
ALTER DATABASE [BookingRestaurant_PRN] SET ANSI_PADDING OFF
GO
ALTER DATABASE [BookingRestaurant_PRN] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [BookingRestaurant_PRN] SET ARITHABORT OFF
GO
ALTER DATABASE [BookingRestaurant_PRN] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [BookingRestaurant_PRN] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [BookingRestaurant_PRN] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [BookingRestaurant_PRN] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [BookingRestaurant_PRN] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [BookingRestaurant_PRN] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [BookingRestaurant_PRN] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [BookingRestaurant_PRN] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [BookingRestaurant_PRN] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [BookingRestaurant_PRN] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [BookingRestaurant_PRN] SET  DISABLE_BROKER
GO
ALTER DATABASE [BookingRestaurant_PRN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [BookingRestaurant_PRN] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [BookingRestaurant_PRN] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [BookingRestaurant_PRN] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [BookingRestaurant_PRN] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [BookingRestaurant_PRN] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [BookingRestaurant_PRN] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [BookingRestaurant_PRN] SET  READ_WRITE
GO
ALTER DATABASE [BookingRestaurant_PRN] SET RECOVERY SIMPLE
GO
ALTER DATABASE [BookingRestaurant_PRN] SET  MULTI_USER
GO
ALTER DATABASE [BookingRestaurant_PRN] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [BookingRestaurant_PRN] SET DB_CHAINING OFF
GO
USE [BookingRestaurant_PRN]
GO
/****** Object:  Table [dbo].[Time]    Script Date: 07/23/2022 07:59:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Time](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[time] [varchar](50) NULL,
 CONSTRAINT [PK_Time] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Time] ON
INSERT [dbo].[Time] ([id], [time]) VALUES (1, N'07:00')
INSERT [dbo].[Time] ([id], [time]) VALUES (2, N'07:30')
INSERT [dbo].[Time] ([id], [time]) VALUES (3, N'08:00')
INSERT [dbo].[Time] ([id], [time]) VALUES (4, N'08:30')
INSERT [dbo].[Time] ([id], [time]) VALUES (5, N'09:00')
INSERT [dbo].[Time] ([id], [time]) VALUES (6, N'09:30')
INSERT [dbo].[Time] ([id], [time]) VALUES (7, N'10:00')
INSERT [dbo].[Time] ([id], [time]) VALUES (8, N'10:30')
INSERT [dbo].[Time] ([id], [time]) VALUES (9, N'11:00')
INSERT [dbo].[Time] ([id], [time]) VALUES (10, N'11:30')
INSERT [dbo].[Time] ([id], [time]) VALUES (11, N'12:00')
INSERT [dbo].[Time] ([id], [time]) VALUES (12, N'12:30')
INSERT [dbo].[Time] ([id], [time]) VALUES (13, N'13:00')
INSERT [dbo].[Time] ([id], [time]) VALUES (14, N'13:30')
INSERT [dbo].[Time] ([id], [time]) VALUES (15, N'14:00')
INSERT [dbo].[Time] ([id], [time]) VALUES (16, N'14:30')
INSERT [dbo].[Time] ([id], [time]) VALUES (17, N'15:00')
INSERT [dbo].[Time] ([id], [time]) VALUES (18, N'15:30')
INSERT [dbo].[Time] ([id], [time]) VALUES (19, N'16:00')
INSERT [dbo].[Time] ([id], [time]) VALUES (20, N'16:30')
INSERT [dbo].[Time] ([id], [time]) VALUES (21, N'17:00')
INSERT [dbo].[Time] ([id], [time]) VALUES (22, N'17:30')
INSERT [dbo].[Time] ([id], [time]) VALUES (23, N'18:00')
INSERT [dbo].[Time] ([id], [time]) VALUES (24, N'18:30')
INSERT [dbo].[Time] ([id], [time]) VALUES (25, N'19:00')
INSERT [dbo].[Time] ([id], [time]) VALUES (26, N'19:30')
INSERT [dbo].[Time] ([id], [time]) VALUES (27, N'20:00')
INSERT [dbo].[Time] ([id], [time]) VALUES (28, N'20:30')
INSERT [dbo].[Time] ([id], [time]) VALUES (29, N'21:00')
INSERT [dbo].[Time] ([id], [time]) VALUES (30, N'21:30')
INSERT [dbo].[Time] ([id], [time]) VALUES (31, N'22:00')
SET IDENTITY_INSERT [dbo].[Time] OFF
/****** Object:  Table [dbo].[Table]    Script Date: 07/23/2022 07:59:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[Capacity] [int] NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Table] ON
INSERT [dbo].[Table] ([id], [name], [Capacity], [Description]) VALUES (1, N' Table 1', 2, N'Cool table ok')
INSERT [dbo].[Table] ([id], [name], [Capacity], [Description]) VALUES (2, N'Table 2', 2, N'Hoho')
INSERT [dbo].[Table] ([id], [name], [Capacity], [Description]) VALUES (3, N'Table 3', 2, N'yay')
INSERT [dbo].[Table] ([id], [name], [Capacity], [Description]) VALUES (4, N'Table 4', 5, N'hi')
INSERT [dbo].[Table] ([id], [name], [Capacity], [Description]) VALUES (5, N'Table 5', 5, NULL)
INSERT [dbo].[Table] ([id], [name], [Capacity], [Description]) VALUES (6, N'Table 6', 5, NULL)
INSERT [dbo].[Table] ([id], [name], [Capacity], [Description]) VALUES (7, N'Table 7', 5, NULL)
INSERT [dbo].[Table] ([id], [name], [Capacity], [Description]) VALUES (8, N'Table 8', 10, NULL)
INSERT [dbo].[Table] ([id], [name], [Capacity], [Description]) VALUES (9, N'Table 9', 10, NULL)
INSERT [dbo].[Table] ([id], [name], [Capacity], [Description]) VALUES (10, N'Table 10', 10, NULL)
SET IDENTITY_INSERT [dbo].[Table] OFF
/****** Object:  Table [dbo].[Role]    Script Date: 07/23/2022 07:59:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON
INSERT [dbo].[Role] ([id], [name]) VALUES (1, N'Manager')
INSERT [dbo].[Role] ([id], [name]) VALUES (2, N'Staff')
INSERT [dbo].[Role] ([id], [name]) VALUES (3, N'Customer')
SET IDENTITY_INSERT [dbo].[Role] OFF
/****** Object:  Table [dbo].[Account]    Script Date: 07/23/2022 07:59:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_id] [int] NULL,
	[username] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[fullname] [nvarchar](255) NULL,
	[status] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[phone] [varchar](50) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Account] ON
INSERT [dbo].[Account] ([id], [role_id], [username], [password], [fullname], [status], [email], [phone]) VALUES (1, 1, N'admin', N'admin', N'admin', NULL, NULL, NULL)
INSERT [dbo].[Account] ([id], [role_id], [username], [password], [fullname], [status], [email], [phone]) VALUES (2, 2, N'staff1', N'staff1', N'staff2', N'Inactive', N'11', N'')
INSERT [dbo].[Account] ([id], [role_id], [username], [password], [fullname], [status], [email], [phone]) VALUES (3, 3, N'trang', N'trang123', N'trang', NULL, NULL, NULL)
INSERT [dbo].[Account] ([id], [role_id], [username], [password], [fullname], [status], [email], [phone]) VALUES (4, NULL, N'', N'', N'', NULL, N'', N'4')
INSERT [dbo].[Account] ([id], [role_id], [username], [password], [fullname], [status], [email], [phone]) VALUES (5, NULL, N'aaaa', N'', N'', NULL, N'', N'09883898933')
INSERT [dbo].[Account] ([id], [role_id], [username], [password], [fullname], [status], [email], [phone]) VALUES (6, NULL, N'adddd', N'', N'', NULL, N'', N'0988389893')
INSERT [dbo].[Account] ([id], [role_id], [username], [password], [fullname], [status], [email], [phone]) VALUES (7, NULL, N'abc', N'abc', N'abc', NULL, N'abc', N'0988389833')
INSERT [dbo].[Account] ([id], [role_id], [username], [password], [fullname], [status], [email], [phone]) VALUES (8, NULL, N'aida', N'aida', N'aida', N'Active', N'aida', N'0123456789')
INSERT [dbo].[Account] ([id], [role_id], [username], [password], [fullname], [status], [email], [phone]) VALUES (10, NULL, N'dung', N'dung', N'dung', N'Active', N'dung', N'0123456789')
INSERT [dbo].[Account] ([id], [role_id], [username], [password], [fullname], [status], [email], [phone]) VALUES (11, 3, N'tieutuyet', N'haha', N'haha', N'Active', N'haha', N'0123456789')
SET IDENTITY_INSERT [dbo].[Account] OFF
/****** Object:  Table [dbo].[Booking]    Script Date: 07/23/2022 07:59:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[time_id] [int] NULL,
	[table_id] [int] NULL,
	[numberofpeople] [int] NULL,
	[orderdate] [date] NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Booking] ON
INSERT [dbo].[Booking] ([id], [account_id], [time_id], [table_id], [numberofpeople], [orderdate]) VALUES (1, 3, 1, 1, 3, CAST(0x34440B00 AS Date))
INSERT [dbo].[Booking] ([id], [account_id], [time_id], [table_id], [numberofpeople], [orderdate]) VALUES (2, 3, 1, 2, 4, CAST(0x35440B00 AS Date))
INSERT [dbo].[Booking] ([id], [account_id], [time_id], [table_id], [numberofpeople], [orderdate]) VALUES (3, 3, 1, 3, 2, CAST(0x36440B00 AS Date))
INSERT [dbo].[Booking] ([id], [account_id], [time_id], [table_id], [numberofpeople], [orderdate]) VALUES (4, 1, 8, 1, 2, CAST(0x35440B00 AS Date))
INSERT [dbo].[Booking] ([id], [account_id], [time_id], [table_id], [numberofpeople], [orderdate]) VALUES (5, 1, 8, 4, 3, CAST(0x35440B00 AS Date))
INSERT [dbo].[Booking] ([id], [account_id], [time_id], [table_id], [numberofpeople], [orderdate]) VALUES (6, 1, 8, 5, 4, CAST(0x35440B00 AS Date))
INSERT [dbo].[Booking] ([id], [account_id], [time_id], [table_id], [numberofpeople], [orderdate]) VALUES (11, 11, 3, 1, 2, CAST(0x36440B00 AS Date))
SET IDENTITY_INSERT [dbo].[Booking] OFF
/****** Object:  ForeignKey [FK_Account_Role]    Script Date: 07/23/2022 07:59:56 ******/
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role]
GO
/****** Object:  ForeignKey [FK_Booking_Account]    Script Date: 07/23/2022 07:59:56 ******/
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Account] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Account]
GO
/****** Object:  ForeignKey [FK_Booking_Table]    Script Date: 07/23/2022 07:59:56 ******/
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Table] FOREIGN KEY([table_id])
REFERENCES [dbo].[Table] ([id])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Table]
GO
/****** Object:  ForeignKey [FK_Booking_Time]    Script Date: 07/23/2022 07:59:56 ******/
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Time] FOREIGN KEY([time_id])
REFERENCES [dbo].[Time] ([id])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Time]
GO
