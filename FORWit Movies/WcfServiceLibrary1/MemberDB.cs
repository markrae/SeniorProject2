using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;

namespace FORwitServiceLibrary
{
    /// <summary>
    /// Summary description for MemberDB
    /// </summary>
    [DataObject]
    public class MemberDB
    {
        public MemberDB()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        [DataObjectMethod(DataObjectMethodType.Select)]
        public static MemberInfo GetMember(int ID)
        {
            SqlConnection con = new SqlConnection(GetConnectionString());
            string sel = "SELECT * FROM Member WHERE MemberID = " + ID;
            SqlCommand cmd = new SqlCommand(sel, con);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            MemberInfo m = new MemberInfo();
            if(rdr.Read())
            {
                m.LName = rdr["LName"].ToString();
                m.FName = rdr["FName"].ToString();
            }
            rdr.Close();
            return m;
        }
        private static string GetConnectionString()
        {
            return "Data Source=CSSQL2008;Initial Catalog=FORwitMovie;Integrated Security=True";
        }
    }
}