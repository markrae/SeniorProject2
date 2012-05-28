create procedure usp_dropMovie
as
	drop table Movie;
go

create procedure usp_createMovie
as
	Create table Movie
	(MovieID int  primary key IDENTITY, Title varChar(50) not null, MovieDescription varChar(50), 
	Rating varChar(50), SpokenLangs varChar(50), SubLangs varChar(50), IMDBLink varChar(50), 
	MovieLength varChar(50), LastViewed DateTime);
go

exec usp_dropMovie

exec usp_createMovie