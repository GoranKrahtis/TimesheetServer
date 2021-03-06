USE [master]
GO
/****** Object:  Database [TimesheetDB]    Script Date: 3/29/2021 8:26:09 PM ******/
CREATE DATABASE [TimesheetDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TimesheetDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TimesheetDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TimesheetDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TimesheetDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TimesheetDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TimesheetDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TimesheetDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TimesheetDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TimesheetDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TimesheetDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TimesheetDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [TimesheetDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TimesheetDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TimesheetDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TimesheetDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TimesheetDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TimesheetDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TimesheetDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TimesheetDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TimesheetDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TimesheetDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TimesheetDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TimesheetDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TimesheetDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TimesheetDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TimesheetDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TimesheetDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TimesheetDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TimesheetDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TimesheetDB] SET  MULTI_USER 
GO
ALTER DATABASE [TimesheetDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TimesheetDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TimesheetDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TimesheetDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TimesheetDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TimesheetDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TimesheetDB] SET QUERY_STORE = OFF
GO
USE [TimesheetDB]
GO
/****** Object:  Table [dbo].[Task]    Script Date: 3/29/2021 8:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Task](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](150) NOT NULL,
	[hours] [int] NOT NULL,
 CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [TimesheetDB] SET  READ_WRITE 
GO
