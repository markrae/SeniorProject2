create procedure usp_dropMembership
as
	drop table Membership
go

create procedure usp_createMembership
as
	Create table Membership
	(MemberID int not null, ClubID int not null);
go

exec usp_dropMembership

exec usp_createMembership