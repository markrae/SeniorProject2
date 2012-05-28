--Doesn't work yet.
use FORwitMovie
INSERT INTO Organization (OrgID, OrgDescription)
VALUES ("01WOU","Western Oregon University")

INSERT INTO Club(ClubID, OrgID, ClubDescription)
VALUES ("01WOUCS","01WOU", "The senior project group")

INSERT INTO Member(MemberID, LName, FName)
VALUES ("01WOUCSsfeltmann09","Feltmann", "Stefan")

INSERT INTO Membership(MemberID, ClubID)
VALUES ("01WOUCSsfeltmann09","01WOUCS")

INSERT INTO MovieCollection(MemberID, MovieID)
VALUES ("01WOUCSsfeltmann09","01DIEHARD")

INSERT INTO Movie(MovieID, Title)
VALUES ("01DIEHARD","Die Hard")

INSERT INTO Credit(MovieID, StarID)
VALUES ("01DIEHARD","01WILLISBRUCE")

INSERT INTO Actor(StarID, LName, FName)
VALUES ("01WILLISBRUCE", "Willis","Bruce")