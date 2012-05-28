<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Testing.aspx.cs" Inherits="Testing" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="ObjectDataSource1">
            <Columns>
                <asp:BoundField DataField="MemberID" HeaderText="Member ID" 
                    SortExpression="MemberID" />
                <asp:BoundField DataField="FName" HeaderText="First Name" 
                    SortExpression="FName" />
                <asp:BoundField DataField="LName" HeaderText="Last Name" 
                    SortExpression="LName" />
                <asp:CheckBoxField DataField="Here" HeaderText="Here" SortExpression="Here" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            SelectMethod="getMembers" TypeName="MemberDB"></asp:ObjectDataSource>
    
    </div>
    </form>
</body>
</html>
