<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="membership.aspx.cs" Inherits="FORWit.Movies.Web.membership" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="MemberDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FORwitMovieConnectionString %>" 
        SelectCommand="SELECT * FROM [Member]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="ClubDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FORwitMovieConnectionString %>" 
        SelectCommand="SELECT * FROM [Club]"></asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataSourceID="MembershipDataSource">
        <EditItemTemplate>
            MemberID:
            <asp:TextBox ID="MemberIDTextBox" runat="server" 
                Text='<%# Bind("MemberID") %>' />
            <br />
            ClubID:
            <asp:TextBox ID="ClubIDTextBox" runat="server" Text='<%# Bind("ClubID") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            MemberID:
            <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="MemberDataSource" DataTextField="LName" DataValueField="MemberID" 
                SelectedValue='<%# Bind("MemberID") %>'>
            </asp:DropDownList>
            <br />
            ClubID:
            <asp:DropDownList ID="DropDownList2" runat="server" 
                DataSourceID="ClubDataSource" DataTextField="ClubDescription" 
                DataValueField="ClubID" SelectedValue='<%# Bind("ClubID") %>'>
            </asp:DropDownList>
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" 
                CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            MemberID:
            <asp:Label ID="MemberIDLabel" runat="server" Text='<%# Bind("MemberID") %>' />
            <br />
            ClubID:
            <asp:Label ID="ClubIDLabel" runat="server" Text='<%# Bind("ClubID") %>' />
            <br />
            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="MembershipDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FORwitMovieConnectionString %>" 
        InsertCommand="usp_insertMembership" InsertCommandType="StoredProcedure" 
        SelectCommand="select * from Membership">
        <InsertParameters>
            <asp:Parameter Name="MemberID" Type="Int32" />
            <asp:Parameter Name="ClubID" Type="Int32" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>
