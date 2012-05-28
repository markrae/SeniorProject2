Create Procedure usp_returnCollection (@OrgID int, @ClubID int)
as
Select Member.LName, Member.FName, Movie.Title,
 Movie.MovieDescription, Movie.Rating, Movie.SpokenLangs, Movie.SubLangs,
 Movie.IMDBLink, Movie.MovieLength, Movie.LastViewed
From Organization join Club on Organization.OrgID = Club.OrgID
 join Membership on Membership.ClubID = Club.ClubID
 join Member on Member.MemberID = Membership.MemberID
 join MovieCollection on MovieCollection.MemberID = Member.MemberID
 join Movie on Movie.MovieID = MovieCollection.MovieID
 where Member.Here = 'true' and @OrgID = Organization.OrgID
 and @ClubID = Club.ClubID
 Go
 --Exec usp_returnCollection 'Western Oregon University', 'Gentle Hall'