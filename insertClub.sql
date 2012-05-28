create procedure usp_insertClub
@OrgID int,
@ClubDescription varchar(50)
as
	begin
		insert into Club (OrgID, ClubDescription) values ( @OrgID, @ClubDescription)
	end
go

exec usp_insertClub 1, 'Forwit'

select *
from Club