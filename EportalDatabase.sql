USE [EportalDB]
GO

/****** Object:  Table [dbo].[Alumni]    Script Date: 06/29/2010 10:20:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Alumni](
	[AlumniID] [int] IDENTITY(1,1) NOT NULL,
	[StudentNumber] [varchar](7) NULL,
 CONSTRAINT [PK_Alumni] PRIMARY KEY CLUSTERED 
(
	[AlumniID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [EportalDB]
GO

/****** Object:  Table [dbo].[AssessmentDetail]    Script Date: 06/29/2010 10:20:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[AssessmentDetail](
	[AssessmentDetailID] [int] IDENTITY(1,1) NOT NULL,
	[SubjectEnrolmentID] [int] NOT NULL,
	[AssessmentItem] [varchar](60) NOT NULL,
	[UnitIdentifier] [varchar](4) NOT NULL,
	[UnitCode] [varchar](12) NOT NULL,
	[OutOf] [varchar](5) NOT NULL,
	[Weighting] [varchar](4) NOT NULL,
	[PassFail] [char](3) NOT NULL,
	[AllowTutorAccess] [bit] NOT NULL,
	[DeliveryMode] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AssessmentDetailID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [EportalDB]
GO

/****** Object:  Table [dbo].[Campus]    Script Date: 06/29/2010 10:20:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Campus](
	[CampusID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[CampusID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [EportalDB]
GO

/****** Object:  Table [dbo].[Class]    Script Date: 06/29/2010 10:20:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Class](
	[ClassID] [int] IDENTITY(1,1) NOT NULL,
	[SessionID] [int] NOT NULL,
	[SubjectID] [int] NOT NULL,
	[AvailablePlaceCount] [smallint] NOT NULL,
	[DayTimeCode] [varchar](1) NOT NULL,
	[SessionKey] [varchar](1) NOT NULL,
	[Time] [time](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [EportalDB]
GO

/****** Object:  Table [dbo].[ClassEnrolment]    Script Date: 06/29/2010 10:20:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ClassEnrolment](
	[ClassEnrolmentID] [int] IDENTITY(1,1) NOT NULL,
	[ClassID] [int] NOT NULL,
	[SubjectEnrolmentID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ClassEnrolmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

USE [EportalDB]
GO

/****** Object:  Table [dbo].[ClassTeacher]    Script Date: 06/29/2010 10:20:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[ClassTeacher](
	[ClassTeacherID] [int] IDENTITY(1,1) NOT NULL,
	[ClassID] [int] NOT NULL,
	[PersonID] [int] NOT NULL,
	[Dslcreatedyn] [char](3) NOT NULL,
	[Tutorfla] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ClassTeacherID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [EportalDB]
GO

/****** Object:  Table [dbo].[Course]    Script Date: 06/29/2010 10:20:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Course](
	[CourseID] [int] IDENTITY(1,1) NOT NULL,
	[CourseCode] [varchar](20) NOT NULL,
	[ModalityID] [int] NOT NULL,
	[InternationalFee] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [EportalDB]
GO

/****** Object:  Table [dbo].[CourseEnrolment]    Script Date: 06/29/2010 10:20:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[CourseEnrolment](
	[CourseEnrolmentID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
	[StudentID] [int] NOT NULL,
	[Status] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[CourseEnrolmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [EportalDB]
GO

/****** Object:  Table [dbo].[CourseFee]    Script Date: 06/29/2010 10:20:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[CourseFee](
	[CourseFeeID] [int] IDENTITY(1,1) NOT NULL,
	[CourseCode] [varchar](100) NOT NULL,
	[Fee] [money] NOT NULL,
 CONSTRAINT [PK_CourseFee] PRIMARY KEY CLUSTERED 
(
	[CourseFeeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [EportalDB]
GO

/****** Object:  Table [dbo].[CourseSubject]    Script Date: 06/29/2010 10:20:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[CourseSubject](
	[CourseSubjectID] [int] IDENTITY(1,1) NOT NULL,
	[CoursesID] [int] NOT NULL,
	[MasterSubjectID] [int] NOT NULL,
	[UnitIdentifier] [varchar](4) NOT NULL,
	[UnitCode] [varchar](20) NOT NULL,
	[UnitName] [varchar](100) NOT NULL,
	[UnitType] [varchar](10) NOT NULL,
	[UnitOrder] [char](3) NOT NULL,
	[PeriodDisplay] [varchar](15) NOT NULL,
	[StructureHours] [varchar](5) NOT NULL,
	[SpecialRestriction] [char](1) NOT NULL,
	[Year] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CourseSubjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [EportalDB]
GO

/****** Object:  Table [dbo].[DeliveryMode]    Script Date: 06/29/2010 10:20:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[DeliveryMode](
	[DeliveryModeID] [int] NOT NULL,
	[Description] [varchar](60) NOT NULL,
 CONSTRAINT [PK_DeliveryMode] PRIMARY KEY CLUSTERED 
(
	[DeliveryModeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [EportalDB]
GO

/****** Object:  Table [dbo].[EPortalSetting]    Script Date: 06/29/2010 10:20:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[EPortalSetting](
	[EPortalSettingID] [int] IDENTITY(1,1) NOT NULL,
	[WebStatus] [varchar](3) NOT NULL,
	[StaffStatus] [varchar](3) NOT NULL,
	[Reason] [varchar](max) NOT NULL,
	[EnrolmentDayType] [varchar](10) NOT NULL,
 CONSTRAINT [PK_ePortalSettings] PRIMARY KEY CLUSTERED 
(
	[EPortalSettingID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [EportalDB]
GO

/****** Object:  Table [dbo].[Facility]    Script Date: 06/29/2010 10:20:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Facility](
	[FacilityID] [int] NOT NULL,
	[CampusID] [int] NOT NULL,
	[Name] [varchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[FacilityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [EportalDB]
GO

/****** Object:  Table [dbo].[Faculty]    Script Date: 06/29/2010 10:20:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Faculty](
	[FacultyID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[FacultyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [EportalDB]
GO

/****** Object:  Table [dbo].[MasterSubject]    Script Date: 06/29/2010 10:20:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[MasterSubject](
	[MasterSubjectID] [int] IDENTITY(1,1) NOT NULL,
	[SubjectIdentifier] [varchar](4) NOT NULL,
	[SubjectCode] [varchar](20) NOT NULL,
	[SubjectName] [varchar](100) NOT NULL,
	[SubjectDescription] [varchar](max) NOT NULL,
	[ClinicFlag] [bit] NOT NULL,
	[ShowUnitStatement] [bit] NOT NULL,
	[SemOffered] [varchar](5) NOT NULL,
	[GroupIdentifier] [varchar](4) NOT NULL,
	[InternationalSubjectFee] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MasterSubjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [EportalDB]
GO

/****** Object:  Table [dbo].[Modality]    Script Date: 06/29/2010 10:20:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Modality](
	[ModalityID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](40) NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[CareerOp] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ModalityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [EportalDB]
GO

/****** Object:  Table [dbo].[Person]    Script Date: 06/29/2010 10:20:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Person](
	[PersonID] [int] IDENTITY(1,1) NOT NULL,
	[FacultyID] [int] NOT NULL,
	[CampusID] [int] NOT NULL,
	[Title] [varchar](10) NOT NULL,
	[FirstName] [varchar](45) NOT NULL,
	[LastName] [varchar](45) NOT NULL,
	[SecondName] [varchar](45) NOT NULL,
	[PositionTitle] [varchar](100) NOT NULL,
	[Email] [varchar](45) NOT NULL,
	[ContactAh] [varchar](25) NOT NULL,
	[ContactBh] [varchar](25) NOT NULL,
	[StreetAddress] [varchar](100) NOT NULL,
	[Suburb] [varchar](45) NOT NULL,
	[State] [varchar](20) NOT NULL,
	[Postcode] [varchar](4) NOT NULL,
	[Rego] [varchar](10) NOT NULL,
	[Password] [varchar](45) NOT NULL,
	[PoliciesAccepted] [char](3) NOT NULL,
	[WebNoticesSecurity] [char](3) NOT NULL,
	[ShowEmailStaff] [char](3) NOT NULL,
	[ShowEmailStudent] [char](3) NOT NULL,
	[ShowBhStaff] [char](3) NOT NULL,
	[ShowBhStudent] [char](3) NOT NULL,
	[ShowAhStaff] [char](3) NOT NULL,
	[ShowAhStudent] [char](3) NOT NULL,
	[UserName] [varchar](45) NOT NULL,
	[StatsYn] [char](3) NOT NULL,
	[FeedBack] [char](3) NOT NULL,
	[Status] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [EportalDB]
GO

/****** Object:  Table [dbo].[ReceiptCC]    Script Date: 06/29/2010 10:20:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[ReceiptCC](
	[ReceiptCCID] [int] IDENTITY(1,1) NOT NULL,
	[StudentNumber] [varchar](6) NOT NULL,
	[ReceiptNumber] [varchar](10) NOT NULL,
	[TransactionReference] [varchar](10) NOT NULL,
	[Timestamp] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ReceiptCCID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [EportalDB]
GO

/****** Object:  Table [dbo].[Session]    Script Date: 06/29/2010 10:20:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Session](
	[SessionID] [int] IDENTITY(1,1) NOT NULL,
	[FacilityID] [int] NOT NULL,
	[SessionKey] [varchar](20) NOT NULL,
	[TotalPlaces] [smallint] NOT NULL,
	[Enrolled] [smallint] NOT NULL,
	[AvailablePlaceCount] [smallint] NOT NULL,
	[WebDateSubmitted] [varchar](10) NULL,
	[Time] [time](7) NOT NULL,
	[Room] [varchar](45) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SessionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [EportalDB]
GO

/****** Object:  Table [dbo].[Student]    Script Date: 06/29/2010 10:20:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Student](
	[StudentID] [int] IDENTITY(1,1) NOT NULL,
	[StudentNumber] [varchar](6) NOT NULL,
	[Password] [varchar](12) NOT NULL,
	[AllowEnrolment] [bit] NOT NULL,
	[Scholarship] [bit] NOT NULL,
	[EnrolmentType] [varchar](40) NOT NULL,
	[CourseCode] [varchar](20) NOT NULL,
	[CourseName] [varchar](100) NOT NULL,
	[FeeHelp] [bit] NOT NULL,
	[DataRequired] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [EportalDB]
GO

/****** Object:  Table [dbo].[StudentInvoice]    Script Date: 06/29/2010 10:20:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[StudentInvoice](
	[StudentInvoiceID] [int] IDENTITY(1,1) NOT NULL,
	[TeachingPeriodEnrolmentID] [int] NOT NULL,
	[Balance] [money] NOT NULL,
	[UnitFees] [money] NOT NULL,
	[Payments] [money] NOT NULL,
	[Debits] [money] NOT NULL,
	[Credits] [money] NOT NULL,
	[AUStudy] [varchar](3) NULL,
	[PaymentIntentions] [varchar](max) NOT NULL,
	[AccountCategory] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentInvoiceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [EportalDB]
GO

/****** Object:  Table [dbo].[StudentProfile]    Script Date: 06/29/2010 10:20:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[StudentProfile](
	[StudentProfileID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NOT NULL,
	[FirstName] [varchar](40) NOT NULL,
	[LastName] [varchar](40) NOT NULL,
	[StreetAddress] [varchar](100) NOT NULL,
	[Suburb] [varchar](40) NOT NULL,
	[State] [varchar](40) NOT NULL,
	[ContactBusinessHours] [varchar](20) NOT NULL,
	[ContactAfterHours] [varchar](20) NOT NULL,
	[EmailAddress] [varchar](100) NOT NULL,
	[KinFirstName] [varchar](40) NOT NULL,
	[KinSurname] [varchar](40) NOT NULL,
	[KinRelationship] [varchar](40) NOT NULL,
	[KinStreetAddress] [varchar](100) NOT NULL,
	[KinSuburb] [varchar](40) NOT NULL,
	[KinState] [varchar](40) NOT NULL,
	[KinContactBusinessHours] [varchar](20) NOT NULL,
	[KinContactAfterHours] [varchar](20) NOT NULL,
	[ContactViaEmail] [char](3) NOT NULL,
	[FormerSurname] [varchar](45) NOT NULL,
	[PreferredName] [varchar](45) NOT NULL,
	[PermanentHomeStreet] [varchar](100) NOT NULL,
	[PermanentHomeSuburb] [varchar](45) NOT NULL,
	[PermanentHomeState] [varchar](45) NOT NULL,
	[PermanentHomePC] [varchar](10) NOT NULL,
	[PermanentHomeCountry] [varchar](45) NOT NULL,
	[SemesterStreet] [varchar](100) NOT NULL,
	[SemesterSuburb] [varchar](45) NOT NULL,
	[SemesterState] [varchar](45) NOT NULL,
	[SemesterPC] [varchar](10) NOT NULL,
	[SemesterCountry] [varchar](45) NOT NULL,
	[Aboriginaltsiyn] [varchar](10) NOT NULL,
	[CountryofBirth] [varchar](30) NOT NULL,
	[YearArrived] [varchar](4) NOT NULL,
	[EvidenceofCitizenship] [varchar](100) NOT NULL,
	[LangSpokenAtHome] [varchar](70) NOT NULL,
	[Disability] [varchar](60) NOT NULL,
	[HighestEducation] [varchar](60) NOT NULL,
	[YearLastEnrolled] [varchar](4) NOT NULL,
	[NameOfSchoolHep] [varchar](60) NOT NULL,
	[Phvisayn] [char](3) NOT NULL,
	[AusNzcitizenyn] [char](3) NOT NULL,
	[English2ndLangyn] [char](3) NOT NULL,
	[WorkStatus] [varchar](45) NOT NULL,
	[CurrentOccupation] [varchar](100) NOT NULL,
	[Title] [varchar](5) NOT NULL,
	[SecondName] [varchar](25) NOT NULL,
	[KinTitle] [varchar](5) NOT NULL,
	[PostCode] [varchar](8) NOT NULL,
	[Country] [varchar](45) NOT NULL,
	[KinPC] [varchar](8) NOT NULL,
	[KinCountry] [varchar](45) NOT NULL,
	[PresidentNZcityn] [char](3) NOT NULL,
	[SupportServicesyn] [char](3) NOT NULL,
	[DisabilityOther] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentProfileID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [EportalDB]
GO

/****** Object:  Table [dbo].[Subject]    Script Date: 06/29/2010 10:20:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Subject](
	[SubjectID] [int] IDENTITY(1,1) NOT NULL,
	[TeachingPeriodID] [int] NOT NULL,
	[MasterSubjectID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

USE [EportalDB]
GO

/****** Object:  Table [dbo].[SubjectEnrolment]    Script Date: 06/29/2010 10:20:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[SubjectEnrolment](
	[SubjectEnrolmentID] [int] IDENTITY(1,1) NOT NULL,
	[SubjectID] [int] NOT NULL,
	[TeachingPeriodEnrolmentID] [int] NOT NULL,
	[UnitStatus] [char](2) NOT NULL,
	[UnitGrade] [char](3) NOT NULL,
	[UnitComplete] [bit] NOT NULL,
	[UnitFee] [money] NULL,
	[DiscountedFee] [money] NOT NULL,
	[Discounted] [bit] NOT NULL,
	[ChargedFee] [money] NOT NULL,
	[DeliveryMode] [varchar](20) NOT NULL,
	[RecordID] [varchar](7) NOT NULL,
	[ExternalEndDate] [varchar](10) NOT NULL,
	[UnitGradeNoHold] [char](3) NOT NULL,
	[FlexibleDeliveryMode] [varchar](20) NOT NULL,
	[ExternalStartDate] [varchar](10) NOT NULL,
	[ExternalStartDateManual] [varchar](10) NOT NULL,
	[ExternalEndDateManual] [varchar](10) NOT NULL,
	[Percentage] [varchar](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SubjectEnrolmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [EportalDB]
GO

/****** Object:  Table [dbo].[SubjectFee]    Script Date: 06/29/2010 10:20:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[SubjectFee](
	[SubjectFeeID] [int] IDENTITY(1,1) NOT NULL,
	[SubjectID] [int] NOT NULL,
	[FullFee] [money] NOT NULL,
	[DiscountedFee] [money] NOT NULL,
	[DiscountDate] [varchar](10) NOT NULL,
	[ExamDate] [varchar](45) NOT NULL,
	[ExamTime] [varchar](45) NOT NULL,
	[ExamRoom] [varchar](45) NOT NULL,
	[SemesterKey] [varchar](4) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SubjectFeeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [EportalDB]
GO

/****** Object:  Table [dbo].[TeachingPeriod]    Script Date: 06/29/2010 10:20:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TeachingPeriod](
	[TeachingPeriodID] [int] IDENTITY(1,1) NOT NULL,
	[SemesterKey] [varchar](4) NOT NULL,
	[CampusID] [int] NOT NULL,
	[Semester] [varchar](20) NOT NULL,
	[SemesterDisplay] [varchar](40) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[DiscountDate] [datetime] NOT NULL,
	[CreditWithdrawalDate] [datetime] NOT NULL,
	[PenaltyWithdrawalDate] [datetime] NOT NULL,
	[AllowEnrolments] [bit] NOT NULL,
	[ReleaseResults] [bit] NOT NULL,
	[ChargeInternationalFees] [bit] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[CensusDate] [date] NOT NULL,
	[CurrentSemYn] [char](3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TeachingPeriodID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [EportalDB]
GO

/****** Object:  Table [dbo].[TeachingPeriodEnrolment]    Script Date: 06/29/2010 10:20:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TeachingPeriodEnrolment](
	[TeachingPeriodEnrolmentID] [int] IDENTITY(1,1) NOT NULL,
	[TeachingPeriodID] [int] NOT NULL,
	[CampusID] [int] NOT NULL,
	[CourseEnrolmentID] [int] NOT NULL,
 CONSTRAINT [PK__Teaching__3214EC076477ECF3] PRIMARY KEY CLUSTERED 
(
	[TeachingPeriodEnrolmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[AssessmentDetail]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentDetail_SubjectEnrolment] FOREIGN KEY([SubjectEnrolmentID])
REFERENCES [dbo].[SubjectEnrolment] ([SubjectEnrolmentID])
GO

ALTER TABLE [dbo].[AssessmentDetail] CHECK CONSTRAINT [FK_AssessmentDetail_SubjectEnrolment]
GO

ALTER TABLE [dbo].[AssessmentDetail] ADD  DEFAULT ('') FOR [AssessmentItem]
GO

ALTER TABLE [dbo].[AssessmentDetail] ADD  DEFAULT ('') FOR [UnitIdentifier]
GO

ALTER TABLE [dbo].[AssessmentDetail] ADD  DEFAULT ('') FOR [UnitCode]
GO

ALTER TABLE [dbo].[AssessmentDetail] ADD  DEFAULT ('') FOR [OutOf]
GO

ALTER TABLE [dbo].[AssessmentDetail] ADD  DEFAULT ('') FOR [Weighting]
GO

ALTER TABLE [dbo].[AssessmentDetail] ADD  DEFAULT ('') FOR [PassFail]
GO

ALTER TABLE [dbo].[AssessmentDetail] ADD  DEFAULT ('') FOR [AllowTutorAccess]
GO

ALTER TABLE [dbo].[AssessmentDetail] ADD  DEFAULT ('On Campus') FOR [DeliveryMode]
GO

ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Class_Session] FOREIGN KEY([SessionID])
REFERENCES [dbo].[Session] ([SessionID])
GO

ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_Session]
GO

ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [fk_classes_subject] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([SubjectID])
GO

ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [fk_classes_subject]
GO

ALTER TABLE [dbo].[Class] ADD  DEFAULT ('0') FOR [AvailablePlaceCount]
GO

ALTER TABLE [dbo].[Class] ADD  DEFAULT ('') FOR [DayTimeCode]
GO

ALTER TABLE [dbo].[Class] ADD  DEFAULT ('') FOR [SessionKey]
GO

ALTER TABLE [dbo].[Class] ADD  DEFAULT ('') FOR [Time]
GO

ALTER TABLE [dbo].[ClassEnrolment]  WITH CHECK ADD  CONSTRAINT [fk_class_enrolments_classes1] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ClassID])
GO

ALTER TABLE [dbo].[ClassEnrolment] CHECK CONSTRAINT [fk_class_enrolments_classes1]
GO

ALTER TABLE [dbo].[ClassEnrolment]  WITH CHECK ADD  CONSTRAINT [FK_ClassEnrolment_SubjectEnrolment] FOREIGN KEY([SubjectEnrolmentID])
REFERENCES [dbo].[SubjectEnrolment] ([SubjectEnrolmentID])
GO

ALTER TABLE [dbo].[ClassEnrolment] CHECK CONSTRAINT [FK_ClassEnrolment_SubjectEnrolment]
GO

ALTER TABLE [dbo].[ClassTeacher]  WITH CHECK ADD  CONSTRAINT [fk_class_teachers_classes] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ClassID])
GO

ALTER TABLE [dbo].[ClassTeacher] CHECK CONSTRAINT [fk_class_teachers_classes]
GO

ALTER TABLE [dbo].[ClassTeacher]  WITH CHECK ADD  CONSTRAINT [fk_class_teachers_people] FOREIGN KEY([PersonID])
REFERENCES [dbo].[Person] ([PersonID])
GO

ALTER TABLE [dbo].[ClassTeacher] CHECK CONSTRAINT [fk_class_teachers_people]
GO

ALTER TABLE [dbo].[ClassTeacher] ADD  DEFAULT ('') FOR [Dslcreatedyn]
GO

ALTER TABLE [dbo].[ClassTeacher] ADD  DEFAULT ('') FOR [Tutorfla]
GO

ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [fk_courses_modality] FOREIGN KEY([ModalityID])
REFERENCES [dbo].[Modality] ([ModalityID])
GO

ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [fk_courses_modality]
GO

ALTER TABLE [dbo].[Course] ADD  DEFAULT ('') FOR [CourseCode]
GO

ALTER TABLE [dbo].[Course] ADD  DEFAULT ('0.00') FOR [InternationalFee]
GO

ALTER TABLE [dbo].[CourseEnrolment]  WITH CHECK ADD  CONSTRAINT [FK_CourseEnrolment_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO

ALTER TABLE [dbo].[CourseEnrolment] CHECK CONSTRAINT [FK_CourseEnrolment_Course]
GO

ALTER TABLE [dbo].[CourseEnrolment]  WITH CHECK ADD  CONSTRAINT [FK_CourseEnrolment_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO

ALTER TABLE [dbo].[CourseEnrolment] CHECK CONSTRAINT [FK_CourseEnrolment_Student]
GO

ALTER TABLE [dbo].[CourseFee] ADD  DEFAULT ('') FOR [CourseCode]
GO

ALTER TABLE [dbo].[CourseFee] ADD  DEFAULT ('0') FOR [Fee]
GO

ALTER TABLE [dbo].[CourseSubject]  WITH CHECK ADD  CONSTRAINT [fk_course_subjects_course] FOREIGN KEY([CoursesID])
REFERENCES [dbo].[Course] ([CourseID])
GO

ALTER TABLE [dbo].[CourseSubject] CHECK CONSTRAINT [fk_course_subjects_course]
GO

ALTER TABLE [dbo].[CourseSubject]  WITH CHECK ADD  CONSTRAINT [FK_CourseSubject_MasterSubject] FOREIGN KEY([MasterSubjectID])
REFERENCES [dbo].[MasterSubject] ([MasterSubjectID])
GO

ALTER TABLE [dbo].[CourseSubject] CHECK CONSTRAINT [FK_CourseSubject_MasterSubject]
GO

ALTER TABLE [dbo].[CourseSubject] ADD  DEFAULT ('') FOR [UnitIdentifier]
GO

ALTER TABLE [dbo].[CourseSubject] ADD  DEFAULT ('') FOR [UnitCode]
GO

ALTER TABLE [dbo].[CourseSubject] ADD  DEFAULT ('') FOR [UnitName]
GO

ALTER TABLE [dbo].[CourseSubject] ADD  DEFAULT ('Core') FOR [UnitType]
GO

ALTER TABLE [dbo].[CourseSubject] ADD  DEFAULT ('') FOR [UnitOrder]
GO

ALTER TABLE [dbo].[CourseSubject] ADD  DEFAULT ('') FOR [PeriodDisplay]
GO

ALTER TABLE [dbo].[CourseSubject] ADD  DEFAULT ('') FOR [StructureHours]
GO

ALTER TABLE [dbo].[CourseSubject] ADD  DEFAULT ('') FOR [SpecialRestriction]
GO

ALTER TABLE [dbo].[EPortalSetting] ADD  DEFAULT ('On') FOR [WebStatus]
GO

ALTER TABLE [dbo].[EPortalSetting] ADD  DEFAULT ('On') FOR [StaffStatus]
GO

ALTER TABLE [dbo].[Facility]  WITH CHECK ADD  CONSTRAINT [fk_facilities_campus] FOREIGN KEY([CampusID])
REFERENCES [dbo].[Campus] ([CampusID])
GO

ALTER TABLE [dbo].[Facility] CHECK CONSTRAINT [fk_facilities_campus]
GO

ALTER TABLE [dbo].[MasterSubject] ADD  DEFAULT ('') FOR [SubjectIdentifier]
GO

ALTER TABLE [dbo].[MasterSubject] ADD  DEFAULT ('') FOR [SubjectCode]
GO

ALTER TABLE [dbo].[MasterSubject] ADD  DEFAULT ('') FOR [SubjectName]
GO

ALTER TABLE [dbo].[MasterSubject] ADD  DEFAULT ('') FOR [SemOffered]
GO

ALTER TABLE [dbo].[MasterSubject] ADD  DEFAULT ('') FOR [GroupIdentifier]
GO

ALTER TABLE [dbo].[Modality] ADD  DEFAULT ('') FOR [Name]
GO

ALTER TABLE [dbo].[Modality] ADD  DEFAULT (NULL) FOR [CareerOp]
GO

ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [fk_staff_campus] FOREIGN KEY([CampusID])
REFERENCES [dbo].[Campus] ([CampusID])
GO

ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [fk_staff_campus]
GO

ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [fk_staff_faculty] FOREIGN KEY([FacultyID])
REFERENCES [dbo].[Faculty] ([FacultyID])
GO

ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [fk_staff_faculty]
GO

ALTER TABLE [dbo].[Person] ADD  DEFAULT ('') FOR [Title]
GO

ALTER TABLE [dbo].[Person] ADD  DEFAULT ('') FOR [FirstName]
GO

ALTER TABLE [dbo].[Person] ADD  DEFAULT ('') FOR [LastName]
GO

ALTER TABLE [dbo].[Person] ADD  DEFAULT ('') FOR [SecondName]
GO

ALTER TABLE [dbo].[Person] ADD  DEFAULT ('') FOR [PositionTitle]
GO

ALTER TABLE [dbo].[Person] ADD  DEFAULT ('') FOR [Email]
GO

ALTER TABLE [dbo].[Person] ADD  DEFAULT ('') FOR [ContactAh]
GO

ALTER TABLE [dbo].[Person] ADD  DEFAULT ('') FOR [ContactBh]
GO

ALTER TABLE [dbo].[Person] ADD  DEFAULT ('') FOR [StreetAddress]
GO

ALTER TABLE [dbo].[Person] ADD  DEFAULT ('') FOR [Suburb]
GO

ALTER TABLE [dbo].[Person] ADD  DEFAULT ('') FOR [State]
GO

ALTER TABLE [dbo].[Person] ADD  DEFAULT ('') FOR [Postcode]
GO

ALTER TABLE [dbo].[Person] ADD  DEFAULT ('') FOR [Rego]
GO

ALTER TABLE [dbo].[Person] ADD  DEFAULT ('') FOR [Password]
GO

ALTER TABLE [dbo].[Person] ADD  DEFAULT ('') FOR [PoliciesAccepted]
GO

ALTER TABLE [dbo].[Person] ADD  DEFAULT ('') FOR [WebNoticesSecurity]
GO

ALTER TABLE [dbo].[Person] ADD  DEFAULT ('') FOR [ShowEmailStaff]
GO

ALTER TABLE [dbo].[Person] ADD  DEFAULT ('') FOR [ShowEmailStudent]
GO

ALTER TABLE [dbo].[Person] ADD  DEFAULT ('') FOR [ShowBhStaff]
GO

ALTER TABLE [dbo].[Person] ADD  DEFAULT ('') FOR [ShowBhStudent]
GO

ALTER TABLE [dbo].[Person] ADD  DEFAULT ('') FOR [ShowAhStaff]
GO

ALTER TABLE [dbo].[Person] ADD  DEFAULT ('') FOR [ShowAhStudent]
GO

ALTER TABLE [dbo].[Person] ADD  DEFAULT ('') FOR [UserName]
GO

ALTER TABLE [dbo].[Person] ADD  DEFAULT ('') FOR [StatsYn]
GO

ALTER TABLE [dbo].[Person] ADD  DEFAULT ('') FOR [FeedBack]
GO

ALTER TABLE [dbo].[Person] ADD  DEFAULT (NULL) FOR [Status]
GO

ALTER TABLE [dbo].[ReceiptCC] ADD  DEFAULT ('') FOR [StudentNumber]
GO

ALTER TABLE [dbo].[ReceiptCC] ADD  DEFAULT ('') FOR [ReceiptNumber]
GO

ALTER TABLE [dbo].[ReceiptCC] ADD  DEFAULT ('') FOR [TransactionReference]
GO

ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Facility] FOREIGN KEY([FacilityID])
REFERENCES [dbo].[Facility] ([FacilityID])
GO

ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Facility]
GO

ALTER TABLE [dbo].[Session] ADD  DEFAULT ('') FOR [SessionKey]
GO

ALTER TABLE [dbo].[Session] ADD  DEFAULT ('0') FOR [TotalPlaces]
GO

ALTER TABLE [dbo].[Session] ADD  DEFAULT ('0') FOR [Enrolled]
GO

ALTER TABLE [dbo].[Session] ADD  DEFAULT ('0') FOR [AvailablePlaceCount]
GO

ALTER TABLE [dbo].[Session] ADD  DEFAULT ('') FOR [WebDateSubmitted]
GO

ALTER TABLE [dbo].[Session] ADD  DEFAULT ('') FOR [Time]
GO

ALTER TABLE [dbo].[Session] ADD  DEFAULT ('') FOR [Room]
GO

ALTER TABLE [dbo].[Student] ADD  DEFAULT ('') FOR [StudentNumber]
GO

ALTER TABLE [dbo].[Student] ADD  DEFAULT ('') FOR [Password]
GO

ALTER TABLE [dbo].[Student] ADD  DEFAULT ('') FOR [AllowEnrolment]
GO

ALTER TABLE [dbo].[Student] ADD  DEFAULT ('') FOR [Scholarship]
GO

ALTER TABLE [dbo].[Student] ADD  DEFAULT ('Local') FOR [EnrolmentType]
GO

ALTER TABLE [dbo].[Student] ADD  DEFAULT ('') FOR [CourseCode]
GO

ALTER TABLE [dbo].[Student] ADD  DEFAULT ('') FOR [CourseName]
GO

ALTER TABLE [dbo].[Student] ADD  DEFAULT (NULL) FOR [DataRequired]
GO

ALTER TABLE [dbo].[StudentInvoice]  WITH CHECK ADD  CONSTRAINT [fk_studentinvoices_teaching_period_enrolment] FOREIGN KEY([TeachingPeriodEnrolmentID])
REFERENCES [dbo].[TeachingPeriodEnrolment] ([TeachingPeriodEnrolmentID])
GO

ALTER TABLE [dbo].[StudentInvoice] CHECK CONSTRAINT [fk_studentinvoices_teaching_period_enrolment]
GO

ALTER TABLE [dbo].[StudentInvoice] ADD  DEFAULT ('0.00') FOR [Balance]
GO

ALTER TABLE [dbo].[StudentInvoice] ADD  DEFAULT ('0.00') FOR [UnitFees]
GO

ALTER TABLE [dbo].[StudentInvoice] ADD  DEFAULT ('0.00') FOR [Payments]
GO

ALTER TABLE [dbo].[StudentInvoice] ADD  DEFAULT ('0.00') FOR [Debits]
GO

ALTER TABLE [dbo].[StudentInvoice] ADD  DEFAULT ('0.00') FOR [Credits]
GO

ALTER TABLE [dbo].[StudentInvoice] ADD  DEFAULT (NULL) FOR [AUStudy]
GO

ALTER TABLE [dbo].[StudentProfile]  WITH CHECK ADD  CONSTRAINT [FK_StudentProfile_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO

ALTER TABLE [dbo].[StudentProfile] CHECK CONSTRAINT [FK_StudentProfile_Student]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [FirstName]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [LastName]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [StreetAddress]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [Suburb]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [State]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [ContactBusinessHours]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [ContactAfterHours]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [EmailAddress]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [KinFirstName]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [KinSurname]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [KinRelationship]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [KinStreetAddress]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [KinSuburb]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [KinState]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [KinContactBusinessHours]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [KinContactAfterHours]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [ContactViaEmail]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [FormerSurname]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [PreferredName]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [PermanentHomeStreet]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [PermanentHomeSuburb]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [PermanentHomeState]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [PermanentHomePC]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [PermanentHomeCountry]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [SemesterStreet]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [SemesterSuburb]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [SemesterState]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [SemesterPC]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [SemesterCountry]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [Aboriginaltsiyn]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [CountryofBirth]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [YearArrived]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [EvidenceofCitizenship]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [LangSpokenAtHome]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [Disability]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [HighestEducation]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [YearLastEnrolled]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [NameOfSchoolHep]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [Phvisayn]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [AusNzcitizenyn]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [English2ndLangyn]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [WorkStatus]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [CurrentOccupation]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [Title]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [SecondName]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [KinTitle]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [PostCode]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [Country]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [KinPC]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [KinCountry]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [PresidentNZcityn]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT ('') FOR [SupportServicesyn]
GO

ALTER TABLE [dbo].[StudentProfile] ADD  DEFAULT (NULL) FOR [DisabilityOther]
GO

ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [FK_Subject_MasterSubject] FOREIGN KEY([MasterSubjectID])
REFERENCES [dbo].[MasterSubject] ([MasterSubjectID])
GO

ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [FK_Subject_MasterSubject]
GO

ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [FK_Subject_TeachingPeriod] FOREIGN KEY([TeachingPeriodID])
REFERENCES [dbo].[TeachingPeriod] ([TeachingPeriodID])
GO

ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [FK_Subject_TeachingPeriod]
GO

ALTER TABLE [dbo].[SubjectEnrolment]  WITH CHECK ADD  CONSTRAINT [fk_subject_enrolments_subject] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([SubjectID])
GO

ALTER TABLE [dbo].[SubjectEnrolment] CHECK CONSTRAINT [fk_subject_enrolments_subject]
GO

ALTER TABLE [dbo].[SubjectEnrolment]  WITH CHECK ADD  CONSTRAINT [fk_subject_enrolments_teaching_period_enrolment] FOREIGN KEY([TeachingPeriodEnrolmentID])
REFERENCES [dbo].[TeachingPeriodEnrolment] ([TeachingPeriodEnrolmentID])
GO

ALTER TABLE [dbo].[SubjectEnrolment] CHECK CONSTRAINT [fk_subject_enrolments_teaching_period_enrolment]
GO

ALTER TABLE [dbo].[SubjectEnrolment] ADD  DEFAULT ('') FOR [UnitStatus]
GO

ALTER TABLE [dbo].[SubjectEnrolment] ADD  DEFAULT ('') FOR [UnitGrade]
GO

ALTER TABLE [dbo].[SubjectEnrolment] ADD  DEFAULT ('') FOR [UnitComplete]
GO

ALTER TABLE [dbo].[SubjectEnrolment] ADD  DEFAULT ('0.00') FOR [UnitFee]
GO

ALTER TABLE [dbo].[SubjectEnrolment] ADD  DEFAULT ('0.00') FOR [DiscountedFee]
GO

ALTER TABLE [dbo].[SubjectEnrolment] ADD  DEFAULT ('0.00') FOR [ChargedFee]
GO

ALTER TABLE [dbo].[SubjectEnrolment] ADD  DEFAULT ('On Campus') FOR [DeliveryMode]
GO

ALTER TABLE [dbo].[SubjectEnrolment] ADD  DEFAULT ('') FOR [RecordID]
GO

ALTER TABLE [dbo].[SubjectEnrolment] ADD  DEFAULT ('') FOR [ExternalEndDate]
GO

ALTER TABLE [dbo].[SubjectEnrolment] ADD  DEFAULT ('') FOR [UnitGradeNoHold]
GO

ALTER TABLE [dbo].[SubjectFee]  WITH CHECK ADD  CONSTRAINT [fk_subject_fees_subject] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([SubjectID])
GO

ALTER TABLE [dbo].[SubjectFee] CHECK CONSTRAINT [fk_subject_fees_subject]
GO

ALTER TABLE [dbo].[SubjectFee] ADD  DEFAULT ('0.00') FOR [FullFee]
GO

ALTER TABLE [dbo].[SubjectFee] ADD  DEFAULT ('0.00') FOR [DiscountedFee]
GO

ALTER TABLE [dbo].[SubjectFee] ADD  DEFAULT ('') FOR [DiscountDate]
GO

ALTER TABLE [dbo].[SubjectFee] ADD  DEFAULT ('') FOR [ExamDate]
GO

ALTER TABLE [dbo].[SubjectFee] ADD  DEFAULT ('') FOR [ExamTime]
GO

ALTER TABLE [dbo].[SubjectFee] ADD  DEFAULT ('') FOR [ExamRoom]
GO

ALTER TABLE [dbo].[SubjectFee] ADD  DEFAULT ('') FOR [SemesterKey]
GO

ALTER TABLE [dbo].[TeachingPeriod]  WITH CHECK ADD  CONSTRAINT [fk_teaching_periods_campus] FOREIGN KEY([CampusID])
REFERENCES [dbo].[Campus] ([CampusID])
GO

ALTER TABLE [dbo].[TeachingPeriod] CHECK CONSTRAINT [fk_teaching_periods_campus]
GO

ALTER TABLE [dbo].[TeachingPeriod] ADD  DEFAULT ('') FOR [SemesterKey]
GO

ALTER TABLE [dbo].[TeachingPeriod] ADD  DEFAULT ('') FOR [Semester]
GO

ALTER TABLE [dbo].[TeachingPeriod] ADD  DEFAULT ('') FOR [SemesterDisplay]
GO

ALTER TABLE [dbo].[TeachingPeriod] ADD  DEFAULT ('') FOR [StartDate]
GO

ALTER TABLE [dbo].[TeachingPeriod] ADD  DEFAULT ('') FOR [DiscountDate]
GO

ALTER TABLE [dbo].[TeachingPeriod] ADD  DEFAULT ('') FOR [CreditWithdrawalDate]
GO

ALTER TABLE [dbo].[TeachingPeriod] ADD  DEFAULT ('') FOR [PenaltyWithdrawalDate]
GO

ALTER TABLE [dbo].[TeachingPeriod] ADD  DEFAULT ('') FOR [EndDate]
GO

ALTER TABLE [dbo].[TeachingPeriod] ADD  DEFAULT ('No') FOR [CurrentSemYn]
GO

ALTER TABLE [dbo].[TeachingPeriodEnrolment]  WITH CHECK ADD  CONSTRAINT [FK_TeachingPeriodEnrolment_Campus] FOREIGN KEY([CampusID])
REFERENCES [dbo].[Campus] ([CampusID])
GO

ALTER TABLE [dbo].[TeachingPeriodEnrolment] CHECK CONSTRAINT [FK_TeachingPeriodEnrolment_Campus]
GO

ALTER TABLE [dbo].[TeachingPeriodEnrolment]  WITH CHECK ADD  CONSTRAINT [FK_TeachingPeriodEnrolment_CourseEnrolment] FOREIGN KEY([CourseEnrolmentID])
REFERENCES [dbo].[CourseEnrolment] ([CourseEnrolmentID])
GO

ALTER TABLE [dbo].[TeachingPeriodEnrolment] CHECK CONSTRAINT [FK_TeachingPeriodEnrolment_CourseEnrolment]
GO

ALTER TABLE [dbo].[TeachingPeriodEnrolment]  WITH CHECK ADD  CONSTRAINT [FK_TeachingPeriodEnrolment_TeachingPeriod] FOREIGN KEY([TeachingPeriodID])
REFERENCES [dbo].[TeachingPeriod] ([TeachingPeriodID])
GO

ALTER TABLE [dbo].[TeachingPeriodEnrolment] CHECK CONSTRAINT [FK_TeachingPeriodEnrolment_TeachingPeriod]
GO


