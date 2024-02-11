<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Project_online_shopping.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 32px;
        }
        .auto-style2 {
            height: 32px;
            width: 289px;
        }
        .auto-style3 {
            width: 289px;
        }
        .auto-style4 {
            width: 170px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:Panel ID="Panel1" runat="server">
        <br />
        <br />
        <asp:Panel ID="Panel2" runat="server" Visible="False">
            <table class="w-100">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Category"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="340px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style1"></td>
                </tr>
                 <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Product Name"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox1" runat="server" Width="340px"></asp:TextBox>
                    </td>
                    <td class="auto-style1"></td>
                </tr>
                 <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label3" runat="server" Text="Image"></asp:Label>
                    </td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="340px" />
                        <br />
                        <asp:Image ID="Image2" runat="server" Height="128px" Width="228px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label4" runat="server" Text="Description"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="340px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label5" runat="server" Text="Price"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Width="340px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label6" runat="server" Text="Stock"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="Number" Width="340px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" Width="83px" />
                        &nbsp;
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Update" />
                        &nbsp;
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Cancel" />
                    </td>
                    <td>&nbsp;</td>
                </tr>               
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Label ID="Label14" runat="server"></asp:Label>
        <br />
        <asp:DataList ID="DataList1" runat="server" CellPadding="4" RepeatColumns="3" RepeatDirection="Horizontal">
            <ItemTemplate>
                <table class="w-100" style="border: 1px solid #FF33CC">
                    <tr>
                        <td class="auto-style4">
                            <asp:Image ID="Image1" runat="server" Height="83px" ImageUrl='<%# Eval("ProductImage") %>' Width="132px" />
                        </td>
                        <td>Category:
                            <asp:Label ID="Label13" runat="server" Text='<%# Eval("CatgName") %>'></asp:Label>
                            <br />
                            Name:
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                            <br />
                            Description:&nbsp;
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("ProductDescription") %>'></asp:Label>
                            <br />
                            Price :
                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("ProductPrice") %>'></asp:Label>
                            <br />
                            Stock:
                            <asp:Label ID="Label11" runat="server" Text='<%# Eval("Stock") %>'></asp:Label>
                            <br />
                            Status:
                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("ProductStatus") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("ProductId") %>' OnCommand="LinkButton1_Command">Edit</asp:LinkButton>
                            &nbsp;
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("ProductId") %>' OnCommand="LinkButton2_Command">Remove</asp:LinkButton>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </asp:Panel>
</asp:Content>
