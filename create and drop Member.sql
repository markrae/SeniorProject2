create procedure usp_dropMember
as
	drop table Member;
go

create procedure usp_createMember
as
	Create table Member
	(MemberID int primary key IDENTITY, LName varChar(50) not null, FName varChar(MAX) not null, Here bit not null);
go

exec usp_dropMemeber

exec usp_createMember