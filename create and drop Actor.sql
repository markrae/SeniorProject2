create procedure usp_dropActor
as
	drop table Actor
go

create procedure usp_createActor
as
	Create table Actor
	(StarID int primary key IDENTITY, LName varChar(50) not null, FName varChar(50) not null);
go

exec usp_dropActor

exec usp_createActor