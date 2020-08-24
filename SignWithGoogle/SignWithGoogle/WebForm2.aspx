<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="SignWithGoogle.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/signinwithgoogle.png" Width="392px" OnClick="ImageButton1_Click" />
            <asp:Panel ID="pnlProfile" runat="server" Visible="false">
<hr />
<table>
    <tr>
        <td rowspan="6" \>
            <asp:Image ID="ProfileImage" runat="server" Width="168px" Height="158px" />
        </td>
    </tr>
    <tr>
        <td>
            ID:
            <asp:Label ID="lblId" runat="server" Text=""></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            Name:
            <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            Email:
            <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            Verified Email:
            <asp:Label ID="lblVerified" runat="server" Text=""></asp:Label>
        </td>
    </tr>
        <tr>
        <td>
            <asp:Button Text="clear" runat="server" OnClick="Unnamed1_Click" Width="127px"/>
            &nbsp;
        </td>
    </tr>
</table>
</asp:Panel>
        </div>
    </form>
</body>
</html>
