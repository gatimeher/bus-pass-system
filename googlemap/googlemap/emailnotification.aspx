<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="emailnotification.aspx.cs" Inherits="googlemap.emailnotification" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            to:-
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;
            <br />
            <br />
            subject:-<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            body:-
            <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
&nbsp;
            <br />
            <br />
&nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="send" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="status:-"></asp:Label>
        </div>
    </form>
</body>
</html>
