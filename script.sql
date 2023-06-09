USE [master]
GO
/****** Object:  Database [disney]    Script Date: 11/5/2023 10:15:42 ******/
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
/****** Object:  User [alumno]    Script Date: 11/5/2023 10:15:42 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Pelicula]    Script Date: 11/5/2023 10:15:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pelicula](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[imagen] [varchar](max) NOT NULL,
	[titulo] [varchar](max) NOT NULL,
	[fechaDeCreacion] [date] NOT NULL,
	[clasificación] [int] NOT NULL,
 CONSTRAINT [PK_Pelicula o serie] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personaje]    Script Date: 11/5/2023 10:15:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personaje](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[imagen] [varchar](max) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[edad] [int] NOT NULL,
	[peso] [int] NOT NULL,
	[historia] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Personaje] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonajesxPeliculas]    Script Date: 11/5/2023 10:15:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonajesxPeliculas](
	[Personaje] [int] NULL,
	[Pelicula] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Pelicula] ON 

INSERT [dbo].[Pelicula] ([id], [imagen], [titulo], [fechaDeCreacion], [clasificación]) VALUES (1, N'https://historiasdelceluloide.elcomercio.es/wp-content/uploads/2014/05/Blancanieves-cartel.jpg', N'Blancanieves y los siete enanitos', CAST(N'1937-12-21' AS Date), 7)
INSERT [dbo].[Pelicula] ([id], [imagen], [titulo], [fechaDeCreacion], [clasificación]) VALUES (2, N'https://static.wikia.nocookie.net/disney/images/2/26/PinochoDisney.jpg/revision/latest?cb=20160201132010&path-prefix=es', N'Pinocho', CAST(N'1940-02-23' AS Date), 7)
INSERT [dbo].[Pelicula] ([id], [imagen], [titulo], [fechaDeCreacion], [clasificación]) VALUES (3, N'https://upload.wikimedia.org/wikipedia/en/thumb/1/12/Fantasia-poster-1940.jpg/220px-Fantasia-poster-1940.jpg', N'Fantasía', CAST(N'1941-09-19' AS Date), 7)
INSERT [dbo].[Pelicula] ([id], [imagen], [titulo], [fechaDeCreacion], [clasificación]) VALUES (4, N'https://cdn.shopify.com/s/files/1/1416/8662/products/dumbo_1941_r1976_original_film_art_5000x.jpg?v=1586526783', N'Dumbo', CAST(N'1941-10-31' AS Date), 7)
INSERT [dbo].[Pelicula] ([id], [imagen], [titulo], [fechaDeCreacion], [clasificación]) VALUES (5, N'https://static.wikia.nocookie.net/disney/images/4/47/Bambi_Walt_Disney.jpg/revision/latest?cb=20210808191619&path-prefix=es', N'Bambi', CAST(N'1942-04-12' AS Date), 7)
INSERT [dbo].[Pelicula] ([id], [imagen], [titulo], [fechaDeCreacion], [clasificación]) VALUES (6, N'https://pics.filmaffinity.com/Saludos_Amigos-896468428-large.jpg', N'Saludos amigos!', CAST(N'1942-08-17' AS Date), 6)
INSERT [dbo].[Pelicula] ([id], [imagen], [titulo], [fechaDeCreacion], [clasificación]) VALUES (7, N'https://pics.filmaffinity.com/Los_tres_caballeros-427815233-large.jpg', N'Los tres caballeros', CAST(N'1944-12-14' AS Date), 6)
INSERT [dbo].[Pelicula] ([id], [imagen], [titulo], [fechaDeCreacion], [clasificación]) VALUES (8, N'https://pics.filmaffinity.com/M_sica_maestro-410496823-large.jpg', N'Musica maestro', CAST(N'1946-04-13' AS Date), 6)
INSERT [dbo].[Pelicula] ([id], [imagen], [titulo], [fechaDeCreacion], [clasificación]) VALUES (9, N'https://static.wikia.nocookie.net/doblaje/images/7/79/Diversionyfantasia.jpg/revision/latest/thumbnail/width/360/height/450?cb=20230417230803&path-prefix=es', N'	Diversión y fantasía', CAST(N'1947-08-20' AS Date), 6)
INSERT [dbo].[Pelicula] ([id], [imagen], [titulo], [fechaDeCreacion], [clasificación]) VALUES (10, N'https://m.media-amazon.com/images/I/51HRX55QVPL._SY445_.jpg', N'Ritmo y melodía', CAST(N'1948-05-20' AS Date), 6)
INSERT [dbo].[Pelicula] ([id], [imagen], [titulo], [fechaDeCreacion], [clasificación]) VALUES (11, N'https://m.media-amazon.com/images/M/MV5BNjAzZDA2MWItZDdjMi00NTBlLTg5OTItYWQ1YTA1NGNiMGVhL2ltYWdlXkEyXkFqcGdeQXVyNjQ2MjQ5NzM@._V1_.jpg', N'	Dos personajes fabulosos', CAST(N'1949-09-28' AS Date), 7)
INSERT [dbo].[Pelicula] ([id], [imagen], [titulo], [fechaDeCreacion], [clasificación]) VALUES (12, N'https://static.wikia.nocookie.net/wiki-doblaje-espana/images/4/4c/La_Cenicienta_portada.png/revision/latest?cb=20220719132023&path-prefix=es', N'La cenicienta', CAST(N'1950-02-08' AS Date), 7)
INSERT [dbo].[Pelicula] ([id], [imagen], [titulo], [fechaDeCreacion], [clasificación]) VALUES (13, N'https://pictures.abebooks.com/isbn/9780717289097-es.jpg', N'Alicia en el País de las Maravillas', CAST(N'1951-07-21' AS Date), 7)
INSERT [dbo].[Pelicula] ([id], [imagen], [titulo], [fechaDeCreacion], [clasificación]) VALUES (14, N'https://static.wikia.nocookie.net/dhadas/images/e/e1/Peter-pan-disney-poster-cartel-6.jpg/revision/latest?cb=20150522221945&path-prefix=es', N'Peter Pan', CAST(N'1953-01-20' AS Date), 7)
INSERT [dbo].[Pelicula] ([id], [imagen], [titulo], [fechaDeCreacion], [clasificación]) VALUES (15, N'https://pics.filmaffinity.com/La_dama_y_el_vagabundo-250469560-large.jpg', N'	La Dama y el Vagabundo', CAST(N'1955-06-15' AS Date), 7)
INSERT [dbo].[Pelicula] ([id], [imagen], [titulo], [fechaDeCreacion], [clasificación]) VALUES (16, N'https://static.wikia.nocookie.net/doblaje/images/8/86/16f.jpg/revision/latest?cb=20141017002229&path-prefix=es', N'La Bella Durmiente	', CAST(N'1959-01-22' AS Date), 7)
INSERT [dbo].[Pelicula] ([id], [imagen], [titulo], [fechaDeCreacion], [clasificación]) VALUES (17, N'https://www.lavanguardia.com/peliculas-series/images/movie/poster/1961/1/w1280/wny5QtN4D9KYRaW3jDCNMSCQ8gc.jpg', N'101 Dálmatas	', CAST(N'1961-01-18' AS Date), 7)
INSERT [dbo].[Pelicula] ([id], [imagen], [titulo], [fechaDeCreacion], [clasificación]) VALUES (18, N'https://static.wikia.nocookie.net/doblaje/images/6/6c/La_Espada_En_La_Piedra.jpg/revision/latest?cb=20100920210712&path-prefix=es', N'	La espada en la piedra', CAST(N'1963-12-18' AS Date), 7)
INSERT [dbo].[Pelicula] ([id], [imagen], [titulo], [fechaDeCreacion], [clasificación]) VALUES (19, N'https://images.cdn2.buscalibre.com/fit-in/360x360/73/4e/734e52e46f619e298449c4529847ecfe.jpg', N'El Libro de la Selva	', CAST(N'1967-10-11' AS Date), 7)
INSERT [dbo].[Pelicula] ([id], [imagen], [titulo], [fechaDeCreacion], [clasificación]) VALUES (20, N'https://larepublica.cronosmedia.glr.pe/migration/images/5QJKTIUUTBB7VEMKQOKFOMWVY4.jpg', N'Los Aristogatos	', CAST(N'1970-12-17' AS Date), 7)
INSERT [dbo].[Pelicula] ([id], [imagen], [titulo], [fechaDeCreacion], [clasificación]) VALUES (21, N'https://pics.filmaffinity.com/Robin_Hood-724329334-large.jpg', N'Robin Hood	', CAST(N'1973-11-01' AS Date), 7)
INSERT [dbo].[Pelicula] ([id], [imagen], [titulo], [fechaDeCreacion], [clasificación]) VALUES (22, N'https://static.wikia.nocookie.net/doblaje/images/6/65/The_Many_Adventures_of_Winnie_the_Pooh_%281977%29.jpg/revision/latest?cb=20100924183036&path-prefix=es', N'Las aventuras de Winnie the Pooh', CAST(N'1977-03-04' AS Date), 7)
INSERT [dbo].[Pelicula] ([id], [imagen], [titulo], [fechaDeCreacion], [clasificación]) VALUES (23, N'patodonal', N'', CAST(N'2000-01-01' AS Date), 0)
SET IDENTITY_INSERT [dbo].[Pelicula] OFF
GO
SET IDENTITY_INSERT [dbo].[Personaje] ON 

INSERT [dbo].[Personaje] ([id], [imagen], [nombre], [edad], [peso], [historia]) VALUES (1, N'mickey.jpg', N'Mickey', 95, 10, N'Mickey Mouse es un personaje de dibujos animados estadounidense co-creado en 1928 por Walt Disney y Ub Iwerks. La mascota de The Walt Disney Company desde hace mucho tiempo, Mickey es un ratón antropomórfico que normalmente usa pantalones cortos rojos, zapatos amarillos grandes y guantes blancos.')
INSERT [dbo].[Personaje] ([id], [imagen], [nombre], [edad], [peso], [historia]) VALUES (2, N'pato.jpg', N'patodonal', 89, 12, N'El Pato Donald es un personaje ficticio estadounidense creado por Walt Disney y el animador Dick Lundy en 1934 en nombre de Disney Studios.? Su primera aparición cinematográfica fue el 9 de junio de 1934 en forma de un pato con traje de marinero, en la película The Wise Little Hen')
INSERT [dbo].[Personaje] ([id], [imagen], [nombre], [edad], [peso], [historia]) VALUES (3, N'goofy.jpg', N'Goofy', 91, 34, N'Su primera aparición fue el 27 de mayo de 1932 en el cortometraje Mickey''s Revue como Dippy Dawg, teniendo un aspecto más anciano a sus siguientes apariciones. Su siguiente aparición fue ese mismo año en el cortometraje The Whoopee Party, apareciendo con el que sería su aspecto frecuente. Su primera aparición bajo el nombre de "Goofy" fue en el cortometraje Orphan''s Benefit de 1934, donde junto con el caballo Horace Horsecollar y a la vaca Clarabelle hace un espectáculo de baile. Durante la década de 1930, fue utilizado ampliamente como parte de la pandilla de Mickey, y posteriormente como parte del trío cómico formado por ellos dos y Donald. A partir de 1939, Goofy recibió su propia serie de cortos que fueron populares en la década de 1940 y principios de la de 1950. Dos cortos de Goofy fueron nominados al Oscar: How to Play Football (1944) y Aquamania (1961). También coprotagonizó una serie corta con Donald, que incluye Polar Trappers (1938), donde aparecieron por primera vez sin Mickey Mouse. En la década de 1960 se produjeron tres cortos más de Goofy, después de lo cual Goofy solo se vio en la televisión y en los cómics de Disney.')
INSERT [dbo].[Personaje] ([id], [imagen], [nombre], [edad], [peso], [historia]) VALUES (4, N'pinocho.jpg', N'Pinocho', 83, 2, N'Pepe Grillo cuenta la historia de una marioneta de madera que tiene la oportunidad de convertirse en un chico real.')
INSERT [dbo].[Personaje] ([id], [imagen], [nombre], [edad], [peso], [historia]) VALUES (5, N'dumbo.jpg', N'Dumbo', 82, 14, N'El bebé elefante de un circo tiene orejas grandes, es ridiculizado y luego aprende a volar.')
INSERT [dbo].[Personaje] ([id], [imagen], [nombre], [edad], [peso], [historia]) VALUES (6, N'bambi.jpg', N'Bambi', 81, 28, N'Un joven ciervo llamado Bambi descubre los valores de la vida en su camino hacia la edad adulta. Lo acompañarán sus nuevos amigos.')
INSERT [dbo].[Personaje] ([id], [imagen], [nombre], [edad], [peso], [historia]) VALUES (7, N'ceni.jpg', N'Cenicienta', 73, 45, N'Con una malvada madrastra y dos hermanastras celosas que la mantienen esclavizada y en harapos, Cenicienta no tiene oportunidad de asistir al baile real, hasta que aparece su hada madrina.')
INSERT [dbo].[Personaje] ([id], [imagen], [nombre], [edad], [peso], [historia]) VALUES (8, N'alic.jpg', N'Alicia', 72, 34, N'La pequeña protagonista de Lewis Carroll cae en la guarida de un conejo que la lleva a un mundo de criaturas mágicas.')
INSERT [dbo].[Personaje] ([id], [imagen], [nombre], [edad], [peso], [historia]) VALUES (9, N'peter.jpg', N'patodonal', 70, 38, N'Peter y Campanita llevan a tres niños al país de Nunca Jamás para ver a los niños perdidos, a los indios, al capitán Garfio y a sus piratas.')
INSERT [dbo].[Personaje] ([id], [imagen], [nombre], [edad], [peso], [historia]) VALUES (10, N'dyv.jpg', N'Dama', 67, 15, N'La historia clásica animada de Walt Disney, sobre un romance entre una perrita mimada y un perro vagabundo.')
INSERT [dbo].[Personaje] ([id], [imagen], [nombre], [edad], [peso], [historia]) VALUES (11, N'aurora.jpg', N'Aurora', 64, 42, N'Tres hadas madrinas y un apuesto príncipe salvan a la princesa Aurora de la maldición de la bruja Maléfica.')
INSERT [dbo].[Personaje] ([id], [imagen], [nombre], [edad], [peso], [historia]) VALUES (13, N'arturo.jpg', N'Arturo', 60, 24, N'La historia de Disney, sobre el período de aprendizaje del rey Arturo con Merlín. Basada en la historia de T.H. White.')
INSERT [dbo].[Personaje] ([id], [imagen], [nombre], [edad], [peso], [historia]) VALUES (15, N'robin.jpg', N'Robin Hood', 50, 35, N'La historia animada de Disney sobre un zorro astuto que rescata a los animales del bosque Sherwood de un tirano.')
INSERT [dbo].[Personaje] ([id], [imagen], [nombre], [edad], [peso], [historia]) VALUES (16, N'winnie.jpg', N'Winnie the Pooh', 46, 39, N'Winnie-the-Pooh es un personaje ficticio, un osito de peluche antropomorfo que es protagonista de varios libros creados por Alan Alexander Milne. Posteriormente protagonizó numerosas adaptaciones de The Walt Disney Company. ')
INSERT [dbo].[Personaje] ([id], [imagen], [nombre], [edad], [peso], [historia]) VALUES (17, N'blanca.jpg', N'Blancanieves', 84, 38, N'es un cuento de hadas mundialmente conocido. La versión más difundida es la de los hermanos Grimm y la puesta cinematográfica de Blancanieves y los siete enanitos de Walt Disney.?')
SET IDENTITY_INSERT [dbo].[Personaje] OFF
GO
INSERT [dbo].[PersonajesxPeliculas] ([Personaje], [Pelicula]) VALUES (17, 1)
INSERT [dbo].[PersonajesxPeliculas] ([Personaje], [Pelicula]) VALUES (4, 2)
INSERT [dbo].[PersonajesxPeliculas] ([Personaje], [Pelicula]) VALUES (1, 3)
INSERT [dbo].[PersonajesxPeliculas] ([Personaje], [Pelicula]) VALUES (5, 4)
INSERT [dbo].[PersonajesxPeliculas] ([Personaje], [Pelicula]) VALUES (6, 5)
INSERT [dbo].[PersonajesxPeliculas] ([Personaje], [Pelicula]) VALUES (2, 6)
INSERT [dbo].[PersonajesxPeliculas] ([Personaje], [Pelicula]) VALUES (2, 7)
INSERT [dbo].[PersonajesxPeliculas] ([Personaje], [Pelicula]) VALUES (1, 9)
INSERT [dbo].[PersonajesxPeliculas] ([Personaje], [Pelicula]) VALUES (2, 10)
INSERT [dbo].[PersonajesxPeliculas] ([Personaje], [Pelicula]) VALUES (7, 12)
INSERT [dbo].[PersonajesxPeliculas] ([Personaje], [Pelicula]) VALUES (8, 13)
INSERT [dbo].[PersonajesxPeliculas] ([Personaje], [Pelicula]) VALUES (9, 14)
INSERT [dbo].[PersonajesxPeliculas] ([Personaje], [Pelicula]) VALUES (10, 15)
INSERT [dbo].[PersonajesxPeliculas] ([Personaje], [Pelicula]) VALUES (11, 16)
INSERT [dbo].[PersonajesxPeliculas] ([Personaje], [Pelicula]) VALUES (12, 17)
INSERT [dbo].[PersonajesxPeliculas] ([Personaje], [Pelicula]) VALUES (13, 18)
INSERT [dbo].[PersonajesxPeliculas] ([Personaje], [Pelicula]) VALUES (14, 19)
INSERT [dbo].[PersonajesxPeliculas] ([Personaje], [Pelicula]) VALUES (15, 21)
INSERT [dbo].[PersonajesxPeliculas] ([Personaje], [Pelicula]) VALUES (16, 22)
GO
USE [master]
GO
ALTER DATABASE [disney] SET  READ_WRITE 
GO
