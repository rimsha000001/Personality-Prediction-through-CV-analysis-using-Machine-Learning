USE [User.Login.Reg]
GO
/****** Object:  Table [dbo].[UserReg.tbl]    Script Date: 2/1/2022 10:21:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserReg.tbl](
	[R_ID] [int] IDENTITY(1,1) NOT NULL,
	[R_Name] [varchar](25) NOT NULL,
	[R_Password] [varchar](100) NOT NULL,
	[R_Email] [varchar](25) NOT NULL,
 CONSTRAINT [PK_UserReg.tbl] PRIMARY KEY CLUSTERED 
(
	[R_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[ULogin]    Script Date: 2/1/2022 10:21:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ULogin] (@EmailAddress AS varchar(25), @UserName AS varchar(25))
AS
BEGIN
	select * from [UserReg.tbl] where R_Email=@EmailAddress AND R_Name = @UserName
END

GO
