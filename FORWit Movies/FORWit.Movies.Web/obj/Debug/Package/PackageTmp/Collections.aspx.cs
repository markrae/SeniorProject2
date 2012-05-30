using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FORWit.Movies.Web
{
    public partial class Collections : System.Web.UI.Page
    {
        protected void Page_Load(object sender,EventArgs e)
        {

        }
        protected void ClickAdd(object sender, EventArgs e)
        {
            //GridViewSelectEventArgs
            //get the movies that are selected in the all-movie list
            
            //insert them into the collection for the member selected
        }
        protected void ClickRemove(object sender, EventArgs e)
        {
            //get the movies that are selected in the collection
            //remove them from the collection
        }

        protected void deleteRow(object sender, GridViewDeleteEventArgs e)
        {
            

        }
        protected void GridView2_SelectIndexChanged(object sender, GridViewSelectEventArgs e)
        {
            //e.NewSelectedIndex.
        }

    }
}