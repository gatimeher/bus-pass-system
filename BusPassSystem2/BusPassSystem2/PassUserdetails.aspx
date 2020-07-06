<%@ Page Title="" Language="C#" MasterPageFile="~/Site2Admin.Master" AutoEventWireup="true" CodeBehind="PassUserdetails.aspx.cs" Inherits="BusPassSystem2.PassUserdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server" style="margin-top: 153px">
         <br/>
        <asp:Panel ID="Panel1" runat="server" BackColor="Silver" Height="144px"> 
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="138px">
                <Columns>
                    <asp:BoundField DataField="Registration_Id" HeaderText="Registration_Id" SortExpression="Registration_Id" />
                    <asp:BoundField DataField="Source" HeaderText="Source" SortExpression="Source" />
                    <asp:BoundField DataField="Destination" HeaderText="Destination" SortExpression="Destination" />
                    <asp:BoundField DataField="Bus_Type" HeaderText="Bus_Type" SortExpression="Bus_Type" />
                    <asp:BoundField DataField="Pass_Creation_Date" HeaderText="Pass_Creation_Date" SortExpression="Pass_Creation_Date" />
                    <asp:BoundField DataField="Validity" HeaderText="Validity" SortExpression="Validity" />
                    <asp:BoundField DataField="Expiry_Date" HeaderText="Expiry_Date" SortExpression="Expiry_Date" />
                    <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                    <asp:BoundField DataField="Pass_Status" HeaderText="Pass_Status" SortExpression="Pass_Status" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Bus_Pass_SystemConnectionString4 %>" SelectCommand="SELECT * FROM [Pass_User]"></asp:SqlDataSource>
        </asp:Panel>
</form>
</asp:Content>
