create procedure usp_dropClub
as
	drop table Club;
go

create procedure usp_createClub
as
	Create table Club
	(ClubID int primary key IDENTITY, OrgID varChar(50) not null, ClubDescription varChar(MAX) not null);
go

exec usp_dropClub

exec usp_createClub