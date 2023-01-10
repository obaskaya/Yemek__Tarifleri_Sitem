<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="KategoriDetay.aspx.cs" Inherits="KategoriDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style14 {
            width: 423px;
            height: auto;
            margin-left: 6px;
            background-color: #dfbef8;
        }
        .auto-style10 {
            border-bottom: thin solid #FF00FF;
        text-align: center;
            width: 418px;
            height: 69px;
        }
        .auto-style9 {
            font-size: x-large;
        }
        .auto-style11 {
        border-bottom: thin solid #FF00FF;
        width: 418px;
    }
    .auto-style13 {
        border-bottom: thin solid #FF00FF;
        width: 418px;
        height: 82px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style14">
            <tr>
                <td class="auto-style10"><strong><a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid") %>">
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style9" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </a></strong></td>
            </tr>
            <tr>
                <td class="auto-style11"><strong>
                    <br />
                        Malzemeler:</strong>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style11"><strong>
                    <br />
                        Yemek Tarifi:</strong>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style13"><strong>
                    <br />
                        Eklenme Tarihi: </strong>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>' ForeColor="White"></asp:Label>
                        &nbsp;-<strong><em> Puan: 
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>' ForeColor="White"></asp:Label>
                        &nbsp;<br />
                    <br />
                    </em></strong></td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

