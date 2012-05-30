using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Club
/// </summary>
public class Club
{
    private String _ClubID;
    private String _OrgID;
    private String _ClubDescription;

	public Club()
	{
        _ClubID = "";
        _OrgID = "";
        _ClubDescription = "";
	}

    public Club(String ClubID, String OrgID, String ClubDescription)
    {
        _ClubID = ClubID;
        _OrgID = OrgID;
        _ClubDescription = ClubDescription;
    }

    public String ClubID
    {
        get { return _ClubID; }

        set { _ClubID = value; }

    }

    public String OrgID
    {
        get { return _OrgID; }

        set { _OrgID = value; }

    }

    public String ClubDescription
    {
        get { return _ClubDescription; }

        set { _ClubDescription = value; }

    }
}