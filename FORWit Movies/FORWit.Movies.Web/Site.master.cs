using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FORWit.Movies.Web;

public partial class SiteMaster : System.Web.UI.MasterPage
{
    protected const string COOKIE_ID = "Organ";

    protected void Page_Load(object sender, EventArgs e)
    {
        /*
         * Ignore this error.  It is a LIE.  A flithy LIE.  It really compiles.
         *      |
         *      |
         *      V
         */
        if (Request.Cookies[COOKIE_ID] != null)
        {
            //this.ti
            HttpCookie orgCookie = Request.Cookies[COOKIE_ID];
            titleLbl.Text = orgCookie.Value + " Movie Exchange";
        }
        //siteHeader.Attributes.Add("bgcolor", "red");
        //PageBody.Attributes.Add("bgcolor", "red");

        try
        {
            if (Request.Cookies[COOKIE_ID].Value != null)
            {
                Tuple<String, String> output = ColorDB.getColors(Request.Cookies[COOKIE_ID].Value);
                testingLabel.Text = output.Item1 + " " + output.Item2;
                PageBody.Attributes.Add("bgcolor", output.Item1);
                BackgroundPanel.Attributes.Add("BackColor", output.Item2);
            }
            
        }
        catch (Exception exp)
        {
            testingLabel.Text = exp.Message;
        }
    }

}
