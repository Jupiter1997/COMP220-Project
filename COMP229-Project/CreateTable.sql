USE [ShalomLibrary]
Go
Create Table [Book](
[BookID][int] NOT NULL IDENTITY (1,1),
[Title][nvarchar](50) ,
[Author][nvarchar](50),
[ISBN][nvarchar](20),
[Genre][nvarchar](50),
[NoOfPages][nvarchar](10),
[LentToFriend][nvarchar](50),
[FriendName][nvarchar](50),
[Comments][nvarchar](50)
)



