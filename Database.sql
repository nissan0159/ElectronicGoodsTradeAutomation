USE [ElectronicsGoodsTrade]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 4/5/2021 8:01:32 AM ******/
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
/****** Object:  Table [dbo].[Customers]    Script Date: 4/5/2021 8:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[NationalIdentity] [varchar](11) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[Adress] [varchar](255) NOT NULL,
	[PhotoPath] [nvarchar](255) NULL,
	[PhoneNumber] [varchar](12) NOT NULL,
	[Enabled] [bit] NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 4/5/2021 8:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[NationalIdentity] [varchar](11) NOT NULL,
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
/****** Object:  Table [dbo].[OperationClaims]    Script Date: 4/5/2021 8:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperationClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NOT NULL,
 CONSTRAINT [PK_OperationClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 4/5/2021 8:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [dbo].[Products]    Script Date: 4/5/2021 8:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [smallint] NOT NULL,
	[SupplierId] [smallint] NOT NULL,
	[ProductName] [varchar](50) NOT NULL,
	[QuantityPerUnit] [smallint] NOT NULL,
	[UnitPrice] [decimal](7, 2) NOT NULL,
	[UnitsInStock] [smallint] NOT NULL,
	[Enabled] [bit] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 4/5/2021 8:01:32 AM ******/
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
/****** Object:  Table [dbo].[UserOperationClaims]    Script Date: 4/5/2021 8:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserOperationClaims](
	[Id] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[OperationClaimId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 4/5/2021 8:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[PasswordHash] [varbinary](500) NOT NULL,
	[PasswordSalt] [varbinary](500) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (1, N'Bilgisayar')
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (2, N'Telefon')
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (3, N'Tablet')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [NationalIdentity], [BirthDate], [Adress], [PhotoPath], [PhoneNumber], [Enabled]) VALUES (1, N'Furkanxxxx', N'Artar', N'12345678910', CAST(N'2020-04-05' AS Date), N'Bursa Osmangazi', NULL, N'05202224455', 0)
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [NationalIdentity], [BirthDate], [Adress], [PhotoPath], [PhoneNumber], [Enabled]) VALUES (2, N'Kader', N'Tekin', N'12345678910', CAST(N'2021-04-05' AS Date), N'Bursa Osmangazi', NULL, N'05204445577', 1)
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([Id], [FirstName], [LastName], [NationalIdentity], [BirthDate], [Adress], [PhoneNumber], [PhotoPath], [Notes]) VALUES (2, N'Kader', N'Tekin', N'12345678910', CAST(N'1975-03-11' AS Date), N'Bursa Osmangazi', N'05204445544', N'ddddddddddddddd', NULL)
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [EmployeeId], [CustomerId], [ProductId], [Quantity], [OrderDate]) VALUES (1, 2, 1, 2, 1, CAST(N'2021-04-04T00:00:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [CategoryId], [SupplierId], [ProductName], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [Enabled]) VALUES (2, 1, 2, N'S10+', 154, CAST(6999.00 AS Decimal(7, 2)), 15, 1)
INSERT [dbo].[Products] ([Id], [CategoryId], [SupplierId], [ProductName], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [Enabled]) VALUES (3, 1, 2, N'S10+', 154, CAST(6999.00 AS Decimal(7, 2)), 20, 0)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Suppliers] ON 

INSERT [dbo].[Suppliers] ([Id], [CompanyName], [ContactName], [Adress], [PhoneNumber]) VALUES (2, N'Samsung', N'Ahmet', N'Kore', N'07788445566')
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [PasswordHash], [PasswordSalt], [Status]) VALUES (1, N'furkan', N'artar', N'furkan@gmail.com', 0x92E91BE839F871138DE3EF06FD67AD6768BFABBFC9B85DD3F220C57AF47E93FAA047B63EE176D7FFE8F329872D77DB7F04AA9BB69D287DD0B45B97E4D31E337A, 0x2C369C2D6C780D5016170EE8F48DE01B6D8CF9706D07EFE17A8746C297A570508634A8DA223C3B11E40B8424AB910AE9DC5908B1A146EC991E221A02929FA02CE7B1771FFF455077BC411FE7150536696E36FDBA35C1FB9D0075D2971EA7B91F5EEDF7751B576A3DA18BF962AAEC19947ACC8E40F665BA300638B669AB4F0AC4, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [PasswordHash], [PasswordSalt], [Status]) VALUES (2, N'furkan', N'artar', N'furkan2@gmail.com', 0x09740765A5E44255328D1C7495108A2D13D81A11DF57AFA572947B127F2EBC838394F662F6677612AF3E9FE05E6D41DE51415356D6BC150F711EFDD139B2873C, 0x1504B10F9F5ACE09E1B2D16BB0CCDECDBB13706E8467585F57DAD75F4F12C696E4517CEE02B45B4E90CE848CDA8B79B3A6B8989C7F482087F34D559D921716B0B5BF2D2F12E5EFC46499CCF3DB85180B5675B5E1E154FEBF290F52ACE2CBB1FF9F69DF55A9896750DFC0B24DE0F9C023AAA66479BAF7E788E034694D21ACFC63, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [PasswordHash], [PasswordSalt], [Status]) VALUES (3, N'furkan', N'artar', N'furkan3@gmail.com', 0x3BFCC1E47FC86B37EEF3FD69A8D50E21AC25DB5EA4C522D59CB2847842F26E8D57AC53057D9D6C6373758F4FAAB66BF32739CA52E7684F6D06146B8FCE185664, 0x395F7A3DC28771113BDCCC786E8422CEC0C25FD435DA76428EAB0F5CAAA714A81EFB5CE53D805454BCF05906661B0E21EC7320B932644D409A723B765A63BCB6993E7547760912B987CA1C7AAB9EAD401556A01886919CBA11865A52002D22A0DC7A814D4A8797A2EC659676ACE97A412891FC2BC399CC184332B28E4F331B3D, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [PasswordHash], [PasswordSalt], [Status]) VALUES (4, N'furkan', N'artar', N'furkan4@gmail.com', 0x5C5E67912F854AA7977BCF5C825B0F62955C7DA10EE078A505D90558A7BAA6945A4834088C4EC5D997C903F3426741719F4447677E450C83A6D98152285CC35F, 0x3D2ADDCF5A97C3D5FE315FE928994FFDB10226F779315E538BF2768B574523BF20BF48999D4D4160B94875B2AEF8928EFF9E321FB76271ECA8049C89B72B590B8725BE1C5B619798FACA3C5B9CB5ACAB61A46416952ACA0E59407B1F057D3E1E14D91646DF47828CD89133DF0E192DF8AF065974FA59A9E025810471C6795977, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [PasswordHash], [PasswordSalt], [Status]) VALUES (5, N'deniz', N'cakmak', N'denizcakmak@gmail.com', 0x90C376AFE2249B865F6AC9798FCF962DFAD93811F17CA8B8B67D058B3F2850847B54FA35CDB8EB5F97AE945528FC33B241CBE848C6D3C41500942CA634660F53, 0x86F6CD08470C3F4EB2C05E6244061D731961D6C6ED7605D8A68F7FD63A4BF98C60498234B9DEF57D92F145BB34427962A90D937ACFAF55CC421A2E11B7B0ACD116CE3C354223322C9A34B42828A85B01B7AAD5434FEE86FC95B83FE2931EC828BA40AC572535239A36DCD0BEE247677836CC9920176F6743C58A6C26B6718798, 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DF_Customers_Enabled]  DEFAULT ((1)) FOR [Enabled]
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
ALTER TABLE [dbo].[UserOperationClaims]  WITH CHECK ADD  CONSTRAINT [FK_UserOperationClaims_OperationClaims] FOREIGN KEY([OperationClaimId])
REFERENCES [dbo].[OperationClaims] ([Id])
GO
ALTER TABLE [dbo].[UserOperationClaims] CHECK CONSTRAINT [FK_UserOperationClaims_OperationClaims]
GO
ALTER TABLE [dbo].[UserOperationClaims]  WITH CHECK ADD  CONSTRAINT [FK_UserOperationClaims_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserOperationClaims] CHECK CONSTRAINT [FK_UserOperationClaims_Users]
GO
