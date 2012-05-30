using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace FORWit.Movies.Web
{
    public partial class NewMovie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubtitleLangBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void AddNewMovie(object sender, EventArgs e)
        {
            ExecuteInsert(TitleBox.Text, DescBox.Text, RatingDropDownList.Text, SpokenLangBox.Text, SubtitleLangBox.Text, LinkBox.Text);
        }

        private void ExecuteInsert(string Title, string MovieDescription, string Rating, string SpokenLangs, string SubLangs, string IMDBLink)
        {
            SqlConnection conn = new SqlConnection(GetConnectionString());
            string sql = "INSERT INTO Movie (Title,MovieDescription,Rating,SpokenLangs,SubLangs,IMDBLink) VALUES "
                        + " (@Title,@MovieDescription,@Rating,@SpokenLangs,@SubLangs,@IMDBLink)";
            //try
            //{
                conn.Open();
                SqlCommand cmd = new SqlCommand(sql, conn);
                SqlParameter[] param = new SqlParameter[6];
                param[0] = new SqlParameter("@Title", SqlDbType.VarChar, 50);
                param[1] = new SqlParameter("@MovieDescription", SqlDbType.VarChar, 50);
                param[2] = new SqlParameter("@Rating", SqlDbType.VarChar, 50);
                param[3] = new SqlParameter("@SpokenLangs", SqlDbType.VarChar, 50);
                param[4] = new SqlParameter("@SubLangs", SqlDbType.VarChar, 50);
                param[5] = new SqlParameter("@IMDBLink", SqlDbType.VarChar, 50);

                param[0].Value = Title;
                param[1].Value = MovieDescription;
                param[2].Value = Rating;
                param[3].Value = SpokenLangs;
                param[4].Value = SubLangs;
                param[5].Value = IMDBLink;

                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery(); //Failing on this line.
            //}
            /*catch (System.Data.SqlClient.SqlException ex)
            {
                Response.Write("SQL Fail.");
            }*/
            //finally
            //{
                conn.Close();
            //}
        }

        public string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["FORwitMovieConnectionString"].ConnectionString;
        }
    }
}