<%@ Page Title="" Language="C#" MasterPageFile="~/Site2Admin.Master" AutoEventWireup="true" CodeBehind="FullBusDeatils.aspx.cs" Inherits="BusPassSystem2.FullBusDeatils" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server" style="margin-top: 153px" BackColor="Silver">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;
&nbsp;<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Bus_Id" DataSourceID="SqlDataSource1" PageSize="5" Height="411px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1311px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Bus_Id" HeaderText="Bus_Id" InsertVisible="False" ReadOnly="True" SortExpression="Bus_Id" />
                <asp:BoundField DataField="Source" HeaderText="Source" SortExpression="Source" />
                <asp:BoundField DataField="Destination" HeaderText="Destination" SortExpression="Destination" />
                <asp:BoundField DataField="Bus_Type" HeaderText="Bus_Type" SortExpression="Bus_Type" />
                <asp:BoundField DataField="Bus_Number" HeaderText="Bus_Number" SortExpression="Bus_Number" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Bus_Pass_SystemConnectionString2 %>" DeleteCommand="DELETE FROM [Bus_Detail] WHERE [Bus_Id] = @Bus_Id" InsertCommand="INSERT INTO [Bus_Detail] ([Source], [Destination], [Bus_Type], [Bus_Number]) VALUES (@Source, @Destination, @Bus_Type, @Bus_Number)" SelectCommand="SELECT * FROM [Bus_Detail]" UpdateCommand="UPDATE [Bus_Detail] SET [Source] = @Source, [Destination] = @Destination, [Bus_Type] = @Bus_Type, [Bus_Number] = @Bus_Number WHERE [Bus_Id] = @Bus_Id">
            <DeleteParameters>
                <asp:Parameter Name="Bus_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Source" Type="String" />
                <asp:Parameter Name="Destination" Type="String" />
                <asp:Parameter Name="Bus_Type" Type="String" />
                <asp:Parameter Name="Bus_Number" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Source" Type="String" />
                <asp:Parameter Name="Destination" Type="String" />
                <asp:Parameter Name="Bus_Type" Type="String" />
                <asp:Parameter Name="Bus_Number" Type="String" />
                <asp:Parameter Name="Bus_Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;
        <asp:Panel ID="Panel1" runat="server">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </asp:Panel>
            </form>
</asp:Content>
