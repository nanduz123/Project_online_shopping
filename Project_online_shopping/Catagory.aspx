<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Catagory.aspx.cs" Inherits="Project_online_shopping.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Add Category" />
        <br />
       <asp:Panel ID="Panel2" runat="server" Visible="False">
    <table class="w-100">
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>Catagory Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>Catagory Image</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Image ID="Image1" runat="server" Height="132px" Width="188px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>Catagory Price</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style1">Catagory Description</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">Catagory Status</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" />
                <asp:Button ID="Button2" runat="server" Text="Update" />
                <asp:Button ID="Button3" runat="server" Text="Cancel" />
            </td>
            <td></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>
       </asp:Panel>

    <br />
        <asp:Label ID="Label5" runat="server"></asp:Label>
        <br />
      
                <asp:DataList ID="DataList1" runat="server" CellPadding="5" RepeatColumns="4" RepeatDirection="Horizontal">
                    
            <ItemTemplate>
                <table class="w-100" style="border: 1px solid #FF33CC">
                    <tr>
                        <td class="auto-style2">
                            <asp:Image ID="Image2" runat="server" Height="105px" ImageUrl='<%# Eval("cat_img") %>' Width="167px" />
                        </td>
                        <td>Name:
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("cat_name") %>'></asp:Label>
                            <br />
                            Description:
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("cat_description") %>'></asp:Label>
                            <br />
                            Status:
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("cat_status") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("cat_id") %>' OnCommand="LinkButton1_Command" >Edit</asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("cat_id") %>' OnCommand="LinkButton2_Command">Remove</asp:LinkButton>
                        </td>
                        <td class="auto-style4"></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
                
             <br />
        <br />
    </asp:Panel>
</asp:Content>

