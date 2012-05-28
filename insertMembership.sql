create procedure usp_insertMembership
@MemberID int,
@ClubID int
as
	begin
		insert into Membership(MemberID, ClubID) values (@MemberID, @ClubID)
	end
go

exec usp_insertMembership 28, 7

Select *
From Organization join Club on Club.OrgID = Organization.OrgID 
				join Membership on Club.ClubID = Membership.ClubID
				join Member on Member.MemberID = Membership.MemberID
Where Organization.OrgDescription = 'Western Oregon University'