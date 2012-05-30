using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Actor
/// </summary>
public class Actor
{
    private String _StarID;
    private String _LName;
    private String _FName;

	public Actor()
	{
        _StarID = "";
        _LName = "";
        _FName = "";
	}

    public Actor(String StarID, String LName, String FName)
    {
        _StarID = StarID;
        _LName = LName;
        _FName = FName;
    }

    public String StarID
    {
        get { return _StarID; }

        set { _StarID = value; }
    }

    public String LName
    {
        get { return _LName; }

        set { _LName = value; }
    }

    public String FName
    {
        get { return _FName; }

        set { _FName = value; }
    }

}