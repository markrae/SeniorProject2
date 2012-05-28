<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Rentals.aspx.cs" Inherits="_Rentals" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 21px;
        }
    </style>
    </asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <asp:Label ID="Label1" runat="server" Text="<%# Organ %>"></asp:Label>
    <table style="width: 650px" border="0" cellpadding="0" cellspacing="1"
class="GridviewTable">
<tr>
    
    <td>
        Club
    </td>
    <td>
        Last
    </td>
    <td>
        First
    </td>
    <td>
        Here
    </td>
    <td>
        Title
    </td>
    <td>
        Rating
    </td>
    <td>
        Spoken
    </td>
    <td>
        Sub
    </td>
    <td>
        Length
    </td>
</tr>
<tr>   
    <td style="width: 25px;">
        <asp:DropDownList ID="DropDownList1" DataSourceID="SqlDataSource1"
            AutoPostBack="true" DataValueField="ClubDescription" runat="server" Width="75px"
            Font-Size="11px" AppendDataBoundItems="true">
            <asp:ListItem Text="All" Value="%"></asp:ListItem>
        </asp:DropDownList>
    </td>
    <td style="width: 25px;">
        <asp:DropDownList ID="DropDownList2" DataSourceID="SqlDataSource1"
            AutoPostBack="true" DataValueField="LName" runat="server" Width="75px"
            Font-Size="11px" AppendDataBoundItems="true">
            <asp:ListItem Text="All" Value="%"></asp:ListItem>
        </asp:DropDownList>
    </td>
    <td style="width: 25px;">
        <asp:DropDownList ID="DropDownList3" DataSourceID="SqlDataSource1"
            AutoPostBack="true" DataValueField="FName" runat="server" Width="75px"
            Font-Size="11px" AppendDataBoundItems="true">
            <asp:ListItem Text="All" Value="%"></asp:ListItem>
        </asp:DropDownList>
    </td>
    <td class="style1">
    </td>
    <td style="width: 25px;">
        <asp:DropDownList ID="DropDownList4" DataSourceID="SqlDataSource1"
            AutoPostBack="true" DataValueField="Title" runat="server" Width="75px"
            Font-Size="11px" AppendDataBoundItems="true">
            <asp:ListItem Text="All" Value="%"></asp:ListItem>
        </asp:DropDownList>
    </td>
    <td style="width: 25px;">
        <asp:DropDownList ID="DropDownList5" DataSourceID="SqlDataSource1"
            AutoPostBack="true" DataValueField="Rating" runat="server" Width="75px"
            Font-Size="11px" AppendDataBoundItems="true">
            <asp:ListItem Text="All" Value="%"></asp:ListItem>
        </asp:DropDownList>
    </td>
    <td style="width: 25px;">
        <asp:DropDownList ID="DropDownList6" DataSourceID="SqlDataSource1"
            AutoPostBack="true" DataValueField="SpokenLangs" runat="server" Width="75px"
            Font-Size="11px" AppendDataBoundItems="true">
            <asp:ListItem Text="All" Value="%"></asp:ListItem>
        </asp:DropDownList>
    </td>
    <td style="width: 25px;">
        <asp:DropDownList ID="DropDownList7" DataSourceID="SqlDataSource1"
            AutoPostBack="true" DataValueField="SubLangs" runat="server" Width="75px"
            Font-Size="11px" AppendDataBoundItems="true">
            <asp:ListItem Text="All" Value="%"></asp:ListItem>
        </asp:DropDownList>
    </td>
    <td style="width: 25px;">
        <asp:DropDownList ID="DropDownList8" DataSourceID="SqlDataSource1"
            AutoPostBack="true" DataValueField="MovieLength" runat="server" Width="75px"
            Font-Size="11px" AppendDataBoundItems="true">
            <asp:ListItem Text="All" Value="%"></asp:ListItem>
        </asp:DropDownList>
    </td>
</tr>
<tr>
    <td colspan="10">
    <asp:GridView ID="GridView1" runat="server" Height="15px" Width="725px" 
        AllowPaging="True" AutoGenerateColumns="False" BackColor="White" 
        BorderColor="#3366CC" BorderStyle="Groove" BorderWidth="1px" CellPadding="3" 
        DataKeyNames="OrgID,ClubID,Expr3,Expr5" DataSourceID="SqlDataSource1" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" 
        style="text-align: left" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="ClubDescription" ItemStyle-Width="65px" ItemStyle-BorderStyle="Ridge"
                SortExpression="ClubDescription" >
<ItemStyle BorderStyle="Ridge" Width="65px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="LName"  ItemStyle-Width="45px" ItemStyle-BorderStyle="Ridge" 
                SortExpression="LName" >
<ItemStyle BorderStyle="Ridge" Width="45px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="FName"  ItemStyle-Width="60px" ItemStyle-BorderStyle="Ridge"
                SortExpression="FName" >
<ItemStyle BorderStyle="Ridge" Width="60px"></ItemStyle>
            </asp:BoundField>
            <asp:CheckBoxField DataField="Here" ItemStyle-Width="5px" ItemStyle-BorderStyle="Ridge"
                SortExpression="Here" >
<ItemStyle BorderStyle="Ridge" Width="5px"></ItemStyle>
            </asp:CheckBoxField>
            <asp:BoundField DataField="Title"  ItemStyle-Width="65px" ItemStyle-BorderStyle="Ridge"
                SortExpression="Title" >
<ItemStyle BorderStyle="Ridge" Width="65px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="Rating" ItemStyle-Width="65px" ItemStyle-BorderStyle="Ridge"
                SortExpression="Rating" >
<ItemStyle BorderStyle="Ridge" Width="65px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="SpokenLangs"  ItemStyle-Width="65px" ItemStyle-BorderStyle="Ridge"
                SortExpression="SpokenLangs" >
<ItemStyle BorderStyle="Ridge" Width="65px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="SubLangs" ItemStyle-Width="65px" ItemStyle-BorderStyle="Ridge"
                SortExpression="SubLangs" >
<ItemStyle BorderStyle="Ridge" Width="65px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="MovieLength" ItemStyle-Width="55px" ItemStyle-BorderStyle="Ridge"
                SortExpression="MovieLength" >
<ItemStyle BorderStyle="Ridge" Width="55px"></ItemStyle>
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
   
</td>
</tr>
</table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FORwitMovieConnectionString %>" 
        SelectCommand="SELECT DISTINCT Organization.OrgID, Organization.OrgDescription, Club.ClubID, Club.OrgID AS Expr1, Club.ClubDescription, Membership.MemberID, 
        Membership.ClubID AS Expr2, Member.MemberID AS Expr3, Member.LName, Member.FName, Member.Here, MovieCollection.MemberID AS Expr4, MovieCollection.MovieID,
         Movie.MovieID AS Expr5, Movie.Title, Movie.MovieDescription, Movie.Rating, Movie.SpokenLangs, Movie.SubLangs, Movie.IMDBLink, Movie.MovieLength, Movie.LastViewed 
         FROM Organization INNER JOIN Club ON Organization.OrgID = Club.OrgID INNER JOIN Membership ON Club.ClubID = Membership.ClubID INNER JOIN Member ON Membership.MemberID = Member.MemberID 
         INNER JOIN MovieCollection ON Member.MemberID = MovieCollection.MemberID INNER JOIN Movie ON MovieCollection.MovieID = Movie.MovieID"
        FilterExpression="OrgDescription like '{0}%' and ClubDescription like '{1}%' and LName like '{2}%' and FName like '{3}%' and Title like '{4}%' and Rating like '{5}%'
        and SpokenLangs like '{6}%' and SubLangs like '{7}%' and MovieLength like '{8}%'"
        ConflictDetection="CompareAllValues" 
        DeleteCommand="DELETE FROM [Movie] WHERE [MovieID] = @original_MovieID AND [Title] = @original_Title AND (([MovieDescription] = @original_MovieDescription) OR ([MovieDescription] IS NULL 
        AND @original_MovieDescription IS NULL)) AND (([Rating] = @original_Rating) OR ([Rating] IS NULL AND @original_Rating IS NULL)) AND (([SpokenLangs] = @original_SpokenLangs) OR ([SpokenLangs] IS NULL 
        AND @original_SpokenLangs IS NULL)) AND (([SubLangs] = @original_SubLangs) OR ([SubLangs] IS NULL AND @original_SubLangs IS NULL)) AND (([IMDBLink] = @original_IMDBLink) OR ([IMDBLink] IS NULL 
        AND @original_IMDBLink IS NULL))" 
        InsertCommand="INSERT INTO [Movie] ([MovieID], [Title], [MovieDescription], [Rating], [SpokenLangs], [SubLangs], [IMDBLink]) VALUES (@MovieID, @Title, @MovieDescription, @Rating, 
        @SpokenLangs, @SubLangs, @IMDBLink)" 
        OldValuesParameterFormatString="original_{0}" 
    
        UpdateCommand="UPDATE [Movie] SET [Title] = @Title, [MovieDescription] = @MovieDescription, [Rating] = @Rating, [SpokenLangs] = @SpokenLangs, [SubLangs] = @SubLangs, [IMDBLink] = @IMDBLink 
        WHERE [MovieID] = @original_MovieID AND [Title] = @original_Title AND (([MovieDescription] = @original_MovieDescription) OR ([MovieDescription] IS NULL AND @original_MovieDescription IS NULL)) 
        AND (([Rating] = @original_Rating) OR ([Rating] IS NULL AND @original_Rating IS NULL)) AND (([SpokenLangs] = @original_SpokenLangs) OR ([SpokenLangs] IS NULL AND @original_SpokenLangs IS NULL)) 
        AND (([SubLangs] = @original_SubLangs) OR ([SubLangs] IS NULL AND @original_SubLangs IS NULL)) AND (([IMDBLink] = @original_IMDBLink) OR ([IMDBLink] IS NULL AND @original_IMDBLink IS NULL))">

        <FilterParameters>
             <asp:ControlParameter Name="DropDownList0" ControlID="Label1"
                PropertyName="Text" />
             <asp:ControlParameter Name="DropDownList1" ControlID="DropDownList1"
                PropertyName="SelectedValue" />
             <asp:ControlParameter Name="DropDownList2" ControlID="DropDownList2"
                PropertyName="SelectedValue" />
             <asp:ControlParameter Name="DropDownList3" ControlID="DropDownList3"
                PropertyName="SelectedValue" />
             <asp:ControlParameter Name="DropDownList4" ControlID="DropDownList4"
                PropertyName="SelectedValue" />
             <asp:ControlParameter Name="DropDownList5" ControlID="DropDownList5"
                PropertyName="SelectedValue" />
             <asp:ControlParameter Name="DropDownList6" ControlID="DropDownList6"
                PropertyName="SelectedValue" />
             <asp:ControlParameter Name="DropDownList7" ControlID="DropDownList7"
                PropertyName="SelectedValue" />
             <asp:ControlParameter Name="DropDownList8" ControlID="DropDownList8"
                PropertyName="SelectedValue" />
        </FilterParameters>

        <DeleteParameters>
            <asp:Parameter Name="original_MovieID" Type="String" />
            <asp:Parameter Name="original_Title" Type="String" />
            <asp:Parameter Name="original_MovieDescription" Type="String" />
            <asp:Parameter Name="original_Rating" Type="String" />
            <asp:Parameter Name="original_SpokenLangs" Type="String" />
            <asp:Parameter Name="original_SubLangs" Type="String" />
            <asp:Parameter Name="original_IMDBLink" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MovieID" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="MovieDescription" Type="String" />
            <asp:Parameter Name="Rating" Type="String" />
            <asp:Parameter Name="SpokenLangs" Type="String" />
            <asp:Parameter Name="SubLangs" Type="String" />
            <asp:Parameter Name="IMDBLink" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="MovieDescription" Type="String" />
            <asp:Parameter Name="Rating" Type="String" />
            <asp:Parameter Name="SpokenLangs" Type="String" />
            <asp:Parameter Name="SubLangs" Type="String" />
            <asp:Parameter Name="IMDBLink" Type="String" />
            <asp:Parameter Name="original_MovieID" Type="String" />
            <asp:Parameter Name="original_Title" Type="String" />
            <asp:Parameter Name="original_MovieDescription" Type="String" />
            <asp:Parameter Name="original_Rating" Type="String" />
            <asp:Parameter Name="original_SpokenLangs" Type="String" />
            <asp:Parameter Name="original_SubLangs" Type="String" />
            <asp:Parameter Name="original_IMDBLink" Type="String" />
        </UpdateParameters>
</asp:SqlDataSource>
    <p>
        <asp:Image ID="Image1" runat="server" ImageAlign="Right"  />
        <asp:Label ID="Label2" runat="server"></asp:Label>
        <br />
</p>
</asp:Content>
