using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for MemberDB
/// </summary>
public class MemberDB
{
	public MemberDB()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    [DataObjectMethod(DataObjectMethodType.Select)]
    public static List<Member> getMembers()
    {
        List<Member> categoryList = new List<Member>();
        //SqlConnection connection = new SqlConnection(GetConnectionString());
        SqlConnection connection = new SqlConnection(ConnectStringGenerator.getConnectString());
        string sel = "execute usp_selectMember";
        SqlCommand cmd = new SqlCommand(sel, connection);
        connection.Open();
        SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        Member member;

        while (dr.Read())
        {
            member = new Member();
            member.MemberID = dr["MemberID"].ToString();
            member.LName = dr["LName"].ToString();
            member.FName = dr["FName"].ToString();
            member.Here = Convert.ToBoolean(dr["Here"].ToString());
            categoryList.Add(member);
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