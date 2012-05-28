using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Movie
/// </summary>
public class Movie
{
    private String _MoveID;
    private String _Title;
    private String _MovieDescription;
    private String _Rating;
    private String _SpokenLangs;
    private String _SubLangs;
    private String _IMDBLink;

	public Movie()
	{
        _MoveID = "";
        _Title = "";
        _MovieDescription = "";
        _Rating = "";
        _SpokenLangs = "";
        _SubLangs = "";
        _IMDBLink = "";
	}
}