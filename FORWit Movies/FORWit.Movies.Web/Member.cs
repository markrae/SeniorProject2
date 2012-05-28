using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Member
/// </summary>
public class Member
{
    /*
     * Create table Member
     * (MemberID varChar(50) primary key, LName varChar(50) not null, FName varChar(MAX) not null, Here bit not null);
     */
    private String _MemberID;
    private String _LName;
    private String _FName;
    private bool _Here;
    
    /*
     * Constructor:
     * (Note: There are so many contructors because I'm not sure what type _Here will be coming in as.
     * ===================================================================================================
     */
	public Member()
	{
        _MemberID = "";
        _LName = "";
        _FName = "";
        _Here = false;
	}

    public Member(String MemberID, String LName, String FName, bool Here)
    {
        this._MemberID = MemberID;
        this._LName = LName;
        this._FName = FName;
        this._Here = Here;
    }

    public Member(String MemberID, String LName, String FName, int Here)
    {
        this._MemberID = MemberID;
        this._LName = LName;
        this._FName = FName;
        bool isHere;
        if (Here == 1)
        {
            isHere = true;
        }
        else
        {
            isHere = false;
        }
        this._Here = isHere;
    }

    public Member(String MemberID, String LName, String FName, String Here)
    {
        this._MemberID = MemberID;
        this._LName = LName;
        this._FName = FName;
        int numHere = Convert.ToInt32(Here);
        bool isHere;
        if (numHere == 1)
        {
            isHere = true;
        }
        else
        {
            isHere = false;
        }
        this._Here = isHere;
    }

    /*
     * Getters and Setters
     * ====================================================================================================
     */

    public String MemberID
    {
        //accessor
        get { return _MemberID; }

        //mutator
        set
        {
            _MemberID = value;
        }

    }

    public String LName
    {
        //accessor
        get { return _LName; }

        //mutator
        set
        {
            _LName = value;
        }

    }

    public String FName
    {
        //accessor
        get { return _FName; }

        //mutator
        set
        {
            _FName = value;
        }

    }

    public bool Here
    {
        //accessor
        get { return _Here; }

        //mutator
        set
        {
            _Here = value;
        }

    } 
}