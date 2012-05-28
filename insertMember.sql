create procedure usp_insertMember
@LName varchar(50),
@FName varchar(50),
@Here bit
as
	begin
		insert into Member(LName, FName, Here) values (@LName, @FName, @Here)
	end
go

exec usp_insertMember 'Feltmann', 'Stefan', False

Select *
from Member