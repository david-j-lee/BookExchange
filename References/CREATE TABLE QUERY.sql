USE [F:\DOCUMENTS\GITHUB\BOOKEXCHANGE\CHRISTINESBOOKEXCHANGE\APP_DATA\BOOKEXCHANGE.MDF]
GO

DROP TABLE Home
DROP TABLE About
DROP TABLE TradeRequests
DROP TABLE UserReviews
DROP TABLE Postings
DROP TABLE Users

/****** Object:  Table [dbo].[Home]    Script Date: 11/13/2014 7:54:08 PM ******/

	SET ANSI_NULLS ON
	GO
	
	SET QUOTED_IDENTIFIER ON
	GO
	
	CREATE TABLE [dbo].[Home](
		[Id] [int] IDENTITY(1,1) NOT NULL,
		[MessageOne] [nvarchar](500) NULL,
		[MessageTwo] [nvarchar](500) NULL,
		[MessageThree] [nvarchar](500) NULL,
		[ImageURLOne] [nvarchar](50) NULL,
		[ImageURLTwo] [nvarchar](50) NULL,
		[ImageURLThree] [nvarchar](50) NULL,
		[EnteredOn] [datetime] NULL,
		[EnteredBy] [int] NULL,
		[UpdatedOn] [datetime] NULL,
		[UpdatedBy] [int] NULL
		) ON [PRIMARY]
	GO

/****** Object:  Table [dbo].[About]    Script Date: 11/13/2014 7:55:58 PM ******/

	SET ANSI_NULLS ON
	GO

	SET QUOTED_IDENTIFIER ON
	GO

	CREATE TABLE [dbo].[About](
		[Id] [int] IDENTITY(1,1) NOT NULL,
		[MessageOne] [nvarchar](50) NULL,
		[MessageTwo] [nvarchar](50) NULL,
		[MessageThree] [nvarchar](50) NULL,
		[ImageURLOne] [nvarchar](50) NULL,
		[ImageURLTwo] [nvarchar](50) NULL,
		[ImageURLThree] [nvarchar](50) NULL,
		[EnteredOn] [datetime] NULL,
		[EnteredBy] [int] NULL,
		[UpdatedOn] [datetime] NULL,
		[UpdatedBy] [int] NULL
		) ON [PRIMARY]
	GO

/****** Object:  Table [dbo].[Users]    Script Date: 11/13/2014 7:58:45 PM ******/

	SET ANSI_NULLS ON
	GO

	SET QUOTED_IDENTIFIER ON
	GO

	CREATE TABLE [dbo].[Users](
		[Email] [nvarchar](50) NOT NULL,
		[FirstName] [nvarchar](50) NULL,
		[LastName] [nvarchar](50) NULL,
		[Password] [nvarchar](50) NULL,
		[City] [nvarchar](50) NULL,
		[Phone] [nvarchar](50) NULL,
		[CurrentCollege] [nvarchar](50) NULL,
		[ImageURL] [nvarchar](50) NULL,
		[Description] [nvarchar](50) NULL,
		[CreatedOn] [datetime] NULL,
		CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([Email] ASC) WITH (
			PAD_INDEX = OFF, 
			STATISTICS_NORECOMPUTE = OFF, 
			IGNORE_DUP_KEY = OFF, 
			ALLOW_ROW_LOCKS = ON, 
			ALLOW_PAGE_LOCKS = ON
			) ON [PRIMARY]
		) ON [PRIMARY]
	GO

/****** Object:  Table [dbo].[UserReviews]    Script Date: 11/13/2014 7:58:31 PM ******/

	SET ANSI_NULLS ON
	GO
	
	SET QUOTED_IDENTIFIER ON
	GO
	
	CREATE TABLE [dbo].[UserReviews](
		[Id] [int] IDENTITY(1,1) NOT NULL,
		[Rating] [float] NULL,
		[Comment] [nvarchar](50) NULL,
		[Date] [datetime] NULL,
		[FromUserEmail] [nvarchar](50) NULL,
		[ForUserEmail] [nvarchar](50) NULL,
		CONSTRAINT [PK_UserReviews] PRIMARY KEY CLUSTERED ([Id] ASC) WITH (
			PAD_INDEX = OFF, 
			STATISTICS_NORECOMPUTE = OFF, 
			IGNORE_DUP_KEY = OFF, 
			ALLOW_ROW_LOCKS = ON, 
			ALLOW_PAGE_LOCKS = ON
			) ON [PRIMARY]
		) ON [PRIMARY]
	GO
		
	ALTER TABLE [dbo].[UserReviews]  
		WITH CHECK ADD CONSTRAINT [FK_UserReviews_Users] FOREIGN KEY([FromUserEmail])REFERENCES [dbo].[Users] ([Email])
	GO

	ALTER TABLE [dbo].[UserReviews] CHECK CONSTRAINT [FK_UserReviews_Users]
	GO

	ALTER TABLE [dbo].[UserReviews]  
		WITH CHECK ADD  CONSTRAINT [FK_UserReviews_Users1] FOREIGN KEY([ForUserEmail])REFERENCES [dbo].[Users] ([Email])
	GO

	ALTER TABLE [dbo].[UserReviews] CHECK CONSTRAINT [FK_UserReviews_Users1]
	GO

/****** Object:  Table [dbo].[Postings]    Script Date: 11/13/2014 8:02:12 PM ******/

	SET ANSI_NULLS ON
	GO
	
	SET QUOTED_IDENTIFIER ON
	GO
	
	CREATE TABLE [dbo].[Postings](
		[Id] [int] IDENTITY(1,1) NOT NULL,
		[ISBN] [nvarchar](50) NULL,
		[Description] [nvarchar](50) NULL,
		[Major] [nvarchar](50) NULL,
		[Title] [nvarchar](50) NULL,
		[Author] [nvarchar](50) NULL,
		[Price] [nvarchar](50) NULL,
		[Condition] [nvarchar](50) NULL,
		[ImageURL] [nvarchar](50) NULL,
		[EnteredOn] [nvarchar](50) NULL,
		[UpdatedOn] [nvarchar](50) NULL,
		[UserEmail] [nvarchar](50) NULL,
		CONSTRAINT [PK_Postings] PRIMARY KEY CLUSTERED ([Id] ASC) WITH (
			PAD_INDEX = OFF, 
			STATISTICS_NORECOMPUTE = OFF, 
			IGNORE_DUP_KEY = OFF, 
			ALLOW_ROW_LOCKS = ON, 
			ALLOW_PAGE_LOCKS = ON
			) ON [PRIMARY]
		) ON [PRIMARY]
	GO
	
	ALTER TABLE [dbo].[Postings]  
		WITH CHECK ADD CONSTRAINT [FK_Postings_Users] FOREIGN KEY([UserEmail])REFERENCES [dbo].[Users] ([Email])
	GO

	ALTER TABLE [dbo].[Postings] CHECK CONSTRAINT [FK_Postings_Users]
	GO

/****** Object:  Table [dbo].[TradeRequests]    Script Date: 11/13/2014 8:03:44 PM ******/

	SET ANSI_NULLS ON
	GO
	
	SET QUOTED_IDENTIFIER ON
	GO
	
	CREATE TABLE [dbo].[TradeRequests](
		[Id] [int] IDENTITY(1,1) NOT NULL,
		[Status] [int] NULL,
		[RequestDate] [datetime] NULL,
		[PostingId] [int] NULL,
		[UserEmail] [nvarchar](50) NULL,		
		CONSTRAINT [PK_TradeRequests] PRIMARY KEY CLUSTERED ([Id] ASC) WITH (
			PAD_INDEX = OFF, 
			STATISTICS_NORECOMPUTE = OFF, 
			IGNORE_DUP_KEY = OFF, 
			ALLOW_ROW_LOCKS = ON, 
			ALLOW_PAGE_LOCKS = ON
			) ON [PRIMARY]
		) ON [PRIMARY]
	GO
	
	ALTER TABLE [dbo].[TradeRequests]  
		WITH CHECK ADD CONSTRAINT [FK_TradeRequests_Postings] FOREIGN KEY([PostingId]) REFERENCES [dbo].[Postings] ([Id])
	GO
	
	ALTER TABLE [dbo].[TradeRequests] CHECK CONSTRAINT [FK_TradeRequests_Postings]
	GO
	
	ALTER TABLE [dbo].[TradeRequests]  
		WITH CHECK ADD CONSTRAINT [FK_TradeRequests_Users] FOREIGN KEY([UserEmail])	REFERENCES [dbo].[Users] ([Email])
	GO
	
	ALTER TABLE [dbo].[TradeRequests] CHECK CONSTRAINT [FK_TradeRequests_Users]
	GO