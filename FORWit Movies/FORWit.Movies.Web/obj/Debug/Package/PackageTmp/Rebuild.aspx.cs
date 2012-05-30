using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace FORWit.Movies.Web
{
    public partial class Rebuild : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rebuildBtn_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(ConnectStringGenerator.getConnectString());
            string sel = "usp_rebuildAll";
            SqlCommand cmd = new SqlCommand(sel, connection);
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                connection.Open();
                cmd.ExecuteNonQuery();
                connection.Close();
                resultLbl.Text = "Rebuilding successful.";
            }
            catch (Exception exp)
            {
                resultLbl.Text = "Rebuilding failed.";
            }
        }

    }
}