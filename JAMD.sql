USE [master]
GO
/****** Object:  Database [JAMD]    Script Date: 10/3/2019 12:47:37 PM ******/
CREATE DATABASE [JAMD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JAMD', FILENAME = N'C:\Users\Ykim1059\Downloads\VideoSelection-FinalSprintUI\VideoSelection-FinalSprintUI\JAMD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'JAMD_log', FILENAME = N'C:\Users\Ykim1059\Downloads\VideoSelection-FinalSprintUI\VideoSelection-FinalSprintUI\JAMD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [JAMD] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JAMD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JAMD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JAMD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JAMD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JAMD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JAMD] SET ARITHABORT OFF 
GO
ALTER DATABASE [JAMD] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [JAMD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JAMD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JAMD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JAMD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JAMD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JAMD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JAMD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JAMD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JAMD] SET  ENABLE_BROKER 
GO
ALTER DATABASE [JAMD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JAMD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JAMD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JAMD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JAMD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JAMD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JAMD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JAMD] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [JAMD] SET  MULTI_USER 
GO
ALTER DATABASE [JAMD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JAMD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JAMD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JAMD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [JAMD] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [JAMD] SET QUERY_STORE = OFF
GO
USE [JAMD]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [JAMD]
GO
/****** Object:  Table [dbo].[tblAdmin]    Script Date: 10/3/2019 12:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAdmin](
	[adminID] [uniqueidentifier] NOT NULL,
	[userID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblAdmin] PRIMARY KEY CLUSTERED 
(
	[adminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblComment]    Script Date: 10/3/2019 12:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblComment](
	[commentID] [uniqueidentifier] NOT NULL,
	[movieID] [uniqueidentifier] NOT NULL,
	[userID] [uniqueidentifier] NOT NULL,
	[comment] [varchar](max) NOT NULL,
	[date] [datetime] NOT NULL,
 CONSTRAINT [PK_tblComment] PRIMARY KEY CLUSTERED 
(
	[commentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMovie]    Script Date: 10/3/2019 12:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMovie](
	[movieID] [uniqueidentifier] NOT NULL,
	[movieName] [varchar](max) NOT NULL,
	[director] [varchar](max) NOT NULL,
	[year] [date] NOT NULL,
	[synopsis] [text] NULL,
	[posterLink] [varchar](max) NULL,
	[trailerLink] [varchar](max) NULL,
	[likes] [int] NULL,
	[dislikes] [int] NULL,
 CONSTRAINT [PK_tblMovie] PRIMARY KEY CLUSTERED 
(
	[movieID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 10/3/2019 12:47:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUser](
	[userID] [uniqueidentifier] NOT NULL,
	[firstName] [varchar](max) NOT NULL,
	[lastName] [varchar](max) NOT NULL,
	[email] [varchar](max) NOT NULL,
	[userName] [varchar](max) NOT NULL,
	[password] [varchar](max) NOT NULL,
 CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[tblMovie] ([movieID], [movieName], [director], [year], [synopsis], [posterLink], [trailerLink], [likes], [dislikes]) VALUES (N'3009f8a3-c9e3-449b-ac44-24c18b3920d4', N'Mid90''s', N'Jonah Hill', CAST(N'2018-10-19' AS Date), N'Stevie is a sweet 13-year-old about to explode. His mom is loving and attentive, but a little too forthcoming about her romantic life. His big brother is a taciturn and violent bully. So Stevie searches his working-class Los Angeles suburb for somewhere to belong. He finds it at the Motor Avenue skate shop.(source: letterboxd)', N'https://upload.wikimedia.org/wikipedia/en/2/27/Mid90s_%282018_movie_poster%29.png', N'<iframe width="560" height="315" src="https://www.youtube.com/embed/w9Rx6-GaSIE" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', NULL, NULL)
INSERT [dbo].[tblMovie] ([movieID], [movieName], [director], [year], [synopsis], [posterLink], [trailerLink], [likes], [dislikes]) VALUES (N'19f15421-2cbd-4789-ad68-2b3b282c9045', N'Venom', N'Ruben Fleischer', CAST(N'2018-10-05' AS Date), N'Investigative journalist Eddie Brock attempts a comeback following a scandal, but accidentally becomes the host of Venom, a violent, super powerful alien symbiote. Soon, he must rely on his newfound powers to protect the world from a shadowy organization looking for a symbiote of their own.(source: letterboxd)', N'\img\posters\Venom.png', N'<iframe width="560" height="315" src="https://www.youtube.com/embed/u9Mv98Gr5pY" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', NULL, NULL)
INSERT [dbo].[tblMovie] ([movieID], [movieName], [director], [year], [synopsis], [posterLink], [trailerLink], [likes], [dislikes]) VALUES (N'8a0cb704-deb6-4323-8eda-34d752eb3b79', N'Midsommar', N'Ari Aster', CAST(N'2019-06-03' AS Date), N'A young couple travels to Sweden to visit their friend’s rural hometown and attend its mid-summer festival. What begins as an idyllic retreat quickly descends into an increasingly violent and bizarre competition at the hands of a pagan cult.(source: letterboxd)', N'https://upload.wikimedia.org/wikipedia/en/4/47/Midsommar_%282019_film_poster%29.png', N'<iframe width="560" height="315" src="https://www.youtube.com/embed/1Vnghdsjmd0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', NULL, NULL)
INSERT [dbo].[tblMovie] ([movieID], [movieName], [director], [year], [synopsis], [posterLink], [trailerLink], [likes], [dislikes]) VALUES (N'094e3bf4-e0c3-41ce-bbd1-765526057765', N'Bird Box', N'Susanne Bier', CAST(N'2018-12-14' AS Date), N'Five years after an ominous unseen presence drives most of society to suicide, a survivor and her two children make a desperate bid to reach safety.(source: letterboxd)', N'\img\posters\Bird_Box.png', N'<iframe width="560" height="315" src="https://www.youtube.com/embed/MPWMBITCudM" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', NULL, NULL)
INSERT [dbo].[tblMovie] ([movieID], [movieName], [director], [year], [synopsis], [posterLink], [trailerLink], [likes], [dislikes]) VALUES (N'9926e643-bda9-41ec-a814-7f8e559aabd0', N'Spider-Man 2', N'Sam Raimi', CAST(N'2004-06-30' AS Date), N'Peter Parker is going through a major identity crisis. Burned out from being Spider-Man, he decides to shelve his superhero alter ego, which leaves the city suffering in the wake of carnage left by the evil Doc Ock. In the meantime, Parker still can’t act on his feelings for Mary Jane Watson, a girl he’s loved since childhood.', N'\img\posters\Spider-Man_2.jpg', N'<iframe width="560" height="315" src="https://www.youtube.com/embed/8pSRBdt6ico" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', NULL, NULL)
INSERT [dbo].[tblMovie] ([movieID], [movieName], [director], [year], [synopsis], [posterLink], [trailerLink], [likes], [dislikes]) VALUES (N'02ffad18-8a98-44c1-9cba-88d550a17f7a', N'Akira', N'Katsuhiro Otomo', CAST(N'1988-07-16' AS Date), N'A secret military project endangers Neo-Tokyo when it turns a biker gang member into a rampaging psychic psychopath that only two teenagers and a group of psychics can stop.(source: letterboxd)', N'\img\posters\Akira.jpg', N'<iframe width="560" height="315" src="https://www.youtube.com/embed/ooKBenGK3R4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', NULL, NULL)
INSERT [dbo].[tblMovie] ([movieID], [movieName], [director], [year], [synopsis], [posterLink], [trailerLink], [likes], [dislikes]) VALUES (N'19eac9e3-e403-48f2-a51b-99213fb8d9ac', N'Once Upon a Time in Hollywood', N'Quentin Tarantino', CAST(N'2019-07-07' AS Date), N'A faded television actor and his stunt double strive to achieve fame and success in the film industry during the final years of Hollywood’s Golden Age in 1969 Los Angeles.(source: letterboxd)', N'https://upload.wikimedia.org/wikipedia/en/a/a6/Once_Upon_a_Time_in_Hollywood_poster.png', N'<iframe width="560" height="315" src="https://www.youtube.com/embed/ELeMaP8EPAA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', NULL, NULL)
INSERT [dbo].[tblMovie] ([movieID], [movieName], [director], [year], [synopsis], [posterLink], [trailerLink], [likes], [dislikes]) VALUES (N'819d29c7-e9b9-4fa3-9b7d-af0fe6f3001b', N'Toy Story 4', N'Josh Cooley', CAST(N'2019-05-05' AS Date), N'Woody has always been confident about his place in the world and that his priority is taking care of his kid, whether that’s Andy or Bonnie. But when Bonnie adds a reluctant new toy called “Forky” to her room, a road trip adventure alongside old and new friends will show Woody how big the world can be for a toy.(source: letterboxd)', N'\img\posters\Toy_Story_4.jpg', N'<iframe width="560" height="315" src="https://www.youtube.com/embed/wmiIUN-7qhE" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', NULL, NULL)
INSERT [dbo].[tblMovie] ([movieID], [movieName], [director], [year], [synopsis], [posterLink], [trailerLink], [likes], [dislikes]) VALUES (N'e0ae118e-c14c-44ff-af84-b6bc239d2a1a', N'Man of Steel', N'Zack Snyder', CAST(N'2015-08-09' AS Date), N'A young boy learns that he has extraordinary powers and is not of this earth. As a young man, he journeys to discover where he came from and what he was sent here to do. But the hero in him must emerge if he is to save the world from annihilation and become the symbol of hope for all mankind. (Source: letterboxd)', N'\img\posters\Man_Of_Steel.jpg', N'<iframe width="560" height="315" src="https://www.youtube.com/embed/T6DJcgm3wNY" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', NULL, NULL)
INSERT [dbo].[tblMovie] ([movieID], [movieName], [director], [year], [synopsis], [posterLink], [trailerLink], [likes], [dislikes]) VALUES (N'98b23570-24e0-4185-8c58-c9ea0900d61e', N'Spider-Man 3', N'Sam Raimi', CAST(N'2007-05-04' AS Date), N'Spider-Man returns!', N'\img\posters\Spider-Man_3.jpg', N'<iframe width="560" height="315" src="https://www.youtube.com/embed/MTIP-Ih_GR0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', NULL, NULL)
INSERT [dbo].[tblUser] ([userID], [firstName], [lastName], [email], [userName], [password]) VALUES (N'd8dd36cd-4a22-4b13-b265-6a9f82ad95bb', N'John', N'Doe', N'jdoe@gmail.com', N'jdoe19', N'AuYTVzAlMfr/PeVRVUHuWV855SRZIcgv1G4Ia/9HQ8E=')
ALTER TABLE [dbo].[tblAdmin]  WITH CHECK ADD  CONSTRAINT [FK_tblAdmin_tblUser] FOREIGN KEY([userID])
REFERENCES [dbo].[tblUser] ([userID])
GO
ALTER TABLE [dbo].[tblAdmin] CHECK CONSTRAINT [FK_tblAdmin_tblUser]
GO
ALTER TABLE [dbo].[tblComment]  WITH CHECK ADD  CONSTRAINT [FK_tblComment_tblMovie] FOREIGN KEY([movieID])
REFERENCES [dbo].[tblMovie] ([movieID])
GO
ALTER TABLE [dbo].[tblComment] CHECK CONSTRAINT [FK_tblComment_tblMovie]
GO
ALTER TABLE [dbo].[tblComment]  WITH CHECK ADD  CONSTRAINT [FK_tblComment_tblUser] FOREIGN KEY([userID])
REFERENCES [dbo].[tblUser] ([userID])
GO
ALTER TABLE [dbo].[tblComment] CHECK CONSTRAINT [FK_tblComment_tblUser]
GO
USE [master]
GO
ALTER DATABASE [JAMD] SET  READ_WRITE 
GO
