<%@ Page Title="" Language="C#" MasterPageFile="~/Site4Staff.Master" AutoEventWireup="true" CodeBehind="StaffDashboard.aspx.cs" Inherits="BusPassSystem2.StaffDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server" style="margin-top: 153px">
        <asp:Panel ID="Panel1" runat="server" BackColor="Silver">
         <table class="w-100" style="margin-top: 156px">
            <tr>
                <td style="height: 32px" colspan="3">
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Scan Pass" OnClick="Button1_Click" /></td>
            </tr>
            <tr>
                <td style="width: 290px; height: 32px">&nbsp; Name:-&nbsp;</td>
                <td style="height: 32px; width: 671px;">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td style="height: 32px"></td>
            </tr>
            <tr>
                <td style="width: 290px; height: 32px">&nbsp;</td>
                <td style="height: 32px; width: 671px;">&nbsp;</td>
                <td style="height: 32px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 290px">&nbsp; Address:-&nbsp;</td>
                <td style="width: 671px">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 290px">&nbsp;</td>
                <td style="width: 671px">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 290px">&nbsp; Mobile Number:-&nbsp;</td>
                <td style="width: 671px">
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 290px">&nbsp;</td>
                <td style="width: 671px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 290px">&nbsp; Email id:-&nbsp;</td>
                <td style="width: 671px">
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 290px">&nbsp;</td>
                <td style="width: 671px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 290px">&nbsp; Gender:-&nbsp;</td>
                <td style="width: 671px">
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 290px">&nbsp;</td>
                <td style="width: 671px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 290px; height: 32px">&nbsp; Date of Birth:-&nbsp;</td>
                <td style="height: 32px; width: 671px;">
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                </td>
                <td style="height: 32px"></td>
            </tr>
            <tr>
                <td style="width: 290px; height: 32px">&nbsp;</td>
                <td style="height: 32px; width: 671px;">
                    &nbsp;</td>
                <td style="height: 32px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 290px">&nbsp; Aadhaarcard Number:-&nbsp;</td>
                <td style="width: 671px">
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 290px">&nbsp;</td>
                <td style="width: 671px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 290px; height: 31px">&nbsp; Registration Date:-&nbsp;</td>
                <td style="height: 31px; width: 671px;">
                    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                </td>
                <td style="height: 31px"></td>
            </tr>
            <tr>
                <td style="width: 290px; height: 32px">&nbsp;</td>
                <td style="height: 32px; width: 671px;">&nbsp;</td>
                <td style="height: 32px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 290px">&nbsp; Photo:-&nbsp;</td>
                <td style="width: 671px">
                    <asp:Image ID="Image1" runat="server" Height="178px" Width="186px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 290px">&nbsp;</td>
                <td style="width: 671px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>   
        </table>
        </asp:Panel> 
     </form>
</asp:Content>
