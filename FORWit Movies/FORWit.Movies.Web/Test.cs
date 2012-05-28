using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FORWit.Movies.Web;

/// <summary>
/// Summary description for Test
/// </summary>
public class Test
{
	public Test()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public void methodTest() 
    {
        Tuple<String,String> output = ColorDB.getColors("Western Oregon University");
        String Color1 = output.Item1;
        String Color2 = output.Item2;
    }

    public static void main(String[] args)
    {
        Test tester = new Test();
        tester.methodTest();
    }
}