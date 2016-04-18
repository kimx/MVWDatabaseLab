CREATE TABLE [dbo].[Word] (
    [Id]         INT            IDENTITY (1, 1) NOT NULL,
    [FromWord]   NVARCHAR (MAX) NULL,
    [ToWord]     NVARCHAR (MAX) NULL,
    [CreateUtc]  DATETIME       NOT NULL,
    [ModifyUtc]  DATETIME       NOT NULL,
    [CreateUser] NVARCHAR (MAX) NOT NULL,
    [KnowTimes]  INT            DEFAULT ((0)) NOT NULL,
    [Closed]     BIT            DEFAULT ((0)) NOT NULL,
    [CloseUtc]   DATETIME       NULL,
    [Star]       BIT            DEFAULT ((0)) NOT NULL,
    [StarUtc]    DATETIME       NULL,
    CONSTRAINT [PK_dbo.Word] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20150813-204212]
    ON [dbo].[Word]([Closed] ASC, [CloseUtc] ASC);

