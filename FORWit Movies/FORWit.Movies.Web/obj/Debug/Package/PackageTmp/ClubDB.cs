using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for ClubDB
/// </summary>
public class ClubDB
{
/*
 * ==================================================================================
 * Not Tested yet
 * ==================================================================================
 */

	public ClubDB()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    [DataObjectMethod(DataObjectMethodType.Select)]
    public static List<Club> getClubs()
    {
        List<Club> categoryList = new List<Club>();
        //SqlConnection connection = new SqlConnection(GetConnectionString());
        SqlConnection connection = new SqlConnection(ConnectStringGenerator.getConnectString());
        string sel = "execute usp_selectClub";
        SqlCommand cmd = new SqlCommand(sel, connection);
        connection.Open();
        SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        Club club;

        while (dr.Read())
        {

            club = new Club();
            club.ClubID = dr["ClubID"].ToString();
            club.OrgID = dr["OrgID"].ToString();
            club.ClubDescription = dr["ClubDescription"].ToString();
            categoryList.Add(club);
            /*
            //course.CategoryID = dr["ICategoryID"].ToString();
            //course.ShortName = dr["IShortName"].ToString();
            //course.LongName = dr["LongName"].ToString();
            categoryList.Add(Faculty);
             */
        }
        dr.Close();
        return categoryList;
    }
}