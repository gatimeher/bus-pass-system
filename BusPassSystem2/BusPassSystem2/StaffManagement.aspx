<%@ Page Title="" Language="C#" MasterPageFile="~/Site2Admin.Master" AutoEventWireup="true" CodeBehind="StaffManagement.aspx.cs" Inherits="BusPassSystem2.StaffManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server" style="margin-top: 153px">
        <asp:Panel ID="Panel1" runat="server" BackColor="Silver">
          <div class="more-info about-info">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="more-info-content">
              <div class="row">
                <div class="col-md-6">
                  <div class="right-content">
            <table class="w-50" style="width: 54%">
                <tr>
                    <td style="width: 403px" class="auto-style2">Staff Registration Id:-</td>
                    <td class="auto-style2" style="width: 224px">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 403px" class="auto-style2">Bus Id:-</td>
                    <td class="auto-style2" style="width: 224px">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 403px" class="auto-style2">Assigning Date:-</td>
                    <td class="auto-style2" style="width: 224px">
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 403px" class="auto-style2">Duration:-</td>
                    <td class="auto-style2" style="width: 224px">
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="225px">
                            <asp:ListItem>1 month</asp:ListItem>
                            <asp:ListItem>6 months</asp:ListItem>
                            <asp:ListItem>1 year</asp:ListItem>
                            <asp:ListItem>3 years</asp:ListItem>
                            <asp:ListItem>5 years</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="OK" OnClick="Button1_Click" />
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 403px" class="auto-style2">Source:-</td>
                    <td class="auto-style2" style="width: 224px">
                        <asp:TextBox ID="TextBox4" runat="server" Enabled="False" ReadOnly="True" OnTextChanged="TextBox4_TextChanged1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 403px" class="auto-style2">Destination:-</td>
                    <td class="auto-style2" style="width: 224px">
                        <asp:TextBox ID="TextBox5" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 403px" class="auto-style2">Bus Type:-</td>
                    <td class="auto-style2" style="width: 224px">
                        <asp:TextBox ID="TextBox6" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 403px" class="auto-style2">Bus Number:-</td>
                    <td class="auto-style2" style="width: 224px">
                        <asp:TextBox ID="TextBox7" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button2" runat="server" Text="Assign Staff" OnClick="Button2_Click" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click1" Text="Clear" />
                        &nbsp;&nbsp;
                        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Back" />
                    </td>
                </tr>
            </table>
            </div>
            </div>
             <div class="col-md-6">
                  <div class="left-image">
                      <asp:Button ID="Button3" runat="server" Text="Assigned Staff Deatils" OnClick="Button3_Click" />
                      &nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/FullBusDeatils.aspx">Bus Details</asp:HyperLink>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink2" runat="server">Update staff profile</asp:HyperLink>
                      <asp:GridView ID="GridView1" runat="server">
                      </asp:GridView>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

          

        </asp:Panel> 
     </form>
</asp:Content>
