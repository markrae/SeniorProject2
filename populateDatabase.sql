create procedure usp_populateDatabase
as
	--WOU data
	exec usp_insertOrganization 'Western Oregon University' --OrgID 1
	
	exec usp_insertClub 1, 'Gentle Hall' --ClubID 1
	exec usp_insertClub 1, 'Barnum Hall' --ClubID 2
	exec usp_insertClub 1, 'Heritage' --ClubID 3
	
	exec usp_insertMember 'Magallanes','Anita', True
	exec usp_insertMember 'Hochstetler','Lisa', True
	exec usp_insertMember 'Philip','Loretta', True
	exec usp_insertMember 'Ohare','Tina', True
	exec usp_insertMember 'Clow','Howard', True
	exec usp_insertMember 'Johnson','David', False
	exec usp_insertMember 'Valliere','Katherine', True
	exec usp_insertMember 'Cimino','Robyn', True
	exec usp_insertMember 'Smith','Ballance', True
	exec usp_insertMember 'Bellamy','Tony', True
	exec usp_insertMember 'Vernon','Tammy', False
	exec usp_insertMember 'Mccauley','Patty', True
	exec usp_insertMember 'Lerner','Dale', True
	exec usp_insertMember 'Escobedo','Aaron', False
	exec usp_insertMember 'Mosely','Thomas', True
	exec usp_insertMember 'Cota','Marian', True
	exec usp_insertMember 'Coley','Wayne', False
	exec usp_insertMember 'Law','April', True
	exec usp_insertMember 'Law','Florence', True
	
	exec usp_insertMembership 1,1
	exec usp_insertMembership 2,1
	exec usp_insertMembership 3,1
	exec usp_insertMembership 4,1
	exec usp_insertMembership 5,1
	exec usp_insertMembership 6,1
	exec usp_insertMembership 7,2
	exec usp_insertMembership 8,2
	exec usp_insertMembership 9,2
	exec usp_insertMembership 10,2
	exec usp_insertMembership 11,2
	exec usp_insertMembership 12,2
	exec usp_insertMembership 13,2
	exec usp_insertMembership 14,2
	exec usp_insertMembership 15,3
	exec usp_insertMembership 16,3
	exec usp_insertMembership 17,3
	exec usp_insertMembership 18,3
	exec usp_insertMembership 19,3
	
	exec usp_insertMovie 'Citizen Kane',  -- 1
	 'Rosebud is a....', 'NR', 'English',
	  'English', '119 minutes'
	exec usp_insertMovie 'Terminator',  -- 2
	 'He''ll be back.', 'R', 'English',
	  'English', '108 minutes'
	exec usp_insertMovie 'Terminator 2: Judgment Day', -- 3
	 'See?', 'R', 'English',
	  'English', '139 minutes'
	exec usp_insertMovie 'Plan 9 From Outer Space', -- 4
	 'What were plans 1-8?', 'PG', 'English',
	  'English', '79 minutes'
	exec usp_insertMovie 'Airplane!',  -- 5
	 'Don''t call me Shirley', 'PG', 'English',
	  'English', '79 minutes' --Stopped here first time.
	exec usp_insertMovie 'Eraserhead',  -- 6
	 'What the %$^#* did I just watch!?!', 'NR', 'English',
	  'English', '85 minutes'
	exec usp_insertMovie 'Kung Fu Panda',  -- 6
	 'Guess what the main character is and does?', 'PG', 'English',
	  'English', '90 minutes'
	exec usp_insertMovie 'Casablanca',  -- 7
	 'Rick never actually says "Play it again Sam."', 'PG', 'English',
	  'English', '102 minutes'
	exec usp_insertMovie 'Raiders of the Lost Ark',  -- 8
	 'Dun Dun Dun Dun - Dun Dun DUUUUUUUUUUUUUUUNNNNNN.', 'PG', 'English',
	  'English', '115 minutes'
	exec usp_insertMovie 'Indiana Jones and the Temple of Doom',  -- 9
	 'The slightly racist one.', 'PG', 'English',
	  'English', '118 minutes'
	exec usp_insertMovie '2001: A Space Odyssey',  -- 10
	 'Explain the ending, I dare you.', 'G', 'English',
	  'English', '141 minutes'
	exec usp_insertMovie 'WALL·E', -- 11
	 'Robotic Buster Keaton in 2001: A Space Odyssey.', 'G', 'English',
	  'English', '98 minutes'
	exec usp_insertMovie 'Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb',
	 'Cold War Paranoia: The Motion Picture', 'PG', 'English',
	  'English', '95 minutes'
	exec usp_insertMovie '12 Angry Men',  -- 12
	 'Sadly jury duty isn''t this interesting.', 'PG', 'English',
	  'English', '95 minutes'
	 
	exec usp_insertMovieCollection 1, 2
	exec usp_insertMovieCollection 2, 7
	exec usp_insertMovieCollection 3, 11
	exec usp_insertMovieCollection 4, 15
	exec usp_insertMovieCollection 5, 19
	exec usp_insertMovieCollection 6, 2
	exec usp_insertMovieCollection 7, 2
	exec usp_insertMovieCollection 8, 2
	exec usp_insertMovieCollection 9, 2
	exec usp_insertMovieCollection 10, 2
	exec usp_insertMovieCollection 11, 15
	exec usp_insertMovieCollection 12, 15
	
	--OSU Data
	exec usp_insertOrganization 'Oregon State University' --OrgID 2
	
	exec usp_insertClub 1, 'Movie Lovers' --ClubID 4
	
	exec usp_insertMember 'Tunnell','Nathan', True
	exec usp_insertMember 'Mcclellan','Philip', True
	exec usp_insertMember 'Wieland','Gerald', True
	exec usp_insertMember 'Maestas','Marlene', True
	exec usp_insertMember 'Trice','Daniel', True
	
	exec usp_insertMembership 20, 4
	exec usp_insertMembership 21, 4
	exec usp_insertMembership 22, 4
	exec usp_insertMembership 23, 4
	exec usp_insertMembership 24, 4
	
	exec usp_insertMovieCollection 3, 22
	exec usp_insertMovieCollection 5, 22
	exec usp_insertMovieCollection 8, 22
	
	--Other Data
	exec usp_insertOrganization 'Eastern Oregon University' --OrgID 3
go

exec usp_populateDatabase