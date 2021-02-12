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
            <asp:ListBox ID="lstLocation" runat="server" Height="112px" Width="102px">
                <asp:ListItem>Paris</asp:ListItem>
                <asp:ListItem>Marseille</asp:ListItem>
                <asp:ListItem>Lyon</asp:ListItem>
                <asp:ListItem>Lille</asp:ListItem>
                <asp:ListItem>Bordeaux</asp:ListItem>
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
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Display" />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" />
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update" />
            <br />
            <asp:Button ID="Button3" runat="server" Text="Delete" OnClick="Button3_Click" />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="TutorialID"></asp:Label>
            <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" DataTextField="TutorialID" DataValueField="TutorialID"></asp:ListBox>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="Server=localhost\SQLEXPRESS;Trusted_Connection=True;Database=mydbtuto ;User ID=demo_user;Password=Password123" 
                SelectCommand="SELECT * FROM [demotb]" 
                UpdateCommand="UPDATE demotb SET TutorialID =@TutorialID ,TutorialName = @TutorialName where TutorialID =@TutorialID">
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="TutorialName"></asp:Label>
            <asp:ListBox ID="ListBox2" runat="server" DataSourceID="SqlDataSource1" DataTextField="TutorialName" DataValueField="TutorialName"></asp:ListBox>
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="TutorialID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="TutorialID" HeaderText="TutorialID" ReadOnly="True" SortExpression="TutorialID" />
                    <asp:BoundField DataField="TutorialName" HeaderText="TutorialName" SortExpression="TutorialName" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
