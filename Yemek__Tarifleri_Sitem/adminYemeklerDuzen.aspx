<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="adminYemeklerDuzen.aspx.cs" Inherits="adminYemeklerDuzen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
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
            margin-left: 78px;
        }
    .auto-style14 {
        text-align: right;
        width: 183px;
    }
    .auto-style15 {
        text-align: left;
        width: 183px;
    }
    .auto-style16 {
        background-color: #EA4C89;
        border-radius: 8px;
        border-style: none;
        box-sizing: border-box;
        color: #FFFFFF;
        cursor: pointer;
        display: inline-block;
        font-family: "Haas Grot Text R Web", "Helvetica Neue", Helvetica, Arial, sans-serif;
        font-size: small;
        font-weight: 500;
        height: 40px;
        line-height: 20px;
        list-style: none;
        margin: 0;
        outline: none;
        padding: 10px 16px;
        position: relative;
        text-align: center;
        text-decoration: none;
        transition: color 100ms;
        vertical-align: baseline;
        user-select: none;
        -webkit-user-select: none;
        touch-action: manipulation;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style9">
        <tr>
            <td class="auto-style14"><strong></strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>Yemek Ad:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="kutular" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>Yemek Malzeme:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="kutular" Height="200px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>YemekTarif:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="kutular" Height="300px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>Kategori:</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="200px" CssClass="kutular">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>Yemeğin Fotorafı:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="kutular" Width="200px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>
                <asp:Button ID="Button2" runat="server" CssClass="auto-style16" Text="Günün Yemeği Seç!" Width="180px" OnClick="Button2_Click" />
                </strong></td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Güncelle" CssClass="auto-style12" />
            </td>
        </tr>
    </table>
</asp:Content>

