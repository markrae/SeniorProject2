create procedure usp_insertOrganizationV2
@OrgDescription varchar(50),
@Color1 varchar(50),
@Color2 varchar(50)
as
	begin
		insert into Organization(OrgDescription, Color1, Color2) 
			values (@OrgDescription, @Color1, @Color2)
	end
go

exec usp_insertOrganizationV2 'FORwitTest', '#00FF00', '#FF00FF'

Select *
from Organization