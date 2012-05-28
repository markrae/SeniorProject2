use FORwitMovie
CREATE TABLE Organization 
(OrgID int primary key IDENTITY, OrgDescription varChar(MAX) not null); 

Create table Club
(ClubID int primary key IDENTITY, OrgID varChar(50) not null, ClubDescription varChar(MAX) not null);

Create table Member
(MemberID int primary key IDENTITY, LName varChar(50) not null, FName varChar(MAX) not null, Here bit not null);

Create table Membership
(MemberID int not null, ClubID int not null);

Create table MovieCollection
(MemberID int not null, MovieID int not null);

Create table Movie
(MovieID int  primary key IDENTITY, Title varChar(50) not null, MovieDescription varChar(50), 
Rating varChar(50), SpokenLangs varChar(50), SubLangs varChar(50), IMDBLink varChar(50), 
MovieLength varChar(50), LastViewed DateTime);

Create table Credit
(MovieID  int, StarID int);

Create table Actor
(StarID int primary key IDENTITY, LName varChar(50) not null, FName varChar(50) not null);