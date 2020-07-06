<%@ Page Title="" Language="C#" MasterPageFile="~/Site3Passenger.Master" AutoEventWireup="true" CodeBehind="PassengerProfile.aspx.cs" Inherits="BusPassSystem2.PassengerProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <br/>
          <asp:Panel ID="Panel1" runat="server" BackColor="Silver">
        <table class="w-100" style="margin-top: 156px">
               
                    <caption>
                        <br/>
                        <tr>
                            <td colspan="3" style="height: 32px">&nbsp;
                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Update profile</asp:LinkButton>
                                &nbsp; &nbsp;
                                <!-- <asp:HyperLink runat="server">Change Password</asp:HyperLink>-->
                                <!-- Trigger the modal with a button --><a class="nav-link" data-target="#myModal" data-toggle="modal" href="ChangePassword.aspx"><b>Change Password</b></a>
                                <!-- Modal -->
                                 
                                <div id="myModal" class="modal fade" role="dialog">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 align:"center"="" class="modal-title">Change password Form</h4>
                                                <button class="close" data-dismiss="modal" type="button">
                                                    ×
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <p>
                                                    <form action="ChangePassword.aspx" method="post">
                                                        Enter Password :
                                                        <input type="text" name="t1" />
                                                        <br />
                                                        <br />
                                                        Enter new Password&nbsp; :
                                                        <input type="password" name="t2" />
                                                        <br />
                                                        <br />
                                                        Confirm new Password&nbsp; :
                                                        <input type="password" name="t3" />
                                                        <br />
                                                        <br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <input type="submit" value="Change" />
                                                    </form>
                                                    <p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </div>
                                            <div class="modal-footer">
                                                <button class="btn btn-default" data-dismiss="modal" type="button">
                                                    Close
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--model close--></td>
                        </tr>
                        <tr>
                            <td style="width: 290px; height: 32px">&nbsp;</td>
                            <td style="height: 32px; width: 671px;">&nbsp;</td>
                            <td style="height: 32px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 290px; height: 32px">&nbsp;Registration Id:-&nbsp;</td>
                            <td style="height: 32px; width: 671px;">
                                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td style="height: 32px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 290px; height: 32px">&nbsp;</td>
                            <td style="height: 32px; width: 671px;">&nbsp;</td>
                            <td style="height: 32px">&nbsp;</td>
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
                            <td style="width: 671px">&nbsp;</td>
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
                            <td style="height: 32px; width: 671px;">&nbsp;</td>
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
                    </caption>
        </table>
       </asp:Panel> 
    </form>
</asp:Content>
