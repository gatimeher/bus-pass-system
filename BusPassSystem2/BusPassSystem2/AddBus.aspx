<%@ Page Title="" Language="C#" MasterPageFile="~/Site2Admin.Master" AutoEventWireup="true" CodeBehind="AddBus.aspx.cs" Inherits="BusPassSystem2.AddBus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server">

         <asp:Panel ID="Panel1" runat="server" BackColor="Silver">
         <table class="w-100" style="border-style: solid; border-width: 0px; margin-top: 76px; height: 311px;">
             <tr>
                 <td style="width: 200px">Source :-</td>
                 <td class="auto-style2" style="width: 314px">
                     <asp:TextBox ID="TextBox1" runat="server" Width="310px"></asp:TextBox>
                 </td>
                 
             </tr>
             <tr>
                 <td style="width: 200px">Destination :-</td>
                 <td class="auto-style2" style="width: 314px">
                     <asp:TextBox ID="TextBox2" runat="server" Width="309px"></asp:TextBox>

                 </td>
             </tr>
            
             <tr>
                 <td style="width: 200px">Bus Type :-</td>
                 <td class="auto-style2" style="width: 314px">
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="type"  Text="Ac" />
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="type" Text="Non-Ac" />

                 </td>
             </tr>
             <tr>
                 <td style="width: 200px">Bus Number :-</td>
                 <td class="auto-style2" style="width: 314px">
                     <asp:TextBox ID="TextBox3" runat="server" Width="305px"></asp:TextBox></td>
             </tr>
             <tr>
                 <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <br />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" Width="112px" />
                 </td>
             </tr>
         </table>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <table class="w-100" style="height: 294px">
                 <tr>
                     <td class="auto-style2" style="width: 141px">Bus Id :- </td>
                     <td>
                         <asp:TextBox ID="TextBox6" runat="server" Enabled="False" ReadOnly="True" Width="309px"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style2" style="width: 141px">Stoppage :-</td>
                     <td>
                         <asp:TextBox ID="TextBox4" runat="server" Enabled="False" Width="311px" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                         &nbsp;&nbsp; (Add Source and Destination name again in stoppage field )</td>
                 </tr>
                 <tr>
                     <td class="auto-style2" style="width: 141px">Time :-</td>
                     <td>
                         <asp:TextBox ID="TextBox5" runat="server" Enabled="False" Width="305px"></asp:TextBox>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please enter  correct time format.." ForeColor="Red" ValidationExpression="^([1-9]|1[0-2]|0[1-9]){1}(:[0-5][0-9][aApP][mM]){1}$"></asp:RegularExpressionValidator>
                         <br />
                         (Time format :- hh:mmAM/am/PM/pm&nbsp; eg: 08:30pm/am)</td>
                 </tr>
                 <tr>
                     <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Back" />
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button2" runat="server" Text="Add Stoppage" Enabled="False" OnClick="Button2_Click" />
                         &nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Button ID="Button3" runat="server" Text="Done" Enabled="False" OnClick="Button3_Click" />
                         &nbsp;&nbsp; <span style="color: #FF0000">(click on Done , when all the stoppages are added)</span></td>
                 </tr>
             </table>
             <br />
</asp:Panel>

     </form>

</asp:Content>
