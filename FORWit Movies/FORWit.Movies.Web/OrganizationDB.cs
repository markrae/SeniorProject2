using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for OrganizationDB
/// </summary>
public class OrganizationDB
{
    /*
     * ==================================================================================
     * Not Tested yet
     * ==================================================================================
     */

	public OrganizationDB()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    [DataObjectMethod(DataObjectMethodType.Select)]
    public static List<Organization> getOrganizations()
    {
        List<Organization> categoryList = new List<Organization>();
        //SqlConnection connection = new SqlConnection(GetConnectionString());
        SqlConnection connection = new SqlConnection(ConnectStringGenerator.getConnectString());
        string sel = "execute usp_selectOrganization";
        SqlCommand cmd = new SqlCommand(sel, connection);
        connection.Open();
        SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        Organization org;

        while (dr.Read())
        {
            
            org = new Organization();
            org.OrgID = dr["OrgID"].ToString();
            org.OrgDescription = dr["OrgDescription"].ToString();
            categoryList.Add(org);
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