create procedure usp_rebuild
as
	exec usp_dropAll
	exec usp_createAll
go

exec usp_rebuild