<%@ Page Title="" Language="C#" MasterPageFile="~/Site2Admin.Master" AutoEventWireup="true" CodeBehind="BusManagement.aspx.cs" Inherits="BusPassSystem2.BusManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server" style="width: 1559px; height: 720px; margin-top: 86px">
        <asp:Panel ID="Panel1" runat="server" BackColor="Silver" Height="703px" style="margin-top: 6px">
        <table class="w-100" style="height: 660px; width: 89%;">
            <tr>
                <td style="width: 292px">&nbsp;Source:-</td>
                <td>&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="398px"></asp:DropDownList></td>
            </tr>
            <tr>
                <td style="width: 292px">&nbsp;Destination:-</td>
                <td>&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" Width="391px"></asp:DropDownList></td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="View" OnClick="Button1_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Add Bus " OnClick="Button2_Click" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br /> &nbsp;Source:-
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    &nbsp;&nbsp;&nbsp; Destination:-
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    &nbsp;&nbsp;&nbsp; Bus Id:-
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    &nbsp;&nbsp;&nbsp; Bus Type:-
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    &nbsp;&nbsp;&nbsp; Bus Number:-
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                    <br />
                </td> 
            </tr>
            <tr>
                <td style="width: 292px">
                    <asp:GridView ID="GridView2" runat="server"  DataKeyNames="Bus_Id" OnPageIndexChanging="GridView2_PageIndexChanging" OnRowDeleting="GridView2_RowDeleting" OnRowCancelingEdit="GridView2_RowCancelingEdit" OnRowEditing="GridView2_RowEditing" OnRowUpdating="GridView2_RowUpdating" Width="589px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Height="200px">
                        <Columns>
                        <asp:CommandField ShowEditButton="true" />  
                        <asp:CommandField ShowDeleteButton="true" /> </Columns>  
                    </asp:GridView>
                    <br />
               </td>
            </tr>
           <tr>
                <td style="width: 292px">
                    <asp:Button ID="Button3" runat="server" Text="Edit" />
                    &nbsp;&nbsp;<asp:Button ID="Button4" runat="server" Text="Delete" />
               </td>
            </tr>
        </table>
            <br/>
            <br/>
      </asp:Panel>
            </form>
</asp:Content>
