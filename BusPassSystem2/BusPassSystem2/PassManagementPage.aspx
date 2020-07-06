<%@ Page Title="" Language="C#" MasterPageFile="~/Site2Admin.Master" AutoEventWireup="true" CodeBehind="PassManagementPage.aspx.cs" Inherits="BusPassSystem2.PassManagementPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server" style="margin-top: 153px">
    <p>
&nbsp;&nbsp;&nbsp;
    </p>
        <asp:Panel ID="Panel1" runat="server" BackColor="Silver"> 
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">View Pass User</asp:LinkButton>
    <table style="width: 100%; border-style: solid; border-width: 1px">
        <tr>
            <td style="width: 274px">Registration Id :-</td>
            <td style="width: 271px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 274px">Source :-</td>
            <td style="width: 271px">
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 274px">Destination :-</td>
            <td style="width: 271px">
                <asp:DropDownList ID="DropDownList2" runat="server">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 274px">Bus Type :-</td>
            <td style="width: 271px">
                <asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem>Non-Ac</asp:ListItem>
                    <asp:ListItem>Ac</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 274px">Validity :-</td>
            <td style="width: 271px">
                <asp:DropDownList ID="DropDownList4" runat="server">
                    <asp:ListItem>----Select----</asp:ListItem>
                    <asp:ListItem>1 month</asp:ListItem>
                    <asp:ListItem>3 months</asp:ListItem>
                    <asp:ListItem>6 months</asp:ListItem>
                    <asp:ListItem>12 months</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 274px">Pass Creation date :-</td>
            <td style="width: 271px">
                <asp:TextBox ID="TextBox5" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 274px">Expiry date :-</td>
            <td style="width: 271px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 274px">Distance :-</td>
            <td style="width: 271px">
                <asp:TextBox ID="TextBox3" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 274px; height: 32px">Amount :-</td>
            <td style="height: 32px; width: 271px">
                <asp:TextBox ID="TextBox4" runat="server" Enabled="False" OnTextChanged="TextBox4_TextChanged" ReadOnly="True"></asp:TextBox>
            </td>
            <td style="height: 32px"></td>
        </tr>
        <tr>
            <td style="width: 274px; height: 32px">&nbsp;</td>
            <td style="height: 32px; width: 271px">&nbsp;</td>
            <td style="height: 32px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 14px" colspan="3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="OK" Width="96px" />
&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" Text="Create" OnClick="Button1_Click" Enabled="False" />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Back" Width="122px" OnClick="Button2_Click" />
                &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <br />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="imgQR" runat="server" Height="278px" Width="314px" />
                &nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
    </table>
    </asp:Panel> 
        </form>
</asp:Content>
