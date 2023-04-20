USE [master]
GO
/****** Object:  Database [disney]    Script Date: 20/4/2023 11:53:01 ******/
CREATE DATABASE [disney]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'disney', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\disney.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'disney_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\disney_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [disney] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [disney].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [disney] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [disney] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [disney] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [disney] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [disney] SET ARITHABORT OFF 
GO
ALTER DATABASE [disney] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [disney] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [disney] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [disney] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [disney] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [disney] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [disney] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [disney] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [disney] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [disney] SET  DISABLE_BROKER 
GO
ALTER DATABASE [disney] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [disney] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [disney] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [disney] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [disney] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [disney] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [disney] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [disney] SET RECOVERY FULL 
GO
ALTER DATABASE [disney] SET  MULTI_USER 
GO
ALTER DATABASE [disney] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [disney] SET DB_CHAINING OFF 
GO
ALTER DATABASE [disney] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [disney] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [disney] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'disney', N'ON'
GO
ALTER DATABASE [disney] SET QUERY_STORE = OFF
GO
USE [disney]
GO
/****** Object:  User [alumno]    Script Date: 20/4/2023 11:53:01 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Pelicula o serie]    Script Date: 20/4/2023 11:53:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pelicula o serie](
	[id] [int] NOT NULL,
	[imagen] [varchar](max) NOT NULL,
	[titulo] [varchar](max) NOT NULL,
	[fecha de creación] [date] NOT NULL,
	[clasificación] [int] NOT NULL,
	[personajes asociados] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Pelicula o serie] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personaje]    Script Date: 20/4/2023 11:53:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personaje](
	[id] [int] NOT NULL,
	[imagen] [varchar](max) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[edad] [int] NOT NULL,
	[peso] [varchar](50) NOT NULL,
	[historia] [varchar](max) NOT NULL,
	[Peliculas o series asociadas] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Personaje] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Pelicula o serie] ([id], [imagen], [titulo], [fecha de creación], [clasificación], [personajes asociados]) VALUES (1, N'https://historiasdelceluloide.elcomercio.es/wp-content/uploads/2014/05/Blancanieves-cartel.jpg', N'Blancanieves y los siete enanitos', CAST(N'1937-12-21' AS Date), 7, N'Blancanieves')
INSERT [dbo].[Pelicula o serie] ([id], [imagen], [titulo], [fecha de creación], [clasificación], [personajes asociados]) VALUES (2, N'https://static.wikia.nocookie.net/disney/images/2/26/PinochoDisney.jpg/revision/latest?cb=20160201132010&path-prefix=es', N'Pinocho', CAST(N'1940-02-23' AS Date), 7, N'Pinocho')
INSERT [dbo].[Pelicula o serie] ([id], [imagen], [titulo], [fecha de creación], [clasificación], [personajes asociados]) VALUES (3, N'https://upload.wikimedia.org/wikipedia/en/thumb/1/12/Fantasia-poster-1940.jpg/220px-Fantasia-poster-1940.jpg', N'Fantasía', CAST(N'1941-09-19' AS Date), 7, N'Mickey')
INSERT [dbo].[Pelicula o serie] ([id], [imagen], [titulo], [fecha de creación], [clasificación], [personajes asociados]) VALUES (4, N'https://cdn.shopify.com/s/files/1/1416/8662/products/dumbo_1941_r1976_original_film_art_5000x.jpg?v=1586526783', N'Dumbo', CAST(N'1941-10-31' AS Date), 7, N'Dumbo')
GO
USE [master]
GO
ALTER DATABASE [disney] SET  READ_WRITE 
GO
