<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Stats.aspx.cs" Inherits="FORWit.Movies.Web.Stats" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    Movies owned by the most people<br />
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Number of copies" HeaderText="Number of copies" 
                ReadOnly="True" SortExpression="Number of copies" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FORwitMovieConnectionString %>" SelectCommand="SELECT TOP 5 Movie.Title,COUNT(MovieCollection.MemberID) as [Number of copies]
FROM MovieCollection,Movie
WHERE MovieCollection.MovieID = Movie.MovieID
GROUP BY Movie.Title
ORDER BY [Number of copies] DESC"></asp:SqlDataSource>
    <br />
    Movies owned by the fewest people<br />
    <asp:GridView ID="GridView2" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Number of copies" HeaderText="Number of copies" 
                ReadOnly="True" SortExpression="Number of copies" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FORwitMovieConnectionString %>" SelectCommand="SELECT Movie.Title,COUNT(MovieCollection.MemberID) as [Number of copies]
FROM MovieCollection,Movie
WHERE MovieCollection.MovieID = Movie.MovieID
GROUP BY Movie.Title
ORDER BY [Number of copies] ASC"></asp:SqlDataSource>
    <br />
    Pick a movie and see who owns it<br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" onclick="PickMovieClick" 
        Text="Submit" />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
    </asp:Content>
