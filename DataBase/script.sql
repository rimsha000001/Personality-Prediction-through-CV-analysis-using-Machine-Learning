USE [master]
GO
/****** Object:  Database [PersonalityPrediction]    Script Date: 6/27/2022 9:27:15 AM ******/
CREATE DATABASE [PersonalityPrediction]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PersonalityPrediction', FILENAME = N'D:\PersonalityPrediction\PersonalityPrediction.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PersonalityPrediction_log', FILENAME = N'D:\PersonalityPrediction\PersonalityPrediction_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PersonalityPrediction] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PersonalityPrediction].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PersonalityPrediction] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PersonalityPrediction] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PersonalityPrediction] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PersonalityPrediction] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PersonalityPrediction] SET ARITHABORT OFF 
GO
ALTER DATABASE [PersonalityPrediction] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PersonalityPrediction] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PersonalityPrediction] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PersonalityPrediction] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PersonalityPrediction] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PersonalityPrediction] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PersonalityPrediction] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PersonalityPrediction] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PersonalityPrediction] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PersonalityPrediction] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PersonalityPrediction] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PersonalityPrediction] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PersonalityPrediction] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PersonalityPrediction] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PersonalityPrediction] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PersonalityPrediction] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PersonalityPrediction] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PersonalityPrediction] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PersonalityPrediction] SET  MULTI_USER 
GO
ALTER DATABASE [PersonalityPrediction] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PersonalityPrediction] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PersonalityPrediction] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PersonalityPrediction] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [PersonalityPrediction] SET DELAYED_DURABILITY = DISABLED 
GO
USE [PersonalityPrediction]
GO
/****** Object:  Table [dbo].[AdminRegTbl]    Script Date: 6/27/2022 9:27:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminRegTbl](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[AdminName] [varchar](25) NULL,
	[AdminPassword] [varchar](150) NULL,
	[AdminEmail] [varchar](50) NULL,
 CONSTRAINT [PK_AdminRegTbl] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Answertbl]    Script Date: 6/27/2022 9:27:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answertbl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[answer] [nvarchar](100) NULL,
 CONSTRAINT [PK_Answertbl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ApptitudeQuestiontbl]    Script Date: 6/27/2022 9:27:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApptitudeQuestiontbl](
	[ApptitudeQuestionID] [int] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](150) NULL,
	[Option1] [nvarchar](100) NULL,
	[Option2] [nvarchar](100) NULL,
	[Option3] [nvarchar](100) NULL,
	[Option4] [nvarchar](100) NULL,
	[CorrectAnswer] [nvarchar](100) NULL,
	[SelectedAnswer] [nvarchar](100) NULL,
 CONSTRAINT [PK_ApptitudeQuestiontbl] PRIMARY KEY CLUSTERED 
(
	[ApptitudeQuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[comparevaluetbl]    Script Date: 6/27/2022 9:27:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comparevaluetbl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CompareValue] [nchar](10) NULL,
 CONSTRAINT [PK_comparevaluetbl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustRegTbl]    Script Date: 6/27/2022 9:27:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustRegTbl](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Password] [varchar](150) NULL,
	[Email] [varchar](50) NULL,
	[Files] [varchar](350) NULL,
 CONSTRAINT [PK_CustRegTbl] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[jobdetailsTbl]    Script Date: 6/27/2022 9:27:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[jobdetailsTbl](
	[JobID] [int] IDENTITY(1,1) NOT NULL,
	[Designation] [varchar](150) NULL,
	[Salary] [varchar](150) NULL,
	[Place] [varchar](100) NULL,
 CONSTRAINT [PK_jobdetailsTbl] PRIMARY KEY CLUSTERED 
(
	[JobID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PersonalityQuestionTbl]    Script Date: 6/27/2022 9:27:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonalityQuestionTbl](
	[PersonalityQuestionID] [int] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](150) NULL,
	[Option1] [nvarchar](100) NULL,
	[Option2] [nvarchar](100) NULL,
	[Option3] [nvarchar](100) NULL,
	[Option4] [nvarchar](100) NULL,
	[Option5] [nvarchar](100) NULL,
	[CorrectAnswer] [nvarchar](100) NULL,
	[UserAnswer] [nvarchar](100) NULL,
 CONSTRAINT [PK_PersonalityQuestionTbl] PRIMARY KEY CLUSTERED 
(
	[PersonalityQuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RequirementDetailTbl]    Script Date: 6/27/2022 9:27:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RequirementDetailTbl](
	[RequirementID] [int] IDENTITY(1,1) NOT NULL,
	[Experience] [varchar](50) NULL,
	[Qualification] [varchar](150) NULL,
	[KeySkills] [varchar](100) NULL,
 CONSTRAINT [PK_RequirementDetailTbl] PRIMARY KEY CLUSTERED 
(
	[RequirementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[submittedanswertbl]    Script Date: 6/27/2022 9:27:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[submittedanswertbl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SubmittedAnswer] [nvarchar](100) NULL,
 CONSTRAINT [PK_submittedanswertbl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[userApptitudeAnswer]    Script Date: 6/27/2022 9:27:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[userApptitudeAnswer](
	[UserAQid] [int] IDENTITY(1,1) NOT NULL,
	[Option1] [varchar](100) NULL,
	[Option2] [varchar](100) NULL,
	[Option3] [varchar](100) NULL,
	[Option4] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserPQAnswerTbl]    Script Date: 6/27/2022 9:27:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserPQAnswerTbl](
	[PersonalityQuestionID] [int] IDENTITY(1,1) NOT NULL,
	[Option1] [nvarchar](100) NULL,
	[Option2] [nvarchar](100) NULL,
	[Option3] [nvarchar](100) NULL,
	[Option4] [nvarchar](100) NULL,
	[Option5] [nvarchar](100) NULL,
 CONSTRAINT [PK_UserPQAnswerTbl] PRIMARY KEY CLUSTERED 
(
	[PersonalityQuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  StoredProcedure [dbo].[AdminLoginData]    Script Date: 6/27/2022 9:27:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AdminLoginData] (@email varchar(50), @password varchar(150))
AS
BEGIN
	select * from AdminRegTbl where AdminEmail = @email AND AdminPassword = @password
END

GO
/****** Object:  StoredProcedure [dbo].[ApptitudeQuestionList]    Script Date: 6/27/2022 9:27:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ApptitudeQuestionList]
AS
BEGIN
	select * from ApptitudeQuestiontbl
END

GO
/****** Object:  StoredProcedure [dbo].[CustomerList]    Script Date: 6/27/2022 9:27:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CustomerList]
AS
BEGIN
	select * from CustRegTbl
END

GO
/****** Object:  StoredProcedure [dbo].[CustomerLogin]    Script Date: 6/27/2022 9:27:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CustomerLogin](@email varchar(50), @password varchar(150))
AS
BEGIN
	select * from CustRegTbl where Email = @email AND Password = @password
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteAdmin]    Script Date: 6/27/2022 9:27:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteAdmin] (@id int)
AS
BEGIN
	delete from AdminRegTbl where AdminID = @id
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteAQ]    Script Date: 6/27/2022 9:27:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteAQ] (@id int)
AS
BEGIN
delete from ApptitudeQuestiontbl where @id= ApptitudeQuestionID
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteCustomers]    Script Date: 6/27/2022 9:27:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteCustomers] (@cid int)
AS
BEGIN
	delete from CustRegTbl where CustomerID = @cid
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteJobDetail]    Script Date: 6/27/2022 9:27:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteJobDetail] (@id int)
AS
BEGIN
	delete from jobdetailsTbl where @id = JobID
END

GO
/****** Object:  StoredProcedure [dbo].[DeletePQ]    Script Date: 6/27/2022 9:27:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeletePQ] (@id int )
AS
BEGIN
	delete from PersonalityQuestionTbl where @id = PersonalityQuestionID
END

GO
/****** Object:  StoredProcedure [dbo].[GetAdminList]    Script Date: 6/27/2022 9:27:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAdminList]
AS
BEGIN
	select * from AdminRegTbl
END

GO
/****** Object:  StoredProcedure [dbo].[GetAQData]    Script Date: 6/27/2022 9:27:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAQData]
AS
BEGIN
	select * from ApptitudeQuestiontbl
END

GO
/****** Object:  StoredProcedure [dbo].[GetCustomerEmail]    Script Date: 6/27/2022 9:27:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetCustomerEmail] (@email varchar(50))
AS
BEGIN
	select * from CustRegTbl where Email = @email 
END

GO
/****** Object:  StoredProcedure [dbo].[GetEmmail]    Script Date: 6/27/2022 9:27:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetEmmail] (@email varchar(50))
AS
BEGIN
	select * from AdminRegTbl where AdminEmail = @email
END

GO
/****** Object:  StoredProcedure [dbo].[GetPQData]    Script Date: 6/27/2022 9:27:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetPQData]
AS
BEGIN
	select * from PersonalityQuestionTbl
END

GO
/****** Object:  StoredProcedure [dbo].[InsertData]    Script Date: 6/27/2022 9:27:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertData] (@subans nvarchar(100))
AS
BEGIN
	INSERT INTO submittedanswertbl (SubmittedAnswer) VALUES (@subans) 
END

GO
/****** Object:  StoredProcedure [dbo].[JobDetailList]    Script Date: 6/27/2022 9:27:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[JobDetailList]
AS
BEGIN
	select * from jobdetailsTbl
END

GO
/****** Object:  StoredProcedure [dbo].[LoginAdmin]    Script Date: 6/27/2022 9:27:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[LoginAdmin] (@Email varchar(50), @Password varchar(150))
AS
BEGIN
	select * from AdminRegTbl where AdminEmail = @Email AND AdminPassword = @Password
END

GO
/****** Object:  StoredProcedure [dbo].[PersonalityQuestionList]    Script Date: 6/27/2022 9:27:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PersonalityQuestionList]
AS
BEGIN
	select * from PersonalityQuestionTbl
END

GO
USE [master]
GO
ALTER DATABASE [PersonalityPrediction] SET  READ_WRITE 
GO
