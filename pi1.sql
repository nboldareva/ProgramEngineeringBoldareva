USE [pi]
GO
/****** Object:  Table [dbo].[Benefits]    Script Date: 22.11.2018 14:57:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Benefits](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BenefitName] [text] NOT NULL,
 CONSTRAINT [PK_Benefits] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Degrees]    Script Date: 22.11.2018 14:57:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Degrees](
	[IDofDegree] [int] IDENTITY(1,1) NOT NULL,
	[DegreeName] [text] NOT NULL,
 CONSTRAINT [PK_Degrees] PRIMARY KEY CLUSTERED 
(
	[IDofDegree] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Documents]    Script Date: 22.11.2018 14:57:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Documents](
	[IDEnrollee] [uniqueidentifier] NOT NULL,
	[IDSpecialty] [int] NOT NULL,
	[Document] [bit] NOT NULL,
 CONSTRAINT [PK_Documents] PRIMARY KEY CLUSTERED 
(
	[IDEnrollee] ASC,
	[IDSpecialty] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enrollees]    Script Date: 22.11.2018 14:57:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enrollees](
	[ID] [uniqueidentifier] NOT NULL,
	[EnrolleeName] [text] NOT NULL,
	[Passport] [nchar](10) NOT NULL,
	[Statement] [bit] NOT NULL,
	[MedReport] [bit] NOT NULL,
	[BenefitCode] [int] NOT NULL,
 CONSTRAINT [PK_Enrollees] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ForeignEnrollees]    Script Date: 22.11.2018 14:57:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ForeignEnrollees](
	[ID] [uniqueidentifier] NOT NULL,
	[Country] [text] NOT NULL,
 CONSTRAINT [PK_ForeignEnrollees] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 22.11.2018 14:57:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[GroupNum] [nvarchar](10) NOT NULL,
	[IDSpecialty] [int] NOT NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[GroupNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Institutes]    Script Date: 22.11.2018 14:57:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Institutes](
	[IDInst] [uniqueidentifier] NOT NULL,
	[InstituteName] [text] NOT NULL,
	[Address] [text] NOT NULL,
 CONSTRAINT [PK_Institutes] PRIMARY KEY CLUSTERED 
(
	[IDInst] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MinResults]    Script Date: 22.11.2018 14:57:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MinResults](
	[IDSpecialty] [int] NOT NULL,
	[IDSubject] [int] NOT NULL,
	[MinResult] [int] NOT NULL,
 CONSTRAINT [PK_MinResults] PRIMARY KEY CLUSTERED 
(
	[IDSpecialty] ASC,
	[IDSubject] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Results]    Script Date: 22.11.2018 14:57:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Results](
	[IDEnrollee] [uniqueidentifier] NOT NULL,
	[IDSubject] [int] NOT NULL,
	[Result] [int] NOT NULL,
 CONSTRAINT [PK_Results] PRIMARY KEY CLUSTERED 
(
	[IDEnrollee] ASC,
	[IDSubject] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Specialties]    Script Date: 22.11.2018 14:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specialties](
	[IDSpecialty] [int] IDENTITY(1,1) NOT NULL,
	[SpecialtyName] [text] NOT NULL,
	[SpecialtyCode] [int] NOT NULL,
	[InstituteCode] [uniqueidentifier] NOT NULL,
	[DegreeCode] [int] NOT NULL,
 CONSTRAINT [PK_Specialties] PRIMARY KEY CLUSTERED 
(
	[IDSpecialty] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 22.11.2018 14:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SubjectName] [text] NOT NULL,
 CONSTRAINT [PK_Subjects] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD  CONSTRAINT [FK_Documents_Enrollees] FOREIGN KEY([IDEnrollee])
REFERENCES [dbo].[Enrollees] ([ID])
GO
ALTER TABLE [dbo].[Documents] CHECK CONSTRAINT [FK_Documents_Enrollees]
GO
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD  CONSTRAINT [FK_Documents_Specialties] FOREIGN KEY([IDSpecialty])
REFERENCES [dbo].[Specialties] ([IDSpecialty])
GO
ALTER TABLE [dbo].[Documents] CHECK CONSTRAINT [FK_Documents_Specialties]
GO
ALTER TABLE [dbo].[Enrollees]  WITH CHECK ADD  CONSTRAINT [FK_Enrollees_Benefits] FOREIGN KEY([BenefitCode])
REFERENCES [dbo].[Benefits] ([ID])
GO
ALTER TABLE [dbo].[Enrollees] CHECK CONSTRAINT [FK_Enrollees_Benefits]
GO
ALTER TABLE [dbo].[Enrollees]  WITH CHECK ADD  CONSTRAINT [FK_Enrollees_ForeignEnrollees] FOREIGN KEY([ID])
REFERENCES [dbo].[ForeignEnrollees] ([ID])
GO
ALTER TABLE [dbo].[Enrollees] CHECK CONSTRAINT [FK_Enrollees_ForeignEnrollees]
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD  CONSTRAINT [FK_Groups_Specialties] FOREIGN KEY([IDSpecialty])
REFERENCES [dbo].[Specialties] ([IDSpecialty])
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [FK_Groups_Specialties]
GO
ALTER TABLE [dbo].[MinResults]  WITH CHECK ADD  CONSTRAINT [FK_MinResults_Specialties] FOREIGN KEY([IDSpecialty])
REFERENCES [dbo].[Specialties] ([IDSpecialty])
GO
ALTER TABLE [dbo].[MinResults] CHECK CONSTRAINT [FK_MinResults_Specialties]
GO
ALTER TABLE [dbo].[MinResults]  WITH CHECK ADD  CONSTRAINT [FK_MinResults_Subjects] FOREIGN KEY([IDSubject])
REFERENCES [dbo].[Subjects] ([ID])
GO
ALTER TABLE [dbo].[MinResults] CHECK CONSTRAINT [FK_MinResults_Subjects]
GO
ALTER TABLE [dbo].[Results]  WITH CHECK ADD  CONSTRAINT [FK_Results_Enrollees] FOREIGN KEY([IDEnrollee])
REFERENCES [dbo].[Enrollees] ([ID])
GO
ALTER TABLE [dbo].[Results] CHECK CONSTRAINT [FK_Results_Enrollees]
GO
ALTER TABLE [dbo].[Results]  WITH CHECK ADD  CONSTRAINT [FK_Results_Subjects] FOREIGN KEY([IDSubject])
REFERENCES [dbo].[Subjects] ([ID])
GO
ALTER TABLE [dbo].[Results] CHECK CONSTRAINT [FK_Results_Subjects]
GO
ALTER TABLE [dbo].[Specialties]  WITH CHECK ADD  CONSTRAINT [FK_Specialties_Degrees] FOREIGN KEY([DegreeCode])
REFERENCES [dbo].[Degrees] ([IDofDegree])
GO
ALTER TABLE [dbo].[Specialties] CHECK CONSTRAINT [FK_Specialties_Degrees]
GO
ALTER TABLE [dbo].[Specialties]  WITH CHECK ADD  CONSTRAINT [FK_Specialties_Institutes] FOREIGN KEY([InstituteCode])
REFERENCES [dbo].[Institutes] ([IDInst])
GO
ALTER TABLE [dbo].[Specialties] CHECK CONSTRAINT [FK_Specialties_Institutes]
GO
