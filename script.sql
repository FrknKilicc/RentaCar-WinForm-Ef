USE [master]
GO
/****** Object:  Database [Bakanlık]    Script Date: 20.08.2023 14:49:44 ******/
CREATE DATABASE [Bakanlık]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Bakanlık', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Bakanlık.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Bakanlık_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Bakanlık_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Bakanlık] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Bakanlık].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Bakanlık] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Bakanlık] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Bakanlık] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Bakanlık] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Bakanlık] SET ARITHABORT OFF 
GO
ALTER DATABASE [Bakanlık] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Bakanlık] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Bakanlık] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Bakanlık] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Bakanlık] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Bakanlık] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Bakanlık] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Bakanlık] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Bakanlık] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Bakanlık] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Bakanlık] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Bakanlık] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Bakanlık] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Bakanlık] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Bakanlık] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Bakanlık] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Bakanlık] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Bakanlık] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Bakanlık] SET  MULTI_USER 
GO
ALTER DATABASE [Bakanlık] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Bakanlık] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Bakanlık] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Bakanlık] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Bakanlık] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Bakanlık] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Bakanlık] SET QUERY_STORE = ON
GO
ALTER DATABASE [Bakanlık] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Bakanlık]
GO
/****** Object:  Table [dbo].[Kullanicilar]    Script Date: 20.08.2023 14:49:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanicilar](
	[KullaniciID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [varchar](50) NULL,
	[KullaniciSifre] [varchar](50) NULL,
	[KullaniciGorev] [varchar](50) NULL,
 CONSTRAINT [PK_Kullanicilar] PRIMARY KEY CLUSTERED 
(
	[KullaniciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaliyeBakanligi]    Script Date: 20.08.2023 14:49:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaliyeBakanligi](
	[BakanlikID] [int] IDENTITY(1,1) NOT NULL,
	[BakanlikAdi] [varchar](50) NULL,
	[DaireBaskani] [varchar](50) NULL,
	[Ciro] [money] NULL,
	[KullaniciID] [int] NULL,
 CONSTRAINT [PK_MaliyeBakanligi] PRIMARY KEY CLUSTERED 
(
	[BakanlikID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vatandas]    Script Date: 20.08.2023 14:49:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vatandas](
	[TcNo] [nchar](11) NOT NULL,
	[Meslek] [varchar](50) NULL,
	[Adres] [varchar](50) NULL,
	[Telefon] [varchar](50) NULL,
	[Mail] [varchar](50) NULL,
	[Sifre] [varchar](50) NULL,
 CONSTRAINT [PK_Vatandas] PRIMARY KEY CLUSTERED 
(
	[TcNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vergiler]    Script Date: 20.08.2023 14:49:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vergiler](
	[VergiID] [int] IDENTITY(100,1) NOT NULL,
	[VergiAdi] [varchar](50) NULL,
	[VergiTipi] [varchar](50) NULL,
	[Tutar] [money] NULL,
	[Faiz] [float] NULL,
	[BakanlikID] [int] NULL,
	[TcNo] [nchar](11) NULL,
 CONSTRAINT [PK_Vergiler] PRIMARY KEY CLUSTERED 
(
	[VergiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Kullanicilar] ON 

INSERT [dbo].[Kullanicilar] ([KullaniciID], [KullaniciAdi], [KullaniciSifre], [KullaniciGorev]) VALUES (1, N'furkan', N'123', N'Sistem Sorumlusu')
SET IDENTITY_INSERT [dbo].[Kullanicilar] OFF
GO
ALTER TABLE [dbo].[MaliyeBakanligi]  WITH CHECK ADD  CONSTRAINT [FK_MaliyeBakanligi_Kullanicilar] FOREIGN KEY([KullaniciID])
REFERENCES [dbo].[Kullanicilar] ([KullaniciID])
GO
ALTER TABLE [dbo].[MaliyeBakanligi] CHECK CONSTRAINT [FK_MaliyeBakanligi_Kullanicilar]
GO
ALTER TABLE [dbo].[Vergiler]  WITH CHECK ADD  CONSTRAINT [FK_Vergiler_MaliyeBakanligi] FOREIGN KEY([BakanlikID])
REFERENCES [dbo].[MaliyeBakanligi] ([BakanlikID])
GO
ALTER TABLE [dbo].[Vergiler] CHECK CONSTRAINT [FK_Vergiler_MaliyeBakanligi]
GO
ALTER TABLE [dbo].[Vergiler]  WITH CHECK ADD  CONSTRAINT [FK_Vergiler_Vatandas] FOREIGN KEY([TcNo])
REFERENCES [dbo].[Vatandas] ([TcNo])
GO
ALTER TABLE [dbo].[Vergiler] CHECK CONSTRAINT [FK_Vergiler_Vatandas]
GO
/****** Object:  StoredProcedure [dbo].[BakanlikEkle]    Script Date: 20.08.2023 14:49:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[BakanlikEkle]

@BakanlikAdi varchar(50),
@DaireBaskani varchar(50),
@Ciro money,
@KullaniciID  int


As begin

insert into MaliyeBakanligi(BakanlikAdi,DaireBaskani,Ciro,KullaniciID)  values(@BakanlikAdi,@DaireBaskani,@Ciro,@KullaniciID)  

end
GO
/****** Object:  StoredProcedure [dbo].[listeBakan]    Script Date: 20.08.2023 14:49:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[listeBakan]
as begin
select*from MaliyeBakanligi
end
GO
/****** Object:  StoredProcedure [dbo].[listeleVatandas]    Script Date: 20.08.2023 14:49:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[listeleVatandas]
as begin
select*from Vatandas
end
GO
/****** Object:  StoredProcedure [dbo].[listeleVergi]    Script Date: 20.08.2023 14:49:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[listeleVergi]
as begin
select*from Vergiler
end
GO
/****** Object:  StoredProcedure [dbo].[VatandasEkle]    Script Date: 20.08.2023 14:49:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[VatandasEkle]

@TcNo nchar (11),
@Meslek varchar(50),
@Adres varchar(50),
@Telefon varchar(50),
@Mail  varchar(50),
@Sifre  varchar(50)

As begin

insert into Vatandas (TcNo,Meslek,Adres,Telefon,Mail,Sifre)  values (@TcNo,@Meslek,@Adres,@Telefon,@Mail,@Sifre) 

end
GO
/****** Object:  StoredProcedure [dbo].[VergiEkle]    Script Date: 20.08.2023 14:49:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[VergiEkle]

@VergiAdi varchar(50),
@VergiTipi varchar(50),
@Tutar money,
@Faiz  float ,
@BakanlikID int ,
@TcNo nchar (11)


As begin

insert into Vergiler (VergiAdi,VergiTipi,Tutar,Faiz,BakanlikID,TcNo)  values(@VergiAdi,@VergiTipi,@Tutar,@Faiz,@BakanlikID,@TcNo)  

end
GO
USE [master]
GO
ALTER DATABASE [Bakanlık] SET  READ_WRITE 
GO
