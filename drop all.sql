create procedure usp_dropAll
as
	exec usp_dropActor
	exec usp_dropClub
	exec usp_dropCredit
	exec usp_dropMember
	exec usp_dropMembership
	exec usp_dropMovie
	exec usp_dropMovieCollection
	exec usp_dropOrganization
go

exec usp_dropAll