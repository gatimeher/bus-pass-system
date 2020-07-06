<%@ Page Title="" Language="C#" MasterPageFile="~/Site2Admin.Master" AutoEventWireup="true" CodeBehind="RoleAdminSignup.aspx.cs" Inherits="BusPassSystem2.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br/>
    <br/>
    <br/>
    <br/>
    <form id="form1" runat="server" style="width: 1377px; height: 136px" BackColor="Silver">
         
        <table style="width: 100%; border-style: solid; border-width: 0px">
            <tr>
                <td style="width: 101px" class="auto-style2">&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="Role:-"></asp:Label></td>
                <td style="width: 1267px">&nbsp;<asp:RadioButton ID="RadioButton1" runat="server" GroupName="role" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Staff" AutoPostBack="true"/>
                    &nbsp;<asp:RadioButton ID="RadioButton2" runat="server"  GroupName="role" OnCheckedChanged="RadioButton2_CheckedChanged" Text="Passenger" AutoPostBack="true"/>
                </td>
            </tr>
            <tr>
                <td style="width: 101px" class="auto-style2">&nbsp;</td>
                <td style="width: 1267px">&nbsp;<asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 101px" class="auto-style2">&nbsp;</td>
                <td style="width: 1267px">&nbsp;<asp:Button ID="Button1" runat="server" Text="Ok" OnClick="Button1_Click1" /></td>
            </tr>
        </table>
    </form>     
</asp:Content>
