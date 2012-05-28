CREATE PROCEDURE usp_Rebuild
as

--Remove Old Tables
--========================================================================
drop TABLE Organization 

drop table Club

drop table Member

drop table Membership

drop table MovieCollection

drop table Movie

drop table Credit

drop table Actor

--Build New Tables
--========================================================================
CREATE TABLE Organization 
(OrgID varChar(50) primary key, OrgDescription varChar(MAX) not null); 

Create table Club
(ClubID varChar(50) primary key, OrgID varChar(50) not null, ClubDescription varChar(MAX) not null);

Create table Member
(MemberID varChar(50) primary key, LName varChar(50) not null, FName varChar(MAX) not null, Here bit not null);

Create table Membership
(MemberID varChar(50) not null, ClubID varChar(50) not null);

Create table MovieCollection
(MemberID varChar(50) not null, MovieID varChar(50) not null);

Create table Movie
(MovieID varChar(50)  primary key, Title varChar(50) not null, MovieDescription varChar(50), 
Rating varChar(50), SpokenLangs varChar(50), SubLangs varChar(50), IMDBLink varChar(50));

Create table Credit
(MovieID  varChar(50), StarID varChar(50));

Create table Actor
(StarID varChar(50) primary key, LName varChar(50) not null, FName varChar(50) not null);

