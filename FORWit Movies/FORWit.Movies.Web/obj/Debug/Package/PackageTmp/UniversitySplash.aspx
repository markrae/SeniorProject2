<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeBehind="UniversitySplash.aspx.cs"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/NewOrganization.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        String Organization = DropDownList1.Text;
        try
        {
            //Remove Cookie
            if (Request.Cookies["Organ"] != null)
            {
                HttpCookie myCookie = new HttpCookie("Organ");
                myCookie.Expires = DateTime.Now.AddDays(-1d);
                Response.Cookies.Add(myCookie);
                base.OnPreLoad(e);
            }
            //Add Cookie

            HttpCookie orgCookie = new HttpCookie("Organ");
            orgCookie.Value = Organization;
            orgCookie.Expires = DateTime.Now.AddDays(7);
            Response.Cookies.Add(orgCookie);
        }
        catch (Exception exp)
        {

        }
        Response.Redirect("~/Rentals.aspx?Organ=" + Organization);
    }

</script>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head id="Head1" runat="server">
    <title></title>
    <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="Form1" runat="server">
    <div class="page">
        <div class="header">
            <div class="title">
                <h1>
                    The University Movie Exchange
                </h1>
            </div>
            <div class="loginDisplay">
            </div>
            <div class="clear hideSkiplink">
            </div>
        </div>
        <div class="main">
            <br />
            <br />
            <br />
            <br />
            <br />
            <div style="margin: 0 auto; width: 300px;" >
                <asp:Panel ID="Panel2" runat="server" Height="120px" Width="269px" 
                    BorderWidth="20px">

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" 
                        Font-Underline="True" Text="Select or create a school:" Width="156px"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


                    <asp:DropDownList ID="DropDownList1" runat="server" 
                         DataSourceID="SqlDataSource1" DataTextField="OrgDescription" 
                         DataValueField="OrgDescription">
                    </asp:DropDownList>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <asp:Button ID="Button2" runat="server" Text="Submit" onclick="Button2_Click" 
                        style="height: 26px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Create" onclick="Button1_Click" />

                </asp:Panel>
            </div>

            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:FORwitMovieConnectionString %>" 
                SelectCommand="SELECT DISTINCT [OrgDescription] FROM [Organization]"></asp:SqlDataSource>
            <br />
            <br />

            
        </div>
        <div class="clear">
        </div>
    </div>
    <div class="footer">
        
    </div>
    </form>
</body>
</html>
