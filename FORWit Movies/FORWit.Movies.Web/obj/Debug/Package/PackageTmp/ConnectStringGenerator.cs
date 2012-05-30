using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// This class returns connect strings.
/// </summary>
public class ConnectStringGenerator
{
	public ConnectStringGenerator()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static String getConnectString()
    {
        return "Data Source=CSSQL2008;Initial Catalog=FORwitMovie;Integrated Security=True";
    }
}