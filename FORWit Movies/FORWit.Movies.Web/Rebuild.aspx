<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Rebuild.aspx.cs" Inherits="FORWit.Movies.Web.Rebuild" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Rebuild"></asp:Label><br />
    <asp:Button ID="rebuildBtn" runat="server" Text="Continue" 
        onclick="rebuildBtn_Click"  /><br />
    <asp:Label ID="resultLbl" runat="server" Text=""></asp:Label>
    <br />
</asp:Content>
