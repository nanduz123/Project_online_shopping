<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductView.aspx.cs" Inherits="Project_online_shopping.ProductView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
    
     <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" CellPadding="5" RepeatColumns="4">
             <ItemTemplate>
                <table class="w-100" style="border: 1px solid #FF33CC">
                    <tr>
                        <td class="auto-style4">
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="166px" Width="178px" CommandArgument='<%# Eval("prd_id") %>' ImageUrl='<%# Eval("prd_img") %>' OnCommand="ImageButton1_Command" />
                        </td>
                        <td>
                            Category:
                            <asp:Label ID="Label11" runat="server" Text='<%# Eval("cat_name") %>'></asp:Label>
                            <br />
                            Name:
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("prd_name") %>'></asp:Label>
                            <br />
                            Description:&nbsp;
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("prd_description") %>'></asp:Label>
                            <br />
                            Price :
                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("prd_price") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
