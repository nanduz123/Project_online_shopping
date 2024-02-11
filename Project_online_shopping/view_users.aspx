<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="view_users.aspx.cs" Inherits="Project_online_shopping.view_users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        Users List<br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" />
                <asp:BoundField DataField="Address" HeaderText="Address" />
                <asp:BoundField DataField="Age" HeaderText="Age" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="StateName" HeaderText="State" />
                <asp:BoundField DataField="DistrictName" HeaderText="District" />
                <asp:BoundField DataField="Pin" HeaderText="Pincode" />
                <asp:BoundField DataField="UserStatus" HeaderText="Status" />
                <asp:TemplateField HeaderText="Block/Unblock">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("UserId") %>' OnCommand="LinkButton1_Command">Block/Unblock</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </asp:Panel>
</asp:Content>
