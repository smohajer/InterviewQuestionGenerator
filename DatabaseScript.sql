USE [master]
GO
/****** Object:  Database [QuestionNameGenerator]    Script Date: 4/10/18 8:42:59 PM ******/
CREATE DATABASE [QuestionNameGenerator]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuestionNameGenerator', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\QuestionNameGenerator.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuestionNameGenerator_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\QuestionNameGenerator_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [QuestionNameGenerator] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuestionNameGenerator].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuestionNameGenerator] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuestionNameGenerator] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuestionNameGenerator] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuestionNameGenerator] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuestionNameGenerator] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuestionNameGenerator] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuestionNameGenerator] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuestionNameGenerator] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuestionNameGenerator] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuestionNameGenerator] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuestionNameGenerator] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuestionNameGenerator] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuestionNameGenerator] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuestionNameGenerator] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuestionNameGenerator] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuestionNameGenerator] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuestionNameGenerator] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuestionNameGenerator] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuestionNameGenerator] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuestionNameGenerator] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuestionNameGenerator] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuestionNameGenerator] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuestionNameGenerator] SET RECOVERY FULL 
GO
ALTER DATABASE [QuestionNameGenerator] SET  MULTI_USER 
GO
ALTER DATABASE [QuestionNameGenerator] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuestionNameGenerator] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuestionNameGenerator] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuestionNameGenerator] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuestionNameGenerator] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuestionNameGenerator', N'ON'
GO
ALTER DATABASE [QuestionNameGenerator] SET QUERY_STORE = OFF
GO
USE [QuestionNameGenerator]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [QuestionNameGenerator]
GO
/****** Object:  Table [dbo].[ProgramNames]    Script Date: 4/10/18 8:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramNames](
	[StudentID] [int] NOT NULL,
	[StudentName] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgramQuestions]    Script Date: 4/10/18 8:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramQuestions](
	[QuestionID] [int] NOT NULL,
	[Question] [nvarchar](150) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RRR]    Script Date: 4/10/18 8:42:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RRR](
	[empid] [int] NOT NULL,
	[name] [nvarchar](20) NOT NULL,
	[mgrid] [int] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[ProgramNames] ([StudentID], [StudentName]) VALUES (1, N'AKAELA')
INSERT [dbo].[ProgramNames] ([StudentID], [StudentName]) VALUES (2, N'Austin')
INSERT [dbo].[ProgramNames] ([StudentID], [StudentName]) VALUES (3, N'Bhusan')
INSERT [dbo].[ProgramNames] ([StudentID], [StudentName]) VALUES (4, N'Chris M')
INSERT [dbo].[ProgramNames] ([StudentID], [StudentName]) VALUES (5, N'Chris Nelson')
INSERT [dbo].[ProgramNames] ([StudentID], [StudentName]) VALUES (6, N'Cornell')
INSERT [dbo].[ProgramNames] ([StudentID], [StudentName]) VALUES (7, N'Daniel ')
INSERT [dbo].[ProgramNames] ([StudentID], [StudentName]) VALUES (8, N'Davilla')
INSERT [dbo].[ProgramNames] ([StudentID], [StudentName]) VALUES (9, N'Dwayne')
INSERT [dbo].[ProgramNames] ([StudentID], [StudentName]) VALUES (10, N'HEBER')
INSERT [dbo].[ProgramNames] ([StudentID], [StudentName]) VALUES (11, N'Jeevan')
INSERT [dbo].[ProgramNames] ([StudentID], [StudentName]) VALUES (12, N'Jeremy')
INSERT [dbo].[ProgramNames] ([StudentID], [StudentName]) VALUES (13, N'Jon')
INSERT [dbo].[ProgramNames] ([StudentID], [StudentName]) VALUES (14, N'Juan')
INSERT [dbo].[ProgramNames] ([StudentID], [StudentName]) VALUES (15, N'Justin')
INSERT [dbo].[ProgramNames] ([StudentID], [StudentName]) VALUES (16, N'Kyung Jae')
INSERT [dbo].[ProgramNames] ([StudentID], [StudentName]) VALUES (17, N'Marcy')
INSERT [dbo].[ProgramNames] ([StudentID], [StudentName]) VALUES (18, N'Matthew')
INSERT [dbo].[ProgramNames] ([StudentID], [StudentName]) VALUES (19, N'Michael')
INSERT [dbo].[ProgramNames] ([StudentID], [StudentName]) VALUES (20, N'Mikhiav')
INSERT [dbo].[ProgramNames] ([StudentID], [StudentName]) VALUES (21, N'Nikesh')
INSERT [dbo].[ProgramNames] ([StudentID], [StudentName]) VALUES (22, N'Schnyder')
INSERT [dbo].[ProgramNames] ([StudentID], [StudentName]) VALUES (23, N'Semaje')
INSERT [dbo].[ProgramNames] ([StudentID], [StudentName]) VALUES (24, N'Shabar')
INSERT [dbo].[ProgramNames] ([StudentID], [StudentName]) VALUES (25, N'Shane')
INSERT [dbo].[ProgramNames] ([StudentID], [StudentName]) VALUES (26, N'Travis')
INSERT [dbo].[ProgramNames] ([StudentID], [StudentName]) VALUES (27, N'Truman')
INSERT [dbo].[ProgramNames] ([StudentID], [StudentName]) VALUES (28, N'YVONNE')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (1, N'If I called your boss right now and asked him  or her what is an area that you could improve on what would he or she say?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (2, N'What are your salary requirements? ')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (3, N'What are your strengths?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (4, N'What are your weaknesses?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (5, N'Why are you interested in working for [insert company name here]?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (6, N'Where do you see yourself in five years? Ten years?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (7, N'Why do you want to leave your current company?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (8, N'Why was there a gap in your employment between [insert date] and [insert date]?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (9, N'What can you offer us that someone else can not?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (10, N'What are three things your former manager would like you to improve on?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (11, N'Are you willing to relocate?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (12, N'Are you willing to travel?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (13, N'Tell me about an accomplishment you are most proud of.')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (14, N'Tell me about a time you made a mistake.')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (15, N'What is your dream job?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (16, N'How did you hear about this position?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (17, N'What would you look to accomplish in the first 30 days  or 60 days  or 90 days on the job?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (18, N'Discuss your resume.')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (19, N'Discuss your educational background.')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (20, N'Describe yourself.')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (21, N'Tell me how you handled a difficult situation.')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (22, N'Why should we hire you?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (23, N'Why are you looking for a new job?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (24, N'Would you work holidays  or weekends?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (25, N'How would you deal with an angry or irate customer?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (26, N'Give a time when you went above and beyond the requirements for a project.')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (27, N'Who are our competitors?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (28, N'What was your biggest failure?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (29, N'What motivates you?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (30, N'What’s your availability?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (31, N'Who’s your mentor?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (32, N'Tell me about a time when you disagreed with your boss.')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (33, N'How do you handle pressure?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (34, N'What is the name of our CEO?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (35, N'What are your career goals?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (36, N'What gets you up in the morning?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (37, N'What would your direct reports say about you?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (38, N'What were your bosses’ strengths  or weaknesses?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (39, N'Are you a leader or a follower?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (40, N'What was the last book you’ve read for fun?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (41, N'What are your co-worker pet peeves?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (42, N'What are your hobbies?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (43, N'What is your favorite website?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (44, N'What makes you uncomfortable?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (45, N'What are some of your leadership experiences?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (46, N'How would you fire someone?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (47, N'What do you like the most and least about working in this industry?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (48, N'Would you work 40+ hours a week?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (49, N'What questions haven’t I asked you?')
INSERT [dbo].[ProgramQuestions] ([QuestionID], [Question]) VALUES (50, N'What questions do you have for me?')
INSERT [dbo].[RRR] ([empid], [name], [mgrid]) VALUES (120, N'Shane', 9100)
USE [master]
GO
ALTER DATABASE [QuestionNameGenerator] SET  READ_WRITE 
GO
