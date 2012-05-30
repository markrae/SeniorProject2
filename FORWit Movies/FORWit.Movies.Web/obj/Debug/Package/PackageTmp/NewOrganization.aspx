
<%@ Page Title="New Organization" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="NewOrganization.aspx.cs" Inherits="NewOrganization" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    
      <%--<asp:Label ID="FirstLabel" runat="server" Text="First Name: "></asp:Label>
      <asp:TextBox ID="FirstBox" runat="server"></asp:TextBox>
    <p>
        
      <asp:Label ID="LastLabel" runat="server" Text="Last Name:  "></asp:Label>
      <asp:TextBox ID="LastBox" runat="server"></asp:TextBox>
    <p>
        
      <asp:Label ID="HereLabel" runat="server" Text="Here: "></asp:Label>
      <asp:CheckBox ID="HereBox" runat="server"></asp:CheckBox>
             
    <p>       
      <asp:Button ID="Button1" runat="server" Text="Create" onclick="Create" />
        
      <p>--%>       
          <asp:FormView ID="FormView1" runat="server" 
              DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" 
          BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
              
              <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
              <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
              <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
              <InsertItemTemplate>
                  Organization:
                  <asp:TextBox ID="OrgDescriptionBox" runat="server" Text='<%# Bind("OrgDescription") %>' />
                  <br />
                  <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                      CommandName="Insert" Text="Insert" />
                  &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                      CausesValidation="False" CommandName="Cancel" Text="Cancel" />
              </InsertItemTemplate>
              <ItemTemplate>                 

                  &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                      CommandName="New" Text="New Organization" />

              </ItemTemplate>
              <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
              <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
          </asp:FormView>


          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
              ConnectionString="<%$ ConnectionStrings:FORwitMovieConnectionString %>" 
              SelectCommand="SELECT * FROM [Organization]" 
          ConflictDetection="CompareAllValues" 
          DeleteCommand="DELETE FROM [Organization] WHERE [OrgID] = @original_OrgID AND [OrgDescription] = @original_OrgDescription" 
          InsertCommand="INSERT INTO [Organization] ([OrgDescription]) VALUES (@OrgDescription)" 
          OldValuesParameterFormatString="original_{0}" 
          
          UpdateCommand="UPDATE [Organization] SET [OrgDescription] = @OrgDescription WHERE [OrgID] = @original_OrgID AND [OrgDescription] = @original_OrgDescription">
              <DeleteParameters>
                  <asp:Parameter Name="original_OrgID" Type="Int32" />
                  <asp:Parameter Name="original_OrgDescription" Type="String" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="OrgDescription" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="OrgDescription" Type="String" />
                  <asp:Parameter Name="original_OrgID" Type="Int32" />
                  <asp:Parameter Name="original_OrgDescription" Type="String" />
              </UpdateParameters>
      </asp:SqlDataSource>

        
</asp:Content>
