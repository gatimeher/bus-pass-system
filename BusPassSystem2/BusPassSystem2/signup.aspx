<%@ Page Title="" Language="C#" MasterPageFile="~/Site1Home.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="BusPassSystem2.WebForm4" %>


    <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

         <form id="form1" runat="server">
             <br/>
            <br/>
            <br/>
             <br/>
            <br/>
            <br/>
        <asp:Panel ID="Panel1" runat="server" BackColor="Silver" CssClass="about-testimonials" Height="1384px" Width="1293px" style="margin-top: 147px">
            <br/>
            
            <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="  Note :- The fields which contains  * symbol is manditary fields."></asp:Label>
            &nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table class="w-100" style="height: 1290px; margin-bottom: 0px; width: 95%;">
            <tr>
                <td style="width: 291px; height:10px;">&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #FF0000">&nbsp;&nbsp;*</span> Name:-&nbsp;</td>
                <td style="width: 355px; height: 10px;">
                    <script>

</script>
                    <asp:TextBox ID="TextBox1" runat="server" Width="522px" Height="30px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
                <td style="height: 10px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter the name." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 291px; height: 10px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #FF0000">*</span> Address:-&nbsp;</td>
                <td style="width: 355px; height: 10px;">
                    <asp:TextBox ID="TextBox2" runat="server" Width="522px" TextMode="MultiLine" Height="30px"></asp:TextBox>
                </td>
                <td style="height: 10px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter the address." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 291px; height: 10px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #FF0000">*</span> Mobile Number:-&nbsp;</td>
                <td style="width: 355px; height: 10px;">
                    <asp:TextBox ID="TextBox3" runat="server" Width="523px" OnTextChanged="TextBox3_TextChanged" Height="30px"></asp:TextBox>
                </td>
                <td style="height: 10px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please enter the mobile number" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 291px; height: 4px;"></td>
                <td style="width: 355px; height: 4px;">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="please enter 10 digits number"  
  ValidationExpression ="[0-9]{10}" ForeColor="Red"></asp:RegularExpressionValidator> 
                </td>
                <td style="height: 4px"></td>
            </tr>
            <tr>
                <td style="width: 291px; height: 48px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: #FF0000">*</span> Email id:-&nbsp;</td>
                <td style="width: 355px; height: 48px;">
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Email" Width="521px" height="30px"></asp:TextBox>
                </td>
                <td style="height: 48px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please enter the email id." ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Incorrect email id." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 291px; height: 8px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: #FF0000">*</span> Password:-&nbsp;</td>
                <td style="width: 355px; height: 8px;">
                    <asp:TextBox ID="TextBox11" runat="server" Width="521px" height ="30px" TextMode="Password" OnTextChanged="TextBox11_TextChanged" CssClass="offset-sm-0"></asp:TextBox>
                </td>
                <td style="height: 8px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter the password." ControlToValidate="TextBox11" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "TextBox11" ID="RegularExpressionValidator4" ValidationExpression = "^[\s\S]{8,25}$" runat="server" ErrorMessage="Minimum 8 and Maximum 25 characters required." ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 291px; height: 40px;"></td>
                <td style="width: 355px; height: 40px;">(The password must be minimum 8 characters and maximum 25 charachter long and it contains uppercase letters,lowercase letters,special characters and numbers.)&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td style="height: 40px">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox11" ErrorMessage="The password must contains uppercase letter,lowercase letters,special characters and numbers" ValidationExpression="^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!*@#$%^&amp;+=]).*$" ForeColor="Red"></asp:RegularExpressionValidator>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 291px; height: 27px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: #FF0000">*</span> Confirm Password:-&nbsp;</td>
                <td style="width: 355px; height: 27px;">
                    <asp:TextBox ID="TextBox7" runat="server" Width="519px"  TextMode="Password" Height="30px" OnTextChanged="TextBox7_TextChanged"></asp:TextBox>
                </td>
                <td style="height: 27px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter the confirm password." ControlToValidate="TextBox7" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 291px; height: 10px;"></td>
                <td style="width: 355px; height: 10px;">
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TextBox11" ControlToValidate="TextBox7" ErrorMessage="Password cannot match." ForeColor="Red"></asp:CompareValidator>
                </td>
                <td></td>
            </tr>
            <tr>
                <td style="width: 291px; height: 10px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #FF0000">*</span> Gender:-&nbsp;</td>
                <td style="width: 355px; height: 10px;">
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Gender" Text="Male" />
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Gender" Text="Female" />
                    <asp:RadioButton ID="RadioButton3" runat="server" GroupName="Gender" Text="Others" />
                </td>
                <td> </td>
            </tr>
            <tr>
                <td style="width: 291px; height: 10px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: #FF0000">*</span> Date of Birth:-&nbsp;</td>
                <td style="width: 355px; height: 10px;">(please first select month and then date. )
                    <br />
                    <asp:TextBox ID="TextBox13" runat="server" TextMode="Date" Width="515px" OnTextChanged="TextBox13_TextChanged"></asp:TextBox>
                </td>
                <td style="height: 10px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox13" ErrorMessage="please enter the date of birth." ForeColor="Red"></asp:RequiredFieldValidator>
                   <!-- <asp:RegularExpressionValidator runat="server" ControlToValidate="TextBox13" ErrorMessage="Invalid date format." ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$" ValidationGroup="Group1" />-->
                </td>
            </tr>
            <tr>
                <td style="width: 291px; height: 10px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #000000">&nbsp;</span><span style="color: #FF0000">*</span> Adharcard Number:-&nbsp;</td>
                <td style="width: 355px; height: 10px;">
                    <asp:TextBox ID="TextBox8" runat="server" Width="520px" Height="30px"></asp:TextBox>
                </td>
                <td style ="height: 10px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox8" ErrorMessage="Please enter the adharcard number." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 291px; height: 10px;">&nbsp;</td>
                <td style="width: 355px; height: 10px;">
<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox8" ErrorMessage="please enter 12 digits number"  
  ValidationExpression ="[0-9]{12}" ForeColor="Red"></asp:RegularExpressionValidator>          
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 291px; height: 10px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: #FF0000">*</span> Security Questions:-&nbsp;</td>
                <td style="width: 355px; height: 10px;">
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="529px" Height="30px">
                        <asp:ListItem>-----Select----</asp:ListItem>
                        <asp:ListItem>What is the name of the town where you were born ?</asp:ListItem>
                        <asp:ListItem>What primary school did you attend ?</asp:ListItem>
                        <asp:ListItem>What is your favourite food ?</asp:ListItem>
                       
                    </asp:DropDownList>
                </td>
                <td style="height: 10px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Please select the security question." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 291px; height: 10px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: #FF0000">*</span> Security Answer:-&nbsp;</td>
                <td style="width: 355px; height: 10px;">
                    <asp:TextBox ID="TextBox9" runat="server" Width="521px" Height="30px" OnTextChanged="TextBox9_TextChanged"></asp:TextBox>
                </td>
                <td style="height: 10px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox9" ErrorMessage="Please enter the security answer." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 291px; height: 25px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: #FF0000">*</span> Date:-&nbsp;</td>
                <td style="width: 355px; height: 25px;">
                    <asp:TextBox ID="TextBox10" runat="server" Width="519px" Height="30px" OnTextChanged="TextBox10_TextChanged" Enabled="False" ReadOnly="True"></asp:TextBox>
                </td>
                <td style="height: 25px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox10" ErrorMessage="Please enter the current date." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 291px; height: 33px;">&nbsp;&nbsp;&nbsp;<span style="color: #000000">&nbsp;&nbsp;&nbsp;</span><span style="color: #FF0000">*</span> Photo:-&nbsp;</td>
                <td style="width: 355px; height: 33px;">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="531px" Height="30px" />
                </td>
                <td style="height: 33px">
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Please upload photo." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 291px ; height: 10px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label2" runat="server" Text="information:-"></asp:Label>
                </td>
                <td style="width: 355px; height: 10px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Back" Width="96px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" Text="Submit" OnClick="Button4_Click1"  />
                    &nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
        </table>
    </asp:Panel>
             </form>
 
        </asp:Content>