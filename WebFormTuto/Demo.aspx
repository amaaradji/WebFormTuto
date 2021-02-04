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
            
            <div>
                <asp:Label ID="lblName" runat="server" Text="Welcome"></asp:Label>
            </div>
            <div>
                <asp:CheckBox ID="CheckBox1" runat="server" />
            </div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <div>
                <asp:Button ID="Button1" runat="server" OnClick="onClickOk" Text="Ok" />
            </div>
            
        </div>
    </form>
</body>
</html>
