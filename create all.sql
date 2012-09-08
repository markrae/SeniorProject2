create procedure usp_createAll
as
	exec usp_createActor
	exec usp_createClub
	exec usp_createCredit
	exec usp_createMember
	exec usp_createMembership
	exec usp_createMovie
	exec usp_createMovieCollection
	exec usp_createOrganizationnnnn
go

exec usp_createAll