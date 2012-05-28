using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Rentals : System.Web.UI.Page
{
    protected String Organ;
    protected const string COOKIE_ID = "Organ";
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            /*
            if (Request.Cookies[COOKIE_ID] != null)
            {
                HttpCookie orgCookie = Request.Cookies[COOKIE_ID];
                Organ = orgCookie.Value;
            }
            else
            {
                if (Organ != null)
                {
                    HttpCookie orgCookie = new HttpCookie(COOKIE_ID);
                    orgCookie.Value = Request.QueryString["Organ"];
                    orgCookie.Expires = DateTime.Now.AddDays(7);
                    Response.Cookies.Add(orgCookie);
                }
            }
             */

            Organ = Request.QueryString["Organ"];
            DataBind();
            if (Request.QueryString["Organ"] != null)
            {
               // if (Request.Cookies[COOKIE_ID] == null)
               // {

                //Remove Cookie
                if (Request.Cookies[COOKIE_ID] != null)
                {
                    HttpCookie myCookie = new HttpCookie(COOKIE_ID);
                    myCookie.Expires = DateTime.Now.AddDays(-1d);
                    Response.Cookies.Add(myCookie);
                    
                 }
                //Add Cookie
                
                    HttpCookie orgCookie = new HttpCookie(COOKIE_ID);
                    orgCookie.Value = Request.QueryString["Organ"];
                    orgCookie.Expires = DateTime.Now.AddDays(7);
                    Response.Cookies.Add(orgCookie);

                    
                 
                //}
            }

        }
        catch (Exception exp)
        {

        }

    }

    protected void Page_PreInit(object sender, EventArgs e)
    {
        try
        {
            /*
            if (Request.Cookies[COOKIE_ID] != null)
            {
                HttpCookie orgCookie = Request.Cookies[COOKIE_ID];
                Organ = orgCookie.Value;
            }
            else
            {
                if (Organ != null)
                {
                    HttpCookie orgCookie = new HttpCookie(COOKIE_ID);
                    orgCookie.Value = Request.QueryString["Organ"];
                    orgCookie.Expires = DateTime.Now.AddDays(7);
                    Response.Cookies.Add(orgCookie);
                }
            }
             */
            if (Request.Cookies[COOKIE_ID].Value != null)
            {
                switch (Request.Cookies[COOKIE_ID].Value)
                {
                    case "Western Oregon University":
                        Page.Theme = "WOU";
                        break;
                    case "Southern Oregon University":
                        Page.Theme = "SOU";
                        break;
                    case "Portland State University":
                        Page.Theme = "PSU";
                        break;
                    case "Oregon State University":
                        Page.Theme = "OSU";
                        break;
                    case null:
                        break;
                }
            }
        }
        catch (Exception exp)
        {

        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }


 
}
