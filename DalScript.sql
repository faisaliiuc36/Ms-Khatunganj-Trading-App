USE [master]
GO
CREATE DATABASE [DalKhatunganjDB]
GO
USE [DalKhatunganjDB]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 09/06/2017 22:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Address] [varchar](100) NULL,
	[MobileNo] [varchar](100) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 09/06/2017 22:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[MobileNo] [varchar](100) NULL,
	[Address] [varchar](100) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Catagory]    Script Date: 09/06/2017 22:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Catagory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
 CONSTRAINT [PK_Catagory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Buyer]    Script Date: 09/06/2017 22:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Buyer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[MobileNo] [varchar](50) NULL,
	[Address] [varchar](500) NULL,
 CONSTRAINT [PK_Buyer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 09/06/2017 22:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Password] [varchar](100) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserPanel]    Script Date: 09/06/2017 22:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserPanel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Password] [varchar](100) NULL,
 CONSTRAINT [PK_UserPanel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TemporaryJournal]    Script Date: 09/06/2017 22:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TemporaryJournal](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TransectionId] [varchar](100) NULL,
	[Date] [date] NULL,
	[Name] [varchar](100) NULL,
	[Description] [varchar](100) NULL,
	[MemoNo] [varchar](100) NULL,
	[SellQuntity] [decimal](18, 2) NULL,
	[Cash] [decimal](18, 2) NULL,
	[Due] [decimal](18, 2) NULL,
	[CashCollection] [decimal](18, 2) NULL,
	[CheckCollection] [decimal](18, 2) NULL,
	[BillPay] [decimal](18, 2) NULL,
	[Deposite] [decimal](18, 2) NULL,
	[DelivaryCaret] [decimal](18, 2) NULL,
	[ReturnCaret] [decimal](18, 2) NULL,
	[BuyQuantity] [decimal](18, 2) NULL,
	[BuyAmount] [decimal](18, 2) NULL,
	[DailyCost] [decimal](18, 2) NULL,
	[Withdraw] [decimal](18, 2) NULL,
	[EmployeeSalary] [decimal](18, 2) NULL,
	[EmployeeWithdraw] [decimal](18, 2) NULL,
	[EmployeeBonus] [decimal](18, 2) NULL,
	[Comment] [varchar](200) NULL,
	[CustomerId] [int] NULL,
	[IsProfit] [int] NULL,
	[IsNewKhalek] [int] NULL,
	[IsStock] [int] NULL,
	[EmployeeId] [int] NULL,
	[CatagoryId] [int] NULL,
	[NewKhalekWithdraw] [decimal](18, 2) NULL,
	[BuyDue] [decimal](18, 2) NULL,
	[BuyerId] [int] NULL,
	[BuyerDeposite] [decimal](18, 2) NULL,
 CONSTRAINT [PK_TemporaryJournal] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Journal]    Script Date: 09/06/2017 22:28:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Journal](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TransectionId] [varchar](100) NULL,
	[Date] [date] NULL,
	[Name] [varchar](100) NULL,
	[Description] [varchar](200) NULL,
	[MemoNo] [varchar](100) NULL,
	[SellQuntity] [decimal](18, 2) NULL,
	[Cash] [decimal](18, 2) NULL,
	[Due] [decimal](18, 2) NULL,
	[CashCollection] [decimal](18, 2) NULL,
	[CheckCollection] [decimal](18, 2) NULL,
	[BillPay] [decimal](18, 2) NULL,
	[Deposite] [decimal](18, 2) NULL,
	[DelivaryCaret] [decimal](18, 2) NULL,
	[ReturnCaret] [decimal](18, 2) NULL,
	[BuyQuantity] [decimal](18, 2) NULL,
	[BuyAmount] [decimal](18, 2) NULL,
	[DailyCost] [decimal](18, 2) NULL,
	[Withdraw] [decimal](18, 2) NULL,
	[EmployeeSalary] [decimal](18, 2) NULL,
	[EmployeeWithdraw] [decimal](18, 2) NULL,
	[EmployeeBonus] [decimal](18, 2) NULL,
	[Comment] [varchar](100) NULL,
	[CustomerId] [int] NULL,
	[IsProfit] [int] NULL,
	[IsNewKhalek] [int] NULL,
	[IsStock] [int] NULL,
	[EmployeeId] [int] NULL,
	[CatagoryId] [int] NULL,
	[NewKhalekWithdraw] [decimal](18, 2) NULL,
	[BuyDue] [decimal](18, 2) NULL,
	[BuyerId] [int] NULL,
	[BuyerDeposite] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_Journal_Buyer]    Script Date: 09/06/2017 22:28:15 ******/
ALTER TABLE [dbo].[Journal]  WITH CHECK ADD  CONSTRAINT [FK_Journal_Buyer] FOREIGN KEY([BuyerId])
REFERENCES [dbo].[Buyer] ([Id])
GO
ALTER TABLE [dbo].[Journal] CHECK CONSTRAINT [FK_Journal_Buyer]
GO
/****** Object:  ForeignKey [FK_Journal_Catagory]    Script Date: 09/06/2017 22:28:15 ******/
ALTER TABLE [dbo].[Journal]  WITH CHECK ADD  CONSTRAINT [FK_Journal_Catagory] FOREIGN KEY([CatagoryId])
REFERENCES [dbo].[Catagory] ([Id])
GO
ALTER TABLE [dbo].[Journal] CHECK CONSTRAINT [FK_Journal_Catagory]
GO
/****** Object:  ForeignKey [FK_Journal_Customer]    Script Date: 09/06/2017 22:28:15 ******/
ALTER TABLE [dbo].[Journal]  WITH CHECK ADD  CONSTRAINT [FK_Journal_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Journal] CHECK CONSTRAINT [FK_Journal_Customer]
GO
/****** Object:  ForeignKey [FK_Journal_Employee]    Script Date: 09/06/2017 22:28:15 ******/
ALTER TABLE [dbo].[Journal]  WITH CHECK ADD  CONSTRAINT [FK_Journal_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[Journal] CHECK CONSTRAINT [FK_Journal_Employee]
GO
/****** Object:  ForeignKey [FK_TemporaryJournal_Buyer]    Script Date: 09/06/2017 22:28:15 ******/
ALTER TABLE [dbo].[TemporaryJournal]  WITH CHECK ADD  CONSTRAINT [FK_TemporaryJournal_Buyer] FOREIGN KEY([BuyerId])
REFERENCES [dbo].[Buyer] ([Id])
GO
ALTER TABLE [dbo].[TemporaryJournal] CHECK CONSTRAINT [FK_TemporaryJournal_Buyer]
GO
/****** Object:  ForeignKey [FK_TemporaryJournal_Catagory]    Script Date: 09/06/2017 22:28:15 ******/
ALTER TABLE [dbo].[TemporaryJournal]  WITH CHECK ADD  CONSTRAINT [FK_TemporaryJournal_Catagory] FOREIGN KEY([CatagoryId])
REFERENCES [dbo].[Catagory] ([Id])
GO
ALTER TABLE [dbo].[TemporaryJournal] CHECK CONSTRAINT [FK_TemporaryJournal_Catagory]
GO
/****** Object:  ForeignKey [FK_TemporaryJournal_Customer]    Script Date: 09/06/2017 22:28:15 ******/
ALTER TABLE [dbo].[TemporaryJournal]  WITH CHECK ADD  CONSTRAINT [FK_TemporaryJournal_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[TemporaryJournal] CHECK CONSTRAINT [FK_TemporaryJournal_Customer]
GO
/****** Object:  ForeignKey [FK_TemporaryJournal_Employee]    Script Date: 09/06/2017 22:28:15 ******/
ALTER TABLE [dbo].[TemporaryJournal]  WITH CHECK ADD  CONSTRAINT [FK_TemporaryJournal_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[TemporaryJournal] CHECK CONSTRAINT [FK_TemporaryJournal_Employee]
GO
