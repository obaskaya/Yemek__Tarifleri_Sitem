<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="YemekDetay.aspx.cs" Inherits="YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style9 {
        font-size: xx-large;
            background-color: #CCCCFF;
        }
        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            font-size: xx-small;
        }
        .auto-style12 {
            font-size: x-large;
        }
        .border{
            border-bottom: thin solid #FF00FF;
        width: 418px;
        height: 82px;
        }
        .auto-style13 {
            margin-bottom: 0px;
            background-color: #CCFFFF;
        font-size: x-large;
    }
    .auto-style14 {
        text-align: right;
        width: 125px;
    }
        .auto-style17 {
            border: 2px solid #456879;
            border-radius: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <strong>
<asp:Label ID="Label3" runat="server" CssClass="auto-style9" Text="Label"></asp:Label>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style10">
                <tr>
                    <td><em>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style12" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </em></td>
                </tr>
                <tr>
                    <td class="border">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                        &nbsp;-
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style11" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        
    </asp:DataList>
    <br />
</strong>
<div class="auto-style13">Yorum Yapma Paneli</div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style10">
            <tr>
                <td class="auto-style14"><strong></strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>Ad Soyad</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="288px" BackColor="#CCFFFF" CssClass="auto-style17"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>Mail:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="288px" BackColor="#CCFFFF" CssClass="auto-style17"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>Yorumunuz:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="80px" TextMode="MultiLine" Width="292px" BackColor="#CCFFFF" CssClass="auto-style17"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"><strong></strong></td>
                <td><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="button" OnClick="Button1_Click" Text="Yorum Yap" Width="176px" Height="38px" />
                    </strong></td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>

