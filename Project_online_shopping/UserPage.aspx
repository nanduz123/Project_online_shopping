<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserPage.aspx.cs" Inherits="Project_online_shopping.UserPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
    <tr>
        <td>
            <asp:Panel ID="Panel1" runat="server">
                <asp:DataList ID="DataList1" runat="server" CellPadding="5" RepeatColumns="4" RepeatDirection="Horizontal">
                      <ItemTemplate>
                        <table class="w-100" style="border: 1px solid #FF33CC">
                            <tr>
                                <td class="auto-style1">
                                    <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("CategoryID") %>' Height="86px" ImageUrl='<%# Eval("CatgImage") %>' OnCommand="ImageButton1_Command" Width="137px" />
                                </td>
                                <td>Name:
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("CatgName") %>'></asp:Label>
                                    <br />
                                    Description:
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("CatgDescription") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </asp:Panel>
        </td>
    </tr>
</table>
</asp:Content>
