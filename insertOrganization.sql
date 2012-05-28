create procedure usp_insertOrganization
@OrgDescription varchar(50)
as
	begin
		insert into Organization(OrgDescription) values (@OrgDescription)
	end
go

exec usp_insertOrganization 'FORwitTest'

Select *
from Organization