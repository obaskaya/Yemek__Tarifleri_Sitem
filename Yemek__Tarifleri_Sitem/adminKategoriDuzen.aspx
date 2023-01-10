<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="adminKategoriDuzen.aspx.cs" Inherits="KategoriAdminDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            text-align: right;
            width: 128px;
        }
        .auto-style13 {
            border-style: none;
            border-color: inherit;
            border-width: 0;
            background-color: #CCFFFF;
            border-radius: 100px;
            box-shadow: rgba(44, 187, 99, .2) 0 -25px 18px -14px inset,rgba(44, 187, 99, .15) 0 1px 2px,rgba(44, 187, 99, .15) 0 2px 4px,rgba(44, 187, 99, .15) 0 4px 8px,rgba(44, 187, 99, .15) 0 8px 16px,rgba(44, 187, 99, .15) 0 16px 32px;
            color: green;
            cursor: pointer;
            display: inline-block;
            font-family: CerebriSans-Regular,-apple-system,system-ui,Roboto,sans-serif;
            padding: 7px 20px;
            text-align: center;
            text-decoration: none;
            transition: all 250ms;
            font-size: 16px;
            user-select: none;
            -webkit-user-select: none;
            touch-action: manipulation;
            margin-left: 156px;
        }
        .auto-style14 {
            border: 2px solid #456879;
            border-radius: 10px;
            background-color: #CCFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style9">
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12"><strong><em>KATEGORİ AD:</em></strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="kutular" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong><em>ADET:</em></strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="kutular" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong><em>RESİM:</em></strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style14" Width="254px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style13" OnClick="Button1_Click" Text="Button" />
            </td>
        </tr>
    </table>
</asp:Content>

