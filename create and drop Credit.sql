create procedure usp_dropCredit
as
	drop table Credit;
go

create procedure usp_createCredit
as
	Create table Credit
	(MovieID  int, StarID int);
go

exec usp_dropCredit

exec usp_createCredit