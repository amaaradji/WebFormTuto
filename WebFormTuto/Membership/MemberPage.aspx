<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberPage.aspx.cs" Inherits="WebFormTuto.Membership.MemberPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Membership Page</h2>
        <asp:Label ID="Label1" runat="server" Text="Welcome "></asp:Label>
        <asp:LoginName ID="LoginName" runat="server" />
        (<asp:LoginStatus ID="LoginStatus" runat="server" LogoutAction="Redirect" LogoutPageUrl="~/Demo.aspx" />)
    
        </div>
    </form>
</body>
</html>
