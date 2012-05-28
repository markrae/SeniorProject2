create procedure usp_getColors
@Organiztion varchar(50)
as
	Select Organization.Color1, Organization.Color2
	From Organization
	Where Organization.OrgDescription = @Organiztion
go

exec usp_getColors 'Western Oregon University'