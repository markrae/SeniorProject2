
<%@ Page Title="New Student" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="NewStudent.aspx.cs" Inherits="NewStudent" %>

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
          <asp:FormView ID="FormView1" runat="server" DataKeyNames="MemberID" 
              DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" 
          BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
              
              <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
              <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
              <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
              <InsertItemTemplate>
                  LName:
                  <asp:TextBox ID="LNameTextBox" runat="server" Text='<%# Bind("LName") %>' />
                  <br />
                  FName:
                  <asp:TextBox ID="FNameTextBox" runat="server" Text='<%# Bind("FName") %>' />
                  <br />
                  Here:
                  <asp:CheckBox ID="HereCheckBox" runat="server" Checked='<%# Bind("Here") %>' />
                  <br />
                  <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                      CommandName="Insert" Text="Insert" />
                  &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                      CausesValidation="False" CommandName="Cancel" Text="Cancel" />
              </InsertItemTemplate>
              <ItemTemplate>                 

                  &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                      CommandName="New" Text="Create Student" />

              </ItemTemplate>
              <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
              <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
          </asp:FormView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
              ConnectionString="<%$ ConnectionStrings:FORwitMovieConnectionString %>" 
              SelectCommand="SELECT * FROM [Member]" 
          ConflictDetection="CompareAllValues" 
          DeleteCommand="DELETE FROM [Member] WHERE [MemberID] = @original_MemberID AND [LName] = @original_LName AND [FName] = @original_FName AND [Here] = @original_Here" 
          InsertCommand="INSERT INTO [Member] ([LName], [FName], [Here]) VALUES (@LName, @FName, @Here)" 
          OldValuesParameterFormatString="original_{0}" 
          UpdateCommand="UPDATE [Member] SET [LName] = @LName, [FName] = @FName, [Here] = @Here WHERE [MemberID] = @original_MemberID AND [LName] = @original_LName AND [FName] = @original_FName AND [Here] = @original_Here">
              <DeleteParameters>
                  <asp:Parameter Name="original_MemberID" Type="Int32" />
                  <asp:Parameter Name="original_LName" Type="String" />
                  <asp:Parameter Name="original_FName" Type="String" />
                  <asp:Parameter Name="original_Here" Type="Boolean" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="LName" Type="String" />
                  <asp:Parameter Name="FName" Type="String" />
                  <asp:Parameter Name="Here" Type="Boolean" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="LName" Type="String" />
                  <asp:Parameter Name="FName" Type="String" />
                  <asp:Parameter Name="Here" Type="Boolean" />
                  <asp:Parameter Name="original_MemberID" Type="Int32" />
                  <asp:Parameter Name="original_LName" Type="String" />
                  <asp:Parameter Name="original_FName" Type="String" />
                  <asp:Parameter Name="original_Here" Type="Boolean" />
              </UpdateParameters>
      </asp:SqlDataSource>

        
</asp:Content>
