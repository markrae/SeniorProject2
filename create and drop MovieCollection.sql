create procedure usp_dropMovieCollection
as
	drop table MovieCollection;
go

create procedure usp_createMovieCollection
as
	Create table MovieCollection
	(MemberID int not null, MovieID int not null);
go

exec usp_dropMovieCollection

exec usp_createMovieCollection