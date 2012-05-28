create procedure usp_rebuildAll
as
	exec usp_rebuild
	exec usp_populateDatabase
go

exec usp_rebuildAll