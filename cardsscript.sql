USE [Cards]
GO
/****** Object:  Table [dbo].[Phonecodes]    Script Date: 2/16/2024 7:20:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phonecodes](
	[Codeid] [bigint] IDENTITY(1,1) NOT NULL,
	[Codename] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Codeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Systemcards]    Script Date: 2/16/2024 7:20:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Systemcards](
	[Cardid] [bigint] IDENTITY(1,1) NOT NULL,
	[Userid] [bigint] NOT NULL,
	[Cardname] [varchar](50) NOT NULL,
	[Cardcolor] [varchar](20) NULL,
	[Carddescription] [varchar](100) NULL,
	[Statusid] [bigint] NOT NULL,
	[Modifiedby] [bigint] NULL,
	[Datecreated] [datetime] NOT NULL,
	[Datemodified] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cardid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Systemcardstatus]    Script Date: 2/16/2024 7:20:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Systemcardstatus](
	[Statusid] [bigint] IDENTITY(1,1) NOT NULL,
	[Statusname] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Statusid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Systemroles]    Script Date: 2/16/2024 7:20:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Systemroles](
	[Roleid] [bigint] IDENTITY(1,1) NOT NULL,
	[Rolename] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Roleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Systemusers]    Script Date: 2/16/2024 7:20:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Systemusers](
	[Userid] [bigint] IDENTITY(1,1) NOT NULL,
	[Firstname] [varchar](50) NOT NULL,
	[Lastname] [varchar](50) NOT NULL,
	[Codeid] [bigint] NOT NULL,
	[Phonenumber] [varchar](15) NOT NULL,
	[Emailaddress] [varchar](100) NOT NULL,
	[Passwords] [varchar](100) NOT NULL,
	[Passwordhash] [varchar](100) NOT NULL,
	[Roleid] [bigint] NOT NULL,
	[Datecreated] [datetime] NOT NULL,
	[Datemodified] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Phonecodes] ON 

INSERT [dbo].[Phonecodes] ([Codeid], [Codename]) VALUES (1, N'254')
SET IDENTITY_INSERT [dbo].[Phonecodes] OFF
GO
SET IDENTITY_INSERT [dbo].[Systemcards] ON 

INSERT [dbo].[Systemcards] ([Cardid], [Userid], [Cardname], [Cardcolor], [Carddescription], [Statusid], [Modifiedby], [Datecreated], [Datemodified]) VALUES (4, 1, N'Francis Testing', N'', N'', 1, 0, CAST(N'2024-02-16T15:36:02.337' AS DateTime), CAST(N'2024-02-16T15:36:02.337' AS DateTime))
INSERT [dbo].[Systemcards] ([Cardid], [Userid], [Cardname], [Cardcolor], [Carddescription], [Statusid], [Modifiedby], [Datecreated], [Datemodified]) VALUES (5, 1, N'Francis Code Setup', N'', N'', 1, 0, CAST(N'2024-02-15T15:36:02.337' AS DateTime), CAST(N'2024-02-15T15:36:02.337' AS DateTime))
INSERT [dbo].[Systemcards] ([Cardid], [Userid], [Cardname], [Cardcolor], [Carddescription], [Statusid], [Modifiedby], [Datecreated], [Datemodified]) VALUES (6, 1, N'Francis Testing color', N'#657632', N'', 1, 0, CAST(N'2024-02-16T15:36:02.337' AS DateTime), CAST(N'2024-02-16T15:36:02.337' AS DateTime))
SET IDENTITY_INSERT [dbo].[Systemcards] OFF
GO
SET IDENTITY_INSERT [dbo].[Systemcardstatus] ON 

INSERT [dbo].[Systemcardstatus] ([Statusid], [Statusname]) VALUES (1, N'To Do')
INSERT [dbo].[Systemcardstatus] ([Statusid], [Statusname]) VALUES (2, N'In Progress')
INSERT [dbo].[Systemcardstatus] ([Statusid], [Statusname]) VALUES (3, N'Done')
SET IDENTITY_INSERT [dbo].[Systemcardstatus] OFF
GO
SET IDENTITY_INSERT [dbo].[Systemroles] ON 

INSERT [dbo].[Systemroles] ([Roleid], [Rolename]) VALUES (1, N'Admin')
INSERT [dbo].[Systemroles] ([Roleid], [Rolename]) VALUES (2, N'Member')
SET IDENTITY_INSERT [dbo].[Systemroles] OFF
GO
SET IDENTITY_INSERT [dbo].[Systemusers] ON 

INSERT [dbo].[Systemusers] ([Userid], [Firstname], [Lastname], [Codeid], [Phonenumber], [Emailaddress], [Passwords], [Passwordhash], [Roleid], [Datecreated], [Datemodified]) VALUES (1, N'Francis', N'Kingori', 1, N'717850720', N'franciskingori448@gmail.com', N'TiQwuVLw+mcRT3AVm+ENs1Prv7jSJ09aNp0KDfNjhBE=', N'FJMREXIMQIEZ', 1, CAST(N'2024-02-16T14:15:52.633' AS DateTime), CAST(N'2024-02-16T14:15:52.633' AS DateTime))
INSERT [dbo].[Systemusers] ([Userid], [Firstname], [Lastname], [Codeid], [Phonenumber], [Emailaddress], [Passwords], [Passwordhash], [Roleid], [Datecreated], [Datemodified]) VALUES (2, N'Francis', N'Nguru', 1, N'792714257', N'francisnguru448@gmail.com', N'TiQwuVLw+mcRT3AVm+ENs1Prv7jSJ09aNp0KDfNjhBE=', N'FJMREXIMQIEZ', 2, CAST(N'2024-02-16T14:16:30.867' AS DateTime), CAST(N'2024-02-16T14:16:30.867' AS DateTime))
SET IDENTITY_INSERT [dbo].[Systemusers] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Systemus__8BDD19F8ADEF347B]    Script Date: 2/16/2024 7:20:52 PM ******/
ALTER TABLE [dbo].[Systemusers] ADD UNIQUE NONCLUSTERED 
(
	[Emailaddress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Systemus__9FDCA5A7B8D6C931]    Script Date: 2/16/2024 7:20:52 PM ******/
ALTER TABLE [dbo].[Systemusers] ADD UNIQUE NONCLUSTERED 
(
	[Phonenumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Systemcards] ADD  DEFAULT ((0)) FOR [Modifiedby]
GO
ALTER TABLE [dbo].[Systemcards] ADD  DEFAULT (getdate()) FOR [Datecreated]
GO
ALTER TABLE [dbo].[Systemcards] ADD  DEFAULT (getdate()) FOR [Datemodified]
GO
ALTER TABLE [dbo].[Systemcards]  WITH CHECK ADD FOREIGN KEY([Statusid])
REFERENCES [dbo].[Systemcardstatus] ([Statusid])
GO
ALTER TABLE [dbo].[Systemcards]  WITH CHECK ADD FOREIGN KEY([Userid])
REFERENCES [dbo].[Systemusers] ([Userid])
GO
ALTER TABLE [dbo].[Systemusers]  WITH CHECK ADD FOREIGN KEY([Codeid])
REFERENCES [dbo].[Phonecodes] ([Codeid])
GO
ALTER TABLE [dbo].[Systemusers]  WITH CHECK ADD FOREIGN KEY([Roleid])
REFERENCES [dbo].[Systemroles] ([Roleid])
GO
/****** Object:  StoredProcedure [dbo].[Usp_Createsystemcarddata]    Script Date: 2/16/2024 7:20:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_Createsystemcarddata]
@JsonObjectdata VARCHAR(MAX)
AS
BEGIN
   BEGIN
	DECLARE @RespStat int = 0,
			@RespMsg varchar(150) = '',
			@Statusid BIGINT;
		  
	BEGIN
		BEGIN TRY	
		IF NOT EXISTS(SELECT Statusid FROM Systemcardstatus WHERE Statusname= 'To Do')
		BEGIN
			INSERT INTO Systemcardstatus VALUES('To Do');
			SET @Statusid=SCOPE_IDENTITY();
		END
		ELSE
		BEGIN
		  SET @Statusid=(SELECT Statusid FROM Systemcardstatus WHERE Statusname='To Do');
		END
		BEGIN TRANSACTION;
		 INSERT INTO Systemcards(Userid,Cardname,Cardcolor,Carddescription,Statusid,Modifiedby,Datecreated,Datemodified)
	     SELECT JSON_VALUE(@JsonObjectdata, '$.Userid'),JSON_VALUE(@JsonObjectdata, '$.Cardname'),JSON_VALUE(@JsonObjectdata, '$.Cardcolor'),JSON_VALUE(@JsonObjectdata, '$.Carddescription'),@Statusid,0,CAST(JSON_VALUE(@JsonObjectdata, '$.Datecreated')  AS datetime2),CAST(JSON_VALUE(@JsonObjectdata, '$.Datecreated')  AS datetime2)
		Set @RespMsg ='Created Sucessfully'
		Set @RespStat =0; 
		COMMIT TRANSACTION;
		 Select @RespStat as RespStatus, @RespMsg as RespMessage;
		END TRY
		BEGIN CATCH
		ROLLBACK TRANSACTION
		PRINT ''
		PRINT 'Error ' + error_message();
		Select 2 as RespStatus, '0 - Error(s) Occurred' + error_message() as RespMessage
		END CATCH
		Select @RespStat as RespStatus, @RespMsg as RespMessage;
		RETURN; 
		END;
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_Deletesystemcardbycardid]    Script Date: 2/16/2024 7:20:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_Deletesystemcardbycardid]
@Userid BIGINT,
@Cardid BIGINT
AS
BEGIN
   BEGIN
	DECLARE @RespStat int = 0,
			@RespMsg varchar(150) = '';
	BEGIN
		BEGIN TRY	
		BEGIN TRANSACTION;
		DELETE FROM Systemcards  WHERE Userid=@Userid AND Cardid=@Cardid;

		Set @RespMsg ='Card deleted'
		Set @RespStat =0; 
		COMMIT TRANSACTION;
		 Select @RespStat as RespStatus, @RespMsg as RespMessage;
		END TRY
		BEGIN CATCH
		ROLLBACK TRANSACTION
		PRINT ''
		PRINT 'Error ' + error_message();
		Select 2 as RespStatus, '0 - Error(s) Occurred' + error_message() as RespMessage
		END CATCH
		Select @RespStat as RespStatus, @RespMsg as RespMessage;
		RETURN; 
		END;
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_Getallsystemcarddata]    Script Date: 2/16/2024 7:20:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_Getallsystemcarddata]
@Offset INT,  
@Count INT,
@Search VARCHAR(50)
AS
BEGIN
  SELECT a.Cardid,c.Firstname+' '+c.Lastname AS Fullname,a.Cardname,a.Cardcolor,a.Carddescription,b.Statusname,a.Modifiedby,a.Datecreated,a.Datemodified
  FROM Systemcards a
  INNER JOIN Systemcardstatus b ON a.Statusid=b.Statusid
  INNER JOIN Systemusers c ON c.Userid=a.Userid  
  WHERE (@Search IS NULL OR @Search = '' OR a.Cardname LIKE '%' + @Search + '%' OR a.Cardcolor LIKE '%' + @Search + '%' OR b.Statusname LIKE '%' + @Search + '%' OR a.Datecreated LIKE '%' + @Search + '%') 
  ORDER BY Datecreated OFFSET @Offset ROWS FETCH NEXT @Count ROWS ONLY;
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_Getsystemcardbycardid]    Script Date: 2/16/2024 7:20:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_Getsystemcardbycardid]
@Userid BIGINT,  
@Cardid BIGINT
AS
BEGIN
   SELECT Cardid,Userid,Cardname,Cardcolor,Carddescription,Statusid,Datemodified FROM Systemcards WHERE Userid=@Userid AND Cardid=@Cardid;
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_Getusersystemcarddata]    Script Date: 2/16/2024 7:20:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_Getusersystemcarddata]
@Userid BIGINT, 
@Offset INT,  
@Count INT,
@Search VARCHAR(50)
AS
BEGIN
  SELECT a.Cardid,c.Firstname+' '+c.Lastname AS Fullname,a.Cardname,a.Cardcolor,a.Carddescription,b.Statusname,a.Modifiedby,a.Datecreated,a.Datemodified
  FROM Systemcards a
  INNER JOIN Systemcardstatus b ON a.Statusid=b.Statusid
  INNER JOIN Systemusers c ON c.Userid=a.Userid 
  WHERE a.Userid=@Userid AND (@Search IS NULL OR @Search = '' OR a.Cardname LIKE '%' + @Search + '%' OR a.Cardcolor LIKE '%' + @Search + '%' OR b.Statusname LIKE '%' + @Search + '%' OR a.Datecreated LIKE '%' + @Search + '%') 
  ORDER BY Datecreated OFFSET @Offset ROWS FETCH NEXT @Count ROWS ONLY;
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_Updatesystemcarddata]    Script Date: 2/16/2024 7:20:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_Updatesystemcarddata]
@JsonObjectdata VARCHAR(MAX)
AS
BEGIN
   BEGIN
	DECLARE @RespStat int = 0,
			@RespMsg varchar(150) = '';
		  
	BEGIN
		BEGIN TRY	
		BEGIN TRANSACTION;
		  UPDATE Systemcards SET Cardname=JSON_VALUE(@JsonObjectdata, '$.Cardname'),Carddescription =JSON_VALUE(@JsonObjectdata, '$.Carddescription'),Cardcolor=JSON_VALUE(@JsonObjectdata, '$.Cardcolor'),Modifiedby=JSON_VALUE(@JsonObjectdata, '$.Modifiedby'),Datemodified=CAST(JSON_VALUE(@JsonObjectdata, '$.Datemodified')  AS datetime2) WHERE Cardid=JSON_VALUE(@JsonObjectdata, '$.Cardid')
		Set @RespMsg ='Updated Sucessfully'
		Set @RespStat =0; 
		COMMIT TRANSACTION;
		 Select @RespStat as RespStatus, @RespMsg as RespMessage;
		END TRY
		BEGIN CATCH
		ROLLBACK TRANSACTION
		PRINT ''
		PRINT 'Error ' + error_message();
		Select 2 as RespStatus, '0 - Error(s) Occurred' + error_message() as RespMessage
		END CATCH
		Select @RespStat as RespStatus, @RespMsg as RespMessage;
		RETURN; 
		END;
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_Verifysystemstaff]    Script Date: 2/16/2024 7:20:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_Verifysystemstaff]
	@Username varchar(100)
AS
BEGIN
	DECLARE 
			@RespStat int = 0,
			@RespMsg varchar(150) = 'login success';
			BEGIN
				--validate	
				IF NOT EXISTS(SELECT Userid FROM Systemusers WHERE Emailaddress=@Username)
				Begin
					SELECT 1 as RespStatus, 'Invalid Emailaddress or User does not Exist!' as RespMessage;
					Return
				End
			BEGIN 
			  SELECT  a.Userid,a.Firstname+''+a.Lastname AS Fullname,b.Codename+''+a.Phonenumber AS Phonenumber,a.Emailaddress,a.Passwords,a.Passwordhash,c.Rolename,a.Datecreated,a.Datemodified
			  FROM  Systemusers a
			  INNER JOIN Phonecodes b ON a.Codeid=b.Codeid
			  INNER JOIN Systemroles c ON a.Roleid=c.Roleid WHERE a.Emailaddress = @Username
			END
		END
END
GO
USE [master]
GO
ALTER DATABASE [Cards] SET  READ_WRITE 
GO


--Admin User
{
  "username": "franciskingori448@gmail.com",
  "password": "Password123!"
}

--Member User
{
  "username": "francisnguru448@gmail.com",
  "password": "Password123!"
}