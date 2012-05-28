<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Collections.aspx.cs" Inherits="FORWit.Movies.Web.Collections" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    Please select these in order<br />
<asp:Label ID="OrgLabel" runat="server" AssociatedControlID="OrgDDL" 
    Text="Organization/School"></asp:Label>
<asp:DropDownList ID="OrgDDL" runat="server" DataSourceID="OrgDataSource" 
    DataTextField="OrgDescription" DataValueField="OrgDescription" 
        AutoPostBack="True">
</asp:DropDownList>
<asp:SqlDataSource ID="OrgDataSource" runat="server" 
    ConnectionString="<%$ ConnectionStrings:FORwitMovieConnectionString %>" 
    SelectCommand="SELECT * FROM [Organization]">
</asp:SqlDataSource>
<asp:Label ID="ClubLabel" runat="server" Text="Club"></asp:Label>
<asp:DropDownList ID="ClubDDL" runat="server" DataSourceID="ClubDataSource" 
    DataTextField="ClubDescription" DataValueField="ClubDescription" 
        AutoPostBack="True">
</asp:DropDownList>
<asp:SqlDataSource ID="ClubDataSource" runat="server" 
    ConnectionString="<%$ ConnectionStrings:FORwitMovieConnectionString %>" 
    SelectCommand="SELECT * FROM Club,Organization WHERE Club.OrgID = Organization.OrgID AND Organization.OrgDescription = @OrgID">
    <SelectParameters>
        <asp:ControlParameter ControlID="OrgDDL" Name="OrgID" 
            PropertyName="SelectedValue" Type="String" DefaultValue="1" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:Label ID="Label1" runat="server" Text="Member Name"></asp:Label>
<asp:DropDownList ID="MemberDDL" runat="server" 
    DataSourceID="MemberDataSource" DataTextField="LName" DataValueField="LName" 
        AutoPostBack="True">
</asp:DropDownList>
<asp:SqlDataSource ID="MemberDataSource" runat="server" 
    ConnectionString="<%$ ConnectionStrings:FORwitMovieConnectionString %>" 
    SelectCommand="SELECT LName, FName FROM Member,Membership,Club WHERE Membership.MemberID = Member.MemberID AND Club.ClubID = Membership.ClubID AND Club.ClubDescription = @ClubDesc">
    <SelectParameters>
        <asp:ControlParameter ControlID="ClubDDL" Name="ClubDesc" 
            PropertyName="SelectedValue" Type="String" DefaultValue="1" />
    </SelectParameters>
</asp:SqlDataSource>
<br />
    Movies you own&nbsp;&nbsp;<asp:GridView ID="MovieGridView1" 
        runat="server" AutoGenerateColumns="False" DataKeyNames="MovieID" 
        DataSourceID="MovieDataSource1" onrowdeleting="deleteRow">
        <Columns>
            <asp:CommandField ButtonType="Button" DeleteText="Remove" 
                ShowDeleteButton="True" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="MovieDescription" HeaderText="MovieDescription" 
                SortExpression="MovieDescription" />
            <asp:BoundField DataField="Rating" HeaderText="Rating" 
                SortExpression="Rating" />
        </Columns>
    </asp:GridView>
    &nbsp;<asp:SqlDataSource ID="MovieDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FORwitMovieConnectionString %>" 
        
        
        SelectCommand="SELECT * FROM Movie,MovieCollection,Member WHERE MovieCollection.MovieID = Movie.MovieID AND MovieCollection.MemberID = Member.MemberID AND Member.LName = @MemberName" 
        DeleteCommand="DELETE FROM MovieCollection,Member WHERE MovieCollection.MemberID = Member.MemberID AND MovieID = @SelectedMovieID">
        <DeleteParameters>
            <asp:ControlParameter ControlID="MemberDDL" Name="MemberID" 
                PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="MovieGridView1" Name="SelectedMovieID" 
                PropertyName="SelectedValue" />
        </DeleteParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="MemberDDL" Name="MemberName" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    All Movies in the database<asp:GridView ID="MovieGridView2" runat="server" 
        AutoGenerateColumns="False" DataSourceID="MovieDataSource2" 
        onselectedindexchanged="ClickAdd">
        <Columns>
            <asp:CommandField ButtonType="Button" SelectText="Add" 
                ShowSelectButton="True" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="MovieDescription" HeaderText="MovieDescription" 
                SortExpression="MovieDescription" />
            <asp:BoundField DataField="Rating" HeaderText="Rating" 
                SortExpression="Rating" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="MovieDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FORwitMovieConnectionString %>" 
        SelectCommand="SELECT [Title], [MovieDescription], [Rating] FROM [Movie]" 
        InsertCommand="INSERT INTO MovieCollection (MovieID,MemberID)
VALUES (@MovieID,@MemberID)">
        <InsertParameters>
            <asp:Parameter Name="MovieID"/>
            <asp:Parameter Name="MemberID" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>
