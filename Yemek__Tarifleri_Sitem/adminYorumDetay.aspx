<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="adminYorumDetay.aspx.cs" Inherits="adminYorumDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            text-align: right;
            width: 142px;
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
            margin-left: 104px;
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
            <td class="auto-style12">&nbsp;Ad Soyad:</td>
            <td>
                <asp:TextBox ID="TxtAD" runat="server" CssClass="kutular" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Mail Adresi:</td>
            <td>
                <asp:TextBox ID="TxtMail" runat="server" CssClass="kutular" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">İçerik:</td>
            <td>
                <asp:TextBox ID="Txticerik" runat="server" CssClass="kutular" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Yemek:</td>
            <td>
                <asp:TextBox ID="TxtYemek" runat="server" CssClass="kutular" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td>
                <asp:Button ID="BtnOnay" runat="server" CssClass="auto-style13" OnClick="BtnOnay_Click" Text="Onayla" />
            </td>
        </tr>
    </table>
</asp:Content>

