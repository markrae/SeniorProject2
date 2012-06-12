<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Club.aspx.cs" Inherits="FORWit.Movies.Web.Club" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="OrgDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FORwitMovieConnectionString %>" 
        SelectCommand="SELECT * FROM [Organization]"></asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ClubID" 
        DataSourceID="ClubDataSource">
        <EditItemTemplate>
            ClubID:
            <asp:Label ID="ClubIDLabel1" runat="server" Text='<%# Eval("ClubID") %>' />
            <br />
            OrgID:
            <asp:TextBox ID="OrgIDTextBox" runat="server" Text='<%# Bind("OrgID") %>' />
            <br />
            ClubDescription:
            <asp:TextBox ID="ClubDescriptionTextBox" runat="server" 
                Text='<%# Bind("ClubDescription") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            OrgID:
            <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="OrgDataSource" DataTextField="OrgDescription" 
                DataValueField="OrgID" SelectedValue='<%# Bind("OrgID") %>'>
            </asp:DropDownList>
            <br />
            ClubDescription:
            <asp:TextBox ID="ClubDescriptionTextBox" runat="server" 
                Text='<%# Bind("ClubDescription") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" 
                CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            ClubID:
            <asp:Label ID="ClubIDLabel" runat="server" Text='<%# Eval("ClubID") %>' />
            <br />
            OrgID:
            <asp:Label ID="OrgIDLabel" runat="server" Text='<%# Bind("OrgID") %>' />
            <br />
            ClubDescription:
            <asp:Label ID="ClubDescriptionLabel" runat="server" 
                Text='<%# Bind("ClubDescription") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="ClubDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FORwitMovieConnectionString %>" 
        DeleteCommand="DELETE FROM [Club] WHERE [ClubID] = @ClubID" 
        InsertCommand="INSERT INTO [Club] ([OrgID], [ClubDescription]) VALUES (@OrgID, @ClubDescription)" 
        SelectCommand="SELECT * FROM [Club]" 
        UpdateCommand="UPDATE [Club] SET [OrgID] = @OrgID, [ClubDescription] = @ClubDescription WHERE [ClubID] = @ClubID">
        <DeleteParameters>
            <asp:Parameter Name="ClubID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="OrgID" Type="String" />
            <asp:Parameter Name="ClubDescription" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="OrgID" Type="String" />
            <asp:Parameter Name="ClubDescription" Type="String" />
            <asp:Parameter Name="ClubID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
