USE [master]
GO
/****** Object:  Database [RetailDb_new]    Script Date: 04/04/2018 12.01.03 ******/
CREATE DATABASE [RetailDb_new]
GO
USE [RetailDb_new]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 04/04/2018 12.01.03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categories](
	[category_id] [char](6) NOT NULL,
	[explanation] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 04/04/2018 12.01.03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customers](
	[customer_id] [char](10) NOT NULL,
	[name] [varchar](30) NULL,
	[address] [varchar](50) NULL,
	[region_id] [varchar](5) NOT NULL,
	[year_of_birth] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Items]    Script Date: 04/04/2018 12.01.03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Items](
	[item_id] [char](15) NOT NULL,
	[name] [varchar](50) NULL,
	[stok] [int] NULL,
	[purchasing_price] [money] NULL,
	[selling_price] [money] NULL,
	[category_id] [char](6) NOT NULL,
	[supplier_id] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Purchase_Items]    Script Date: 04/04/2018 12.01.03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Purchase_Items](
	[purchase_id] [char](14) NOT NULL,
	[item_id] [char](15) NOT NULL,
	[amount] [int] NULL,
	[purchasing_price] [money] NULL,
	[selling_price] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[purchase_id] ASC,
	[item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Purchases]    Script Date: 04/04/2018 12.01.03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Purchases](
	[purchase_id] [char](14) NOT NULL,
	[customer_id] [char](10) NOT NULL,
	[salesman_id] [varchar](10) NOT NULL,
	[date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[purchase_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 04/04/2018 12.01.03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Suppliers](
	[supplier_id] [char](10) NOT NULL,
	[name] [varchar](30) NULL,
	[address] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[supplier_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Categories] ([category_id], [explanation]) VALUES (N'CG-001', N'Fashions & Accessories')
INSERT [dbo].[Categories] ([category_id], [explanation]) VALUES (N'CG-002', N'Clothes')
INSERT [dbo].[Categories] ([category_id], [explanation]) VALUES (N'CG-003', N'Beauty')
INSERT [dbo].[Categories] ([category_id], [explanation]) VALUES (N'CG-004', N'Health')
INSERT [dbo].[Categories] ([category_id], [explanation]) VALUES (N'CG-005', N'Household')
INSERT [dbo].[Categories] ([category_id], [explanation]) VALUES (N'CG-006', N'Kitchen')
INSERT [dbo].[Categories] ([category_id], [explanation]) VALUES (N'CG-007', N'Baby Care')
INSERT [dbo].[Categories] ([category_id], [explanation]) VALUES (N'CG-008', N'Handphone & Tablet')
INSERT [dbo].[Categories] ([category_id], [explanation]) VALUES (N'CG-009', N'Laptop & Accessories')
INSERT [dbo].[Categories] ([category_id], [explanation]) VALUES (N'CG-010', N'Computer & Accessories')
INSERT [dbo].[Categories] ([category_id], [explanation]) VALUES (N'CG-011', N'Electronic')
INSERT [dbo].[Categories] ([category_id], [explanation]) VALUES (N'CG-012', N'Camera, Photo & Video')
INSERT [dbo].[Categories] ([category_id], [explanation]) VALUES (N'CG-013', N'Otomotif')
INSERT [dbo].[Categories] ([category_id], [explanation]) VALUES (N'CG-014', N'Sports')
INSERT [dbo].[Categories] ([category_id], [explanation]) VALUES (N'CG-015', N'Office & Stationery')
INSERT [dbo].[Categories] ([category_id], [explanation]) VALUES (N'CG-016', N'Souvenirs & Gifts')
INSERT [dbo].[Categories] ([category_id], [explanation]) VALUES (N'CG-017', N'Books')
INSERT [dbo].[Categories] ([category_id], [explanation]) VALUES (N'CG-018', N'Softwares')
INSERT [dbo].[Categories] ([category_id], [explanation]) VALUES (N'CG-019', N'Films, Musics & Games')
INSERT [dbo].[Categories] ([category_id], [explanation]) VALUES (N'CG-020', N'Toys & Hobbies')
INSERT [dbo].[Categories] ([category_id], [explanation]) VALUES (N'CG-021', N'Foods & Drinks')
INSERT [dbo].[Customers] ([customer_id], [name], [address], [region_id], [year_of_birth]) VALUES (N'CUS-000001', N'Bagus Nur Hakim', N'Jakarta', N'WL001', 2010)
INSERT [dbo].[Customers] ([customer_id], [name], [address], [region_id], [year_of_birth]) VALUES (N'CUS-000002', N'Putri Kharisma', N'Yogyakarta', N'WL002', 2009)
INSERT [dbo].[Customers] ([customer_id], [name], [address], [region_id], [year_of_birth]) VALUES (N'CUS-000003', N'Aliany Milawaty', N'Yogyakarta', N'WL002', 2010)
INSERT [dbo].[Customers] ([customer_id], [name], [address], [region_id], [year_of_birth]) VALUES (N'CUS-000004', N'Yudha Adisaputra', N'Solo', N'WL005', 2006)
INSERT [dbo].[Customers] ([customer_id], [name], [address], [region_id], [year_of_birth]) VALUES (N'CUS-000005', N'Nurafni Oktaviani', N'Surabaya', N'WL003', 2010)
INSERT [dbo].[Customers] ([customer_id], [name], [address], [region_id], [year_of_birth]) VALUES (N'CUS-000006', N'Meilia', N'Bandung', N'WL004', 2007)
INSERT [dbo].[Customers] ([customer_id], [name], [address], [region_id], [year_of_birth]) VALUES (N'CUS-000007', N'Aulia Luthfi Anna', N'Jakarta', N'WL001', 2008)
INSERT [dbo].[Customers] ([customer_id], [name], [address], [region_id], [year_of_birth]) VALUES (N'CUS-000008', N'Ichzam Rusmana', N'Medan', N'WL007', 2009)
INSERT [dbo].[Customers] ([customer_id], [name], [address], [region_id], [year_of_birth]) VALUES (N'CUS-000009', N'Tri Yulianti', N'Makasar', N'WL006', 2000)
INSERT [dbo].[Customers] ([customer_id], [name], [address], [region_id], [year_of_birth]) VALUES (N'CUS-000010', N'Ervina Jayanti', N'Surabaya', N'WL003', 2007)
INSERT [dbo].[Customers] ([customer_id], [name], [address], [region_id], [year_of_birth]) VALUES (N'CUS-000011', N'Desi Wulandari', N'Yogyakarta', N'WL002', 2008)
INSERT [dbo].[Customers] ([customer_id], [name], [address], [region_id], [year_of_birth]) VALUES (N'CUS-000012', N'Sukma Tri Setia', N'Medan', N'WL007', 2009)
INSERT [dbo].[Customers] ([customer_id], [name], [address], [region_id], [year_of_birth]) VALUES (N'CUS-000013', N'Abinaya Basupati', N'Jakarta', N'WL001', 2009)
INSERT [dbo].[Customers] ([customer_id], [name], [address], [region_id], [year_of_birth]) VALUES (N'CUS-000014', N'Hadrian Gustin Alvaro', N'Jakarta', N'WL001', 2011)
INSERT [dbo].[Customers] ([customer_id], [name], [address], [region_id], [year_of_birth]) VALUES (N'CUS-000015', N'Nathania Earline', N'Surabaya', N'WL003', 2011)
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-001-IT000001', N'Snapback Hat NY', 50, 135000.0000, 140000.0000, N'CG-001', N'SUP-000001')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-001-IT000002', N'Roberto Cavalli Sunglass', 100, 160000.0000, 165000.0000, N'CG-001', N'SUP-000001')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-001-IT000003', N'Porsche Design Sunglass', 25, 265000.0000, 275000.0000, N'CG-001', N'SUP-000001')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-001-IT000004', N'Giorgio Agneli Wallet', 50, 145000.0000, 150000.0000, N'CG-001', N'SUP-000002')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-001-IT000005', N'Levis Design Walet', 50, 160000.0000, 175000.0000, N'CG-001', N'SUP-000002')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-001-IT000006', N'Swarovski JAQ-001', 15, 243000.0000, 250000.0000, N'CG-001', N'SUP-000003')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-001-IT000007', N'Vintage Models NCK', 35, 130000.0000, 135000.0000, N'CG-001', N'SUP-000003')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-001-IT000008', N'Rossy Net Silver NCK', 30, 140000.0000, 150000.0000, N'CG-001', N'SUP-000003')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-001-IT000009', N'Bohemian Blue Saphire NCK', 50, 240000.0000, 245000.0000, N'CG-001', N'SUP-000003')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-001-IT000010', N'Lady Crystal NCK', 25, 165000.0000, 170000.0000, N'CG-001', N'SUP-000003')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-002-IT000011', N'Black Gray Long SLeeved Shirt', 100, 100000.0000, 103000.0000, N'CG-002', N'SUP-000007')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-002-IT000012', N'Hoddies Auntumn Coat', 50, 150000.0000, 160000.0000, N'CG-002', N'SUP-000007')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-002-IT000013', N'Sweater Tribal Gazilo', 100, 90000.0000, 105000.0000, N'CG-002', N'SUP-000007')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-002-IT000014', N'Jogger Sport Addidas', 50, 145000.0000, 150000.0000, N'CG-002', N'SUP-000008')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-002-IT000015', N'Hoddie Nike E01', 50, 185000.0000, 190000.0000, N'CG-002', N'SUP-000008')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-002-IT000016', N'Hoddie Zipper Marine', 50, 170000.0000, 175000.0000, N'CG-002', N'SUP-000008')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-002-IT000017', N'Jadore Blouse', 25, 150000.0000, 159000.0000, N'CG-002', N'SUP-000008')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-002-IT000018', N'Pieter Sweater', 20, 135000.0000, 140000.0000, N'CG-002', N'SUP-000010')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-002-IT000019', N'Line Long Tunik Blouse', 35, 105000.0000, 120000.0000, N'CG-002', N'SUP-000010')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-002-IT000020', N'Poland Tile Dress', 50, 125000.0000, 130000.0000, N'CG-002', N'SUP-000010')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-003-IT000021', N'Babyliss Pro Curl', 10, 675000.0000, 689000.0000, N'CG-003', N'SUP-000011')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-003-IT000022', N'NXY Soft Matte Lip Cream', 50, 125000.0000, 130000.0000, N'CG-003', N'SUP-000012')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-003-IT000023', N'Manicure Set 777', 20, 195000.0000, 199000.0000, N'CG-003', N'SUP-000011')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-003-IT000024', N'Rosemary Essential Oil', 50, 55000.0000, 60000.0000, N'CG-003', N'SUP-000013')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-003-IT000025', N'Naked 3 Palette', 50, 235000.0000, 245000.0000, N'CG-003', N'SUP-000012')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-004-IT000026', N'Bepathen First Aid', 50, 95000.0000, 100000.0000, N'CG-004', N'SUP-000013')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-004-IT000027', N'MSI Bio Spray', 50, 165000.0000, 175000.0000, N'CG-004', N'SUP-000013')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-004-IT000028', N'Medical Pro Bags', 20, 2000000.0000, 2090000.0000, N'CG-004', N'SUP-000013')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-005-IT000029', N'Minimalis Sofa L', 10, 2000000.0000, 2100000.0000, N'CG-005', N'SUP-000014')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-005-IT000030', N'Bellin Desk Pink', 10, 900000.0000, 949000.0000, N'CG-005', N'SUP-000014')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-005-IT000031', N'Prada Prem Curtain', 10, 1000000.0000, 1100000.0000, N'CG-005', N'SUP-000015')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-005-IT000032', N'Shoes Hanging', 50, 135000.0000, 140000.0000, N'CG-005', N'SUP-000015')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-005-IT000033', N'Lady American Mattress Protector', 50, 280000.0000, 290000.0000, N'CG-005', N'SUP-000016')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-005-IT000034', N'Waterproof Sprei Big', 50, 150000.0000, 155000.0000, N'CG-005', N'SUP-000016')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-006-IT000035', N'Tupperware Blossom Series', 40, 545000.0000, 6320000.0000, N'CG-006', N'SUP-000017')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-006-IT000036', N'Oxone Juicer OX-965', 25, 1750000.0000, 1850000.0000, N'CG-006', N'SUP-000014')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-006-IT000037', N'Happycall Double Pan 32cm', 10, 1135000.0000, 1140000.0000, N'CG-006', N'SUP-000014')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-006-IT000038', N'Vicenza Dining Set', 50, 439000.0000, 450000.0000, N'CG-006', N'SUP-000014')
INSERT [dbo].[Items] ([item_id], [name], [stok], [purchasing_price], [selling_price], [category_id], [supplier_id]) VALUES (N'CG-006-IT000039', N'Sport Bottle 600ml', 35, 65000.0000, 680000.0000, N'CG-006', N'SUP-000017')
INSERT [dbo].[Purchase_Items] ([purchase_id], [item_id], [amount], [purchasing_price], [selling_price]) VALUES (N'20160301-00001', N'CG-001-IT000007', 1, 130000.0000, 135000.0000)
INSERT [dbo].[Purchase_Items] ([purchase_id], [item_id], [amount], [purchasing_price], [selling_price]) VALUES (N'20160301-00001', N'CG-003-IT000023', 1, 195000.0000, 199000.0000)
INSERT [dbo].[Purchase_Items] ([purchase_id], [item_id], [amount], [purchasing_price], [selling_price]) VALUES (N'20160301-00001', N'CG-003-IT000025', 1, 235000.0000, 245000.0000)
INSERT [dbo].[Purchase_Items] ([purchase_id], [item_id], [amount], [purchasing_price], [selling_price]) VALUES (N'20160301-00002', N'CG-005-IT000032', 1, 135000.0000, 140000.0000)
INSERT [dbo].[Purchase_Items] ([purchase_id], [item_id], [amount], [purchasing_price], [selling_price]) VALUES (N'20160301-00003', N'CG-001-IT000005', 1, 160000.0000, 175000.0000)
INSERT [dbo].[Purchase_Items] ([purchase_id], [item_id], [amount], [purchasing_price], [selling_price]) VALUES (N'20160301-00003', N'CG-006-IT000039', 1, 65000.0000, 680000.0000)
INSERT [dbo].[Purchase_Items] ([purchase_id], [item_id], [amount], [purchasing_price], [selling_price]) VALUES (N'20160302-00001', N'CG-002-IT000018', 1, 135000.0000, 140000.0000)
INSERT [dbo].[Purchase_Items] ([purchase_id], [item_id], [amount], [purchasing_price], [selling_price]) VALUES (N'20160302-00002', N'CG-006-IT000038', 1, 439000.0000, 450000.0000)
INSERT [dbo].[Purchase_Items] ([purchase_id], [item_id], [amount], [purchasing_price], [selling_price]) VALUES (N'20160303-00001', N'CG-003-IT000021', 1, 675000.0000, 689000.0000)
INSERT [dbo].[Purchase_Items] ([purchase_id], [item_id], [amount], [purchasing_price], [selling_price]) VALUES (N'20160303-00001', N'CG-003-IT000022', 2, 125000.0000, 130000.0000)
INSERT [dbo].[Purchase_Items] ([purchase_id], [item_id], [amount], [purchasing_price], [selling_price]) VALUES (N'20160303-00001', N'CG-003-IT000024', 1, 55000.0000, 60000.0000)
INSERT [dbo].[Purchase_Items] ([purchase_id], [item_id], [amount], [purchasing_price], [selling_price]) VALUES (N'20160304-00001', N'CG-002-IT000013', 1, 90000.0000, 105000.0000)
INSERT [dbo].[Purchase_Items] ([purchase_id], [item_id], [amount], [purchasing_price], [selling_price]) VALUES (N'20160304-00001', N'CG-002-IT000017', 1, 150000.0000, 159000.0000)
INSERT [dbo].[Purchase_Items] ([purchase_id], [item_id], [amount], [purchasing_price], [selling_price]) VALUES (N'20160304-00002', N'CG-001-IT000002', 1, 160000.0000, 165000.0000)
INSERT [dbo].[Purchase_Items] ([purchase_id], [item_id], [amount], [purchasing_price], [selling_price]) VALUES (N'20160305-00001', N'CG-001-IT000008', 1, 140000.0000, 150000.0000)
INSERT [dbo].[Purchase_Items] ([purchase_id], [item_id], [amount], [purchasing_price], [selling_price]) VALUES (N'20160305-00001', N'CG-001-IT000010', 1, 165000.0000, 170000.0000)
INSERT [dbo].[Purchase_Items] ([purchase_id], [item_id], [amount], [purchasing_price], [selling_price]) VALUES (N'20160306-00001', N'CG-002-IT000019', 2, 105000.0000, 120000.0000)
INSERT [dbo].[Purchase_Items] ([purchase_id], [item_id], [amount], [purchasing_price], [selling_price]) VALUES (N'20160306-00002', N'CG-002-IT000015', 1, 185000.0000, 190000.0000)
INSERT [dbo].[Purchase_Items] ([purchase_id], [item_id], [amount], [purchasing_price], [selling_price]) VALUES (N'20160306-00002', N'CG-002-IT000017', 1, 150000.0000, 159000.0000)
INSERT [dbo].[Purchase_Items] ([purchase_id], [item_id], [amount], [purchasing_price], [selling_price]) VALUES (N'20160307-00001', N'CG-001-IT000003', 1, 265000.0000, 275000.0000)
INSERT [dbo].[Purchase_Items] ([purchase_id], [item_id], [amount], [purchasing_price], [selling_price]) VALUES (N'20160308-00001', N'CG-002-IT000011', 1, 100000.0000, 103000.0000)
INSERT [dbo].[Purchase_Items] ([purchase_id], [item_id], [amount], [purchasing_price], [selling_price]) VALUES (N'20160308-00001', N'CG-002-IT000012', 1, 150000.0000, 160000.0000)
INSERT [dbo].[Purchase_Items] ([purchase_id], [item_id], [amount], [purchasing_price], [selling_price]) VALUES (N'20160308-00002', N'CG-001-IT000004', 1, 145000.0000, 150000.0000)
INSERT [dbo].[Purchase_Items] ([purchase_id], [item_id], [amount], [purchasing_price], [selling_price]) VALUES (N'20160308-00002', N'CG-002-IT000014', 1, 145000.0000, 150000.0000)
INSERT [dbo].[Purchase_Items] ([purchase_id], [item_id], [amount], [purchasing_price], [selling_price]) VALUES (N'20160309-00001', N'CG-005-IT000033', 1, 280000.0000, 290000.0000)
INSERT [dbo].[Purchase_Items] ([purchase_id], [item_id], [amount], [purchasing_price], [selling_price]) VALUES (N'20160309-00002', N'CG-006-IT000036', 1, 1750000.0000, 1850000.0000)
INSERT [dbo].[Purchases] ([purchase_id], [customer_id], [salesman_id], [date]) VALUES (N'20160301-00001', N'CUS-000002', N'SLM-000001', CAST(N'2016-03-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Purchases] ([purchase_id], [customer_id], [salesman_id], [date]) VALUES (N'20160301-00002', N'CUS-000005', N'SLM-000003', CAST(N'2016-03-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Purchases] ([purchase_id], [customer_id], [salesman_id], [date]) VALUES (N'20160301-00003', N'CUS-000001', N'SLM-000001', CAST(N'2016-03-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Purchases] ([purchase_id], [customer_id], [salesman_id], [date]) VALUES (N'20160302-00001', N'CUS-000004', N'SLM-000002', CAST(N'2016-03-02 00:00:00.000' AS DateTime))
INSERT [dbo].[Purchases] ([purchase_id], [customer_id], [salesman_id], [date]) VALUES (N'20160302-00002', N'CUS-000010', N'SLM-000006', CAST(N'2016-03-02 00:00:00.000' AS DateTime))
INSERT [dbo].[Purchases] ([purchase_id], [customer_id], [salesman_id], [date]) VALUES (N'20160303-00001', N'CUS-000007', N'SLM-000004', CAST(N'2016-03-03 00:00:00.000' AS DateTime))
INSERT [dbo].[Purchases] ([purchase_id], [customer_id], [salesman_id], [date]) VALUES (N'20160304-00001', N'CUS-000003', N'SLM-000004', CAST(N'2016-03-04 00:00:00.000' AS DateTime))
INSERT [dbo].[Purchases] ([purchase_id], [customer_id], [salesman_id], [date]) VALUES (N'20160304-00002', N'CUS-000008', N'SLM-000005', CAST(N'2016-03-04 00:00:00.000' AS DateTime))
INSERT [dbo].[Purchases] ([purchase_id], [customer_id], [salesman_id], [date]) VALUES (N'20160305-00001', N'CUS-000006', N'SLM-000009', CAST(N'2016-03-05 00:00:00.000' AS DateTime))
INSERT [dbo].[Purchases] ([purchase_id], [customer_id], [salesman_id], [date]) VALUES (N'20160306-00001', N'CUS-000009', N'SLM-000002', CAST(N'2016-03-06 00:00:00.000' AS DateTime))
INSERT [dbo].[Purchases] ([purchase_id], [customer_id], [salesman_id], [date]) VALUES (N'20160306-00002', N'CUS-000012', N'SLM-000010', CAST(N'2016-03-06 00:00:00.000' AS DateTime))
INSERT [dbo].[Purchases] ([purchase_id], [customer_id], [salesman_id], [date]) VALUES (N'20160307-00001', N'CUS-000015', N'SLM-000007', CAST(N'2016-03-07 00:00:00.000' AS DateTime))
INSERT [dbo].[Purchases] ([purchase_id], [customer_id], [salesman_id], [date]) VALUES (N'20160308-00001', N'CUS-000005', N'SLM-000004', CAST(N'2016-03-08 00:00:00.000' AS DateTime))
INSERT [dbo].[Purchases] ([purchase_id], [customer_id], [salesman_id], [date]) VALUES (N'20160308-00002', N'CUS-000013', N'SLM-000008', CAST(N'2016-03-08 00:00:00.000' AS DateTime))
INSERT [dbo].[Purchases] ([purchase_id], [customer_id], [salesman_id], [date]) VALUES (N'20160309-00001', N'CUS-000010', N'SLM-000010', CAST(N'2016-03-09 00:00:00.000' AS DateTime))
INSERT [dbo].[Purchases] ([purchase_id], [customer_id], [salesman_id], [date]) VALUES (N'20160309-00002', N'CUS-000007', N'SLM-000003', CAST(N'2016-03-09 00:00:00.000' AS DateTime))
INSERT [dbo].[Suppliers] ([supplier_id], [name], [address]) VALUES (N'SUP-000001', N'G&R Collection', N'Semarang')
INSERT [dbo].[Suppliers] ([supplier_id], [name], [address]) VALUES (N'SUP-000002', N'Mollersz', N'Jakarta')
INSERT [dbo].[Suppliers] ([supplier_id], [name], [address]) VALUES (N'SUP-000003', N'Tamza Accessories', N'Surabaya')
INSERT [dbo].[Suppliers] ([supplier_id], [name], [address]) VALUES (N'SUP-000004', N'Wallette', N'Medan')
INSERT [dbo].[Suppliers] ([supplier_id], [name], [address]) VALUES (N'SUP-000005', N'The Watch Gallery', N'Surabaya')
INSERT [dbo].[Suppliers] ([supplier_id], [name], [address]) VALUES (N'SUP-000006', N'Bags Collection', N'Medan')
INSERT [dbo].[Suppliers] ([supplier_id], [name], [address]) VALUES (N'SUP-000007', N'Couple9', N'Jakarta')
INSERT [dbo].[Suppliers] ([supplier_id], [name], [address]) VALUES (N'SUP-000008', N'Swag Corner', N'Surabaya')
INSERT [dbo].[Suppliers] ([supplier_id], [name], [address]) VALUES (N'SUP-000009', N'Kiss_OS', N'Jakarta')
INSERT [dbo].[Suppliers] ([supplier_id], [name], [address]) VALUES (N'SUP-000010', N'YsN', N'Makasar')
INSERT [dbo].[Suppliers] ([supplier_id], [name], [address]) VALUES (N'SUP-000011', N'Legnarose Beauty', N'Jakarta')
INSERT [dbo].[Suppliers] ([supplier_id], [name], [address]) VALUES (N'SUP-000012', N'Mutiara Cosmetics', N'Surabaya')
INSERT [dbo].[Suppliers] ([supplier_id], [name], [address]) VALUES (N'SUP-000013', N'Essential Store', N'Jakarta')
INSERT [dbo].[Suppliers] ([supplier_id], [name], [address]) VALUES (N'SUP-000014', N'Homy Collections', N'Medan')
INSERT [dbo].[Suppliers] ([supplier_id], [name], [address]) VALUES (N'SUP-000015', N'Viventi Living', N'Surabaya')
INSERT [dbo].[Suppliers] ([supplier_id], [name], [address]) VALUES (N'SUP-000016', N'Orion Bed', N'Jakarta')
INSERT [dbo].[Suppliers] ([supplier_id], [name], [address]) VALUES (N'SUP-000017', N'Tupperware ID', N'Makasar')
INSERT [dbo].[Suppliers] ([supplier_id], [name], [address]) VALUES (N'SUP-000018', N'Utama Mega', N'Jakarta')
INSERT [dbo].[Suppliers] ([supplier_id], [name], [address]) VALUES (N'SUP-000019', N'Mavely Baby', N'Jakarta')
INSERT [dbo].[Suppliers] ([supplier_id], [name], [address]) VALUES (N'SUP-000020', N'Sciabuna Store', N'Yogyakarta')
INSERT [dbo].[Suppliers] ([supplier_id], [name], [address]) VALUES (N'SUP-000021', N'Kenzie Baby', N'Surabaya')
INSERT [dbo].[Suppliers] ([supplier_id], [name], [address]) VALUES (N'SUP-000022', N'Chios CK', N'Yogyakarta')
INSERT [dbo].[Suppliers] ([supplier_id], [name], [address]) VALUES (N'SUP-000023', N'JT Shop Indo', N'Jakarta')
INSERT [dbo].[Suppliers] ([supplier_id], [name], [address]) VALUES (N'SUP-000024', N'Saga Case ID', N'Medan')
INSERT [dbo].[Suppliers] ([supplier_id], [name], [address]) VALUES (N'SUP-000025', N'Graha Baru', N'Surabaya')
INSERT [dbo].[Suppliers] ([supplier_id], [name], [address]) VALUES (N'SUP-000026', N'Parttop ID', N'Medan')
INSERT [dbo].[Suppliers] ([supplier_id], [name], [address]) VALUES (N'SUP-000027', N'Alfa Tech', N'Jakarta')
INSERT [dbo].[Suppliers] ([supplier_id], [name], [address]) VALUES (N'SUP-000028', N'King Spycam', N'Jakarta')
INSERT [dbo].[Suppliers] ([supplier_id], [name], [address]) VALUES (N'SUP-000029', N'Glories ID', N'Jakarta')
INSERT [dbo].[Suppliers] ([supplier_id], [name], [address]) VALUES (N'SUP-000030', N'Budget Gadget', N'Jakarta')
ALTER TABLE [dbo].[Items]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[Categories] ([category_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD FOREIGN KEY([supplier_id])
REFERENCES [dbo].[Suppliers] ([supplier_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Purchase_Items]  WITH CHECK ADD FOREIGN KEY([item_id])
REFERENCES [dbo].[Items] ([item_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Purchase_Items]  WITH CHECK ADD FOREIGN KEY([purchase_id])
REFERENCES [dbo].[Purchases] ([purchase_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Purchases]  WITH CHECK ADD FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customers] ([customer_id])
ON UPDATE CASCADE
GO
USE [master]
GO
ALTER DATABASE [RetailDb_new] SET  READ_WRITE 
GO


SELECT * FROM Suppliers;

update customers set name='Thoriq FZ' where customer_id='CUS-0000878'

SELECT * FROM Items;
