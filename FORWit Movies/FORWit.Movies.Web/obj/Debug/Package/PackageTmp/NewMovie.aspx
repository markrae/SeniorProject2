<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="NewMovie.aspx.cs" Inherits="FORWit.Movies.Web.NewMovie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="TitleLabel" runat="server" AssociatedControlID="TitleBox" 
        Text="Movie Title"></asp:Label>
    <asp:TextBox ID="TitleBox" runat="server" Width="339px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TitleBox" ErrorMessage="Title is a required field."></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="DescLabel" runat="server" AssociatedControlID="DescBox" 
        Text="Movie Description"></asp:Label>
    <asp:TextBox ID="DescBox" runat="server" Width="363px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="DescBox" ErrorMessage="Description is a required field."></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="RatingDropDownLabel" runat="server" 
        AssociatedControlID="RatingDropDownList" Text="MPAA rating"></asp:Label>
    <asp:DropDownList ID="RatingDropDownList" runat="server" AutoPostBack="True">
        <asp:ListItem>G</asp:ListItem>
        <asp:ListItem>PG</asp:ListItem>
        <asp:ListItem>PG-13</asp:ListItem>
        <asp:ListItem>R</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Label ID="SpokenLangLable" runat="server" 
        AssociatedControlID="SpokenLangBox" 
        Text="Spoken Languages (separate by commas)"></asp:Label>
    <asp:TextBox ID="SpokenLangBox" runat="server">English,French,etc.</asp:TextBox>
    <br />
    <asp:Label ID="SubtitleLangLabel" runat="server" 
        AssociatedControlID="SubtitleLangBox" 
        Text="Subtitle Languages (separate by commas)"></asp:Label>
    <asp:TextBox ID="SubtitleLangBox" runat="server">English,French,etc.</asp:TextBox>
    <br />
    <asp:Label ID="LinkLabel" runat="server" AssociatedControlID="LinkBox" 
        Text="IMDB URL"></asp:Label>
    <asp:TextBox ID="LinkBox" runat="server">www.IMDB.com</asp:TextBox>
    <br />
    <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="AddNewMovie" />
</asp:Content>
