create procedure usp_insertMovie
@Title varchar(50),
@MovieDescrition varchar(50),
@Rating varchar(50),
@SpokenLangs varchar(50),
@SubLangs varchar(50),
@MovieLength varchar(50)
as
	begin
		insert into Movie(Title, MovieDescription, Rating, 
			SpokenLangs, SubLangs, MovieLength)
		values (@Title, @MovieDescrition, @Rating, @SpokenLangs,
			@SpokenLangs, @MovieLength)
	end
go

exec usp_insertMovie 'Summer Wars', 'Not Digimon', 'PG', 'English, Japanese', 'English',
						'2 hours'
						
select *
from Movie