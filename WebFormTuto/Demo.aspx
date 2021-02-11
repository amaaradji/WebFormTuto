<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo.aspx.cs" Inherits="WebFormTuto.Demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <br />
            <asp:ListBox ID="lstLocation" runat="server">
                <asp:ListItem>Paris</asp:ListItem>
                <asp:ListItem>Marseille</asp:ListItem>
                <asp:ListItem>Lyon</asp:ListItem>
                <asp:ListItem>Lille</asp:ListItem>
            </asp:ListBox>
            <br />
            <asp:RadioButton ID="rdFemale" runat="server" Text="Female" GroupName="rdGroup" />
            <br />
            <asp:RadioButton ID="rdMale" runat="server" Text="Male" GroupName="rdGroup" />
            <br />
            
            <asp:CheckBox ID="chkC" runat="server" Text="C#" />
            <br />
            <asp:CheckBox ID="chkASP" runat="server" Text="ASP.Net" />
            
            <br />
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
            <br />
        </div>
    </form>
</body>
</html>
