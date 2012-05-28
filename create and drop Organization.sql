create procedure usp_dropOrganization
as
	drop table Organization;
go

create procedure usp_createOrganization
as
	create table Organization 
	(OrgID int primary key IDENTITY, OrgDescription varChar(MAX) not null, Color1 int, Color2 int, Logo image); 
go

--exec usp_dropOrganization

--exec usp_createOrganization