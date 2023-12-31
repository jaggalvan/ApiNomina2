USE [master]
GO

/****** Object:  Database [Nomina]    Script Date: 7/21/2023 12:15:52 PM ******/
CREATE DATABASE [Nomina]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Empleado', FILENAME = N'C:\Users\jagga\Empleado.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Empleado_log', FILENAME = N'C:\Users\jagga\Empleado_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Nomina].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Nomina] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Nomina] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Nomina] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Nomina] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Nomina] SET ARITHABORT OFF 
GO

ALTER DATABASE [Nomina] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Nomina] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Nomina] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Nomina] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Nomina] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Nomina] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Nomina] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Nomina] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Nomina] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Nomina] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Nomina] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Nomina] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Nomina] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Nomina] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Nomina] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Nomina] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Nomina] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Nomina] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [Nomina] SET  MULTI_USER 
GO

ALTER DATABASE [Nomina] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Nomina] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Nomina] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Nomina] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [Nomina] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Nomina] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [Nomina] SET QUERY_STORE = OFF
GO

ALTER DATABASE [Nomina] SET  READ_WRITE 
GO

