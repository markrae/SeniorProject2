create procedure usp_insertMovieCollection
@MovieID varchar(50),
@MemberID varchar(50)
as
	begin
		insert into MovieCollection(MovieID, MemberID) values (@MovieID, @MemberID)
	end
go

exec usp_insertMovieCollection 17, 28

select *
from Member join MovieCollection on Member.MemberID = MovieCollection.MemberID
	join Movie on Movie.MovieID = MovieCollection.MovieID