USE [Nomina]
GO

/****** Object:  Table [dbo].[empleados]    Script Date: 7/21/2023 12:20:01 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[empleados](
	[Idempleado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Direccion] [nvarchar](max) NOT NULL,
	[Telefono] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_empleados] PRIMARY KEY CLUSTERED 
(
	[Idempleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

