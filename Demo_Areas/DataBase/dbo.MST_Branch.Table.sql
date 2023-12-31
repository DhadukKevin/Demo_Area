USE [StudentMaster]
GO
/****** Object:  Table [dbo].[MST_Branch]    Script Date: 28-08-2023 22:17:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MST_Branch](
	[BranchID] [int] IDENTITY(1,1) NOT NULL,
	[BranchName] [varchar](100) NOT NULL,
	[BranchCode] [varchar](100) NOT NULL,
	[Created] [datetime] NOT NULL,
	[Modified] [datetime] NOT NULL,
 CONSTRAINT [PK_MST_Branch] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MST_Branch] ADD  CONSTRAINT [DF_MST_Branch_Created]  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[MST_Branch] ADD  CONSTRAINT [DF_MST_Branch_Modified]  DEFAULT (getdate()) FOR [Modified]
GO
