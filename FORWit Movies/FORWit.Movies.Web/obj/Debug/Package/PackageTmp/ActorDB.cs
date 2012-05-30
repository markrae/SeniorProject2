using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for ActorDB
/// </summary>
public class ActorDB
{
	public ActorDB()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    [DataObjectMethod(DataObjectMethodType.Select)]
    public static List<Actor> getActors()
    {
        List<Actor> categoryList = new List<Actor>();
        //SqlConnection connection = new SqlConnection(GetConnectionString());
        SqlConnection connection = new SqlConnection(ConnectStringGenerator.getConnectString());
        string sel = "execute usp_selectActor";
        SqlCommand cmd = new SqlCommand(sel, connection);
        connection.Open();
        SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        Actor actor;

        while (dr.Read())
        {
            actor = new Actor();
            actor.StarID = dr["StarID"].ToString();
            actor.LName = dr["LName"].ToString();
            actor.FName = dr["FName"].ToString();
            categoryList.Add(actor);
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