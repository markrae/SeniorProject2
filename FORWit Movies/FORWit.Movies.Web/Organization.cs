using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Organization
/// </summary>
public class Organization
{
    private String _OrgID;
    private String _OrgDescription;
	
    public Organization()
	{
        _OrgID = "";
        _OrgDescription = "";
	}

    public Organization(String OrgID, String OrgDescription)
    {
        _OrgID = OrgID;
        _OrgDescription = OrgDescription;
    }

    public String OrgID
    {
        get {return _OrgID;}

        set {_OrgID = value;}
    }

    public String OrgDescription
    {
        get {return _OrgDescription;}

        set { _OrgDescription = value; }
    }
}