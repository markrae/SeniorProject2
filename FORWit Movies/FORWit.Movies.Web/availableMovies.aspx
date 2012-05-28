<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="availableMovies.aspx.cs" Inherits="FORWit.Movies.Web.availableMovies" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        DataSourceID="SqlDataSource1" DataTextField="OrgDescription" 
        DataValueField="OrgID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FORwitMovieConnectionString %>" 
        SelectCommand="SELECT DISTINCT OrgID, OrgDescription FROM Organization"></asp:SqlDataSource>
    <br />
    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
        DataSourceID="SqlDataSource2" DataTextField="ClubDescription" 
        DataValueField="ClubID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FORwitMovieConnectionString %>" 
        SelectCommand="SELECT * FROM [Club] WHERE ([OrgID] = @OrgID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="OrgID" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource3">
        <AlternatingItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="LNameLabel" runat="server" Text='<%# Eval("LName") %>' />
                </td>
                <td>
                    <asp:Label ID="FNameLabel" runat="server" Text='<%# Eval("FName") %>' />
                </td>
                <td>
                    <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                </td>
                <td>
                    <asp:Label ID="MovieDescriptionLabel" runat="server" 
                        Text='<%# Eval("MovieDescription") %>' />
                </td>
                <td>
                    <asp:Label ID="RatingLabel" runat="server" Text='<%# Eval("Rating") %>' />
                </td>
                <td>
                    <asp:Label ID="SpokenLangsLabel" runat="server" 
                        Text='<%# Eval("SpokenLangs") %>' />
                </td>
                <td>
                    <asp:Label ID="SubLangsLabel" runat="server" Text='<%# Eval("SubLangs") %>' />
                </td>
                <td>
                    <asp:Label ID="IMDBLinkLabel" runat="server" Text='<%# Eval("IMDBLink") %>' />
                </td>
                <td>
                    <asp:Label ID="MovieLengthLabel" runat="server" 
                        Text='<%# Eval("MovieLength") %>' />
                </td>
                <td>
                    <asp:Label ID="LastViewedLabel" runat="server" 
                        Text='<%# Eval("LastViewed") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancel" />
                </td>
                <td>
                    <asp:TextBox ID="LNameTextBox" runat="server" Text='<%# Bind("LName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="FNameTextBox" runat="server" Text='<%# Bind("FName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                </td>
                <td>
                    <asp:TextBox ID="MovieDescriptionTextBox" runat="server" 
                        Text='<%# Bind("MovieDescription") %>' />
                </td>
                <td>
                    <asp:TextBox ID="RatingTextBox" runat="server" Text='<%# Bind("Rating") %>' />
                </td>
                <td>
                    <asp:TextBox ID="SpokenLangsTextBox" runat="server" 
                        Text='<%# Bind("SpokenLangs") %>' />
                </td>
                <td>
                    <asp:TextBox ID="SubLangsTextBox" runat="server" 
                        Text='<%# Bind("SubLangs") %>' />
                </td>
                <td>
                    <asp:TextBox ID="IMDBLinkTextBox" runat="server" 
                        Text='<%# Bind("IMDBLink") %>' />
                </td>
                <td>
                    <asp:TextBox ID="MovieLengthTextBox" runat="server" 
                        Text='<%# Bind("MovieLength") %>' />
                </td>
                <td>
                    <asp:TextBox ID="LastViewedTextBox" runat="server" 
                        Text='<%# Bind("LastViewed") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>
                        No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                        Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Clear" />
                </td>
                <td>
                    <asp:TextBox ID="LNameTextBox" runat="server" Text='<%# Bind("LName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="FNameTextBox" runat="server" Text='<%# Bind("FName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                </td>
                <td>
                    <asp:TextBox ID="MovieDescriptionTextBox" runat="server" 
                        Text='<%# Bind("MovieDescription") %>' />
                </td>
                <td>
                    <asp:TextBox ID="RatingTextBox" runat="server" Text='<%# Bind("Rating") %>' />
                </td>
                <td>
                    <asp:TextBox ID="SpokenLangsTextBox" runat="server" 
                        Text='<%# Bind("SpokenLangs") %>' />
                </td>
                <td>
                    <asp:TextBox ID="SubLangsTextBox" runat="server" 
                        Text='<%# Bind("SubLangs") %>' />
                </td>
                <td>
                    <asp:TextBox ID="IMDBLinkTextBox" runat="server" 
                        Text='<%# Bind("IMDBLink") %>' />
                </td>
                <td>
                    <asp:TextBox ID="MovieLengthTextBox" runat="server" 
                        Text='<%# Bind("MovieLength") %>' />
                </td>
                <td>
                    <asp:TextBox ID="LastViewedTextBox" runat="server" 
                        Text='<%# Bind("LastViewed") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="LNameLabel" runat="server" Text='<%# Eval("LName") %>' />
                </td>
                <td>
                    <asp:Label ID="FNameLabel" runat="server" Text='<%# Eval("FName") %>' />
                </td>
                <td>
                    <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                </td>
                <td>
                    <asp:Label ID="MovieDescriptionLabel" runat="server" 
                        Text='<%# Eval("MovieDescription") %>' />
                </td>
                <td>
                    <asp:Label ID="RatingLabel" runat="server" Text='<%# Eval("Rating") %>' />
                </td>
                <td>
                    <asp:Label ID="SpokenLangsLabel" runat="server" 
                        Text='<%# Eval("SpokenLangs") %>' />
                </td>
                <td>
                    <asp:Label ID="SubLangsLabel" runat="server" Text='<%# Eval("SubLangs") %>' />
                </td>
                <td>
                    <asp:Label ID="IMDBLinkLabel" runat="server" Text='<%# Eval("IMDBLink") %>' />
                </td>
                <td>
                    <asp:Label ID="MovieLengthLabel" runat="server" 
                        Text='<%# Eval("MovieLength") %>' />
                </td>
                <td>
                    <asp:Label ID="LastViewedLabel" runat="server" 
                        Text='<%# Eval("LastViewed") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                                <th runat="server">
                                    LName</th>
                                <th runat="server">
                                    FName</th>
                                <th runat="server">
                                    Title</th>
                                <th runat="server">
                                    MovieDescription</th>
                                <th runat="server">
                                    Rating</th>
                                <th runat="server">
                                    SpokenLangs</th>
                                <th runat="server">
                                    SubLangs</th>
                                <th runat="server">
                                    IMDBLink</th>
                                <th runat="server">
                                    MovieLength</th>
                                <th runat="server">
                                    LastViewed</th>
                            </tr>
                            <tr ID="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                    ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="LNameLabel" runat="server" Text='<%# Eval("LName") %>' />
                </td>
                <td>
                    <asp:Label ID="FNameLabel" runat="server" Text='<%# Eval("FName") %>' />
                </td>
                <td>
                    <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                </td>
                <td>
                    <asp:Label ID="MovieDescriptionLabel" runat="server" 
                        Text='<%# Eval("MovieDescription") %>' />
                </td>
                <td>
                    <asp:Label ID="RatingLabel" runat="server" Text='<%# Eval("Rating") %>' />
                </td>
                <td>
                    <asp:Label ID="SpokenLangsLabel" runat="server" 
                        Text='<%# Eval("SpokenLangs") %>' />
                </td>
                <td>
                    <asp:Label ID="SubLangsLabel" runat="server" Text='<%# Eval("SubLangs") %>' />
                </td>
                <td>
                    <asp:Label ID="IMDBLinkLabel" runat="server" Text='<%# Eval("IMDBLink") %>' />
                </td>
                <td>
                    <asp:Label ID="MovieLengthLabel" runat="server" 
                        Text='<%# Eval("MovieLength") %>' />
                </td>
                <td>
                    <asp:Label ID="LastViewedLabel" runat="server" 
                        Text='<%# Eval("LastViewed") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FORwitMovieConnectionString %>" 
        SelectCommand="usp_returnCollection" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="OrgID" 
                PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="DropDownList2" Name="ClubID" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
