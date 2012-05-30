using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Data;

namespace FORWit.Movies.Web
{
    public class ColorDB
    {
        [DataObjectMethod(DataObjectMethodType.Select)]
        public static Tuple<String, String> getColors(String OrgName)
        {
            SqlConnection connection = new SqlConnection(ConnectStringGenerator.getConnectString());
            string sel = "execute usp_getColors '" + OrgName + "'";
            SqlCommand cmd = new SqlCommand(sel, connection);
            connection.Open();
            SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            String Color1 = "";
            String Color2 = "";

            while (dr.Read())
            {
                Color1 = dr["Color1"].ToString();
                Color2 = dr["Color2"].ToString();

                
            }

            return new Tuple<string, string>(Color1, Color2);
        }
    }

    
}