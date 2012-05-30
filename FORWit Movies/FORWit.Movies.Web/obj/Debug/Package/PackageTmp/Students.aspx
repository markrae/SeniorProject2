<%@ Page Title="Students" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Students.aspx.cs" Inherits="Students" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Students
    </h2>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MemberID" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="LName" HeaderText="LName" SortExpression="LName" />
                <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
                <asp:CheckBoxField DataField="Here" HeaderText="Here" SortExpression="Here" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:FORwitMovieConnectionString %>" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [Member]">
        </asp:SqlDataSource>
    </p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
</asp:Content>
