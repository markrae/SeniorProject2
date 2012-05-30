using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


public partial class NewOrganization : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //protected void Create(object sender, EventArgs e)
    //{
    //    //call the method to execute insert to the database
    //    ExecuteInsert("Bob",
    //                  "Jones",
    //                  true);
    //    Response.Write("Record was successfully added!");
    //}

    //private void ExecuteInsert(String FName, String LName, Boolean Here)
    //{
    //    string connString ="Data Source=CSSQL2008;Initial Catalog=FORwitMovie;Integrated Security=True";
    //    SqlConnection conn = null;

    //    try
    //    {
    //        conn = new SqlConnection(connString);
    //        conn.Open();

    //        using (SqlCommand cmd = new SqlCommand())
    //        {
    //            cmd.Connection = conn;
    //            cmd.CommandText = "INSERT INTO Members (FName, LName, Here) VALUES "
    //                + " (" + FName + ", " + LName + ", " + Here + ")";
    //            cmd.CommandType = CommandType.Text;

    //            SqlParameter[] param = new SqlParameter[3];
    //            param[0] = new SqlParameter("@FName", SqlDbType.VarChar, 50);
    //            param[1] = new SqlParameter("@LName", SqlDbType.VarChar, 50);
    //            param[2] = new SqlParameter("@Here", SqlDbType.VarChar, 50);

    //            param[0].Value = FName;
    //            param[1].Value = LName;
    //            param[2].Value = Here;

    //            for (int i = 0; i < param.Length; i++)
    //            {
    //                cmd.Parameters.Add(param[i]);
    //            }

    //            int rowsAffected = cmd.ExecuteNonQuery();
    //            if (rowsAffected == 1)
    //            {
    //                Response.Write("Query success.");
    //            }
    //            else
    //            {
    //                Response.Write("Query Fail.");
    //            }
    //        }
    //    }
    //    catch (System.Data.SqlClient.SqlException ex)
    //    {
    //        Response.Write("SQL Fail.");
    //    }
    //    finally
    //    {
    //        conn.Close();
    //    }
    //}

    public string GetConnectionString()
    {
        return ConfigurationManager.ConnectionStrings["FORwitMovieConnectionString"].ConnectionString;
    }
}
