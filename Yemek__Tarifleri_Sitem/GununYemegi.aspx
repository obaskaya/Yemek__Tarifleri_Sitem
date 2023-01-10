<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style8 {
            font-size: x-large;
        }

       

        .auto-style12 {
            height: 23px;
            width: 700px;
        }

        .auto-style13 {
            width: 356px;
            text-align: left;
        }

        .auto-style14 {
            width: 356px;
            text-align: right;
        }

        .auto-style19 {
            width: 100%;
            height: auto;  
            background-color: #dfbef8;
            border-radius: 10px;
        }
        .auto-style20 {
            text-align: center;
            width: 700px;
        }
        .auto-style21 {
            width: 700px;
        }
        .auto-style22 {
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style19">
                <tr>
                    <td class="auto-style20"><strong>
                        <asp:Label ID="Label13" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </strong></td>
                </tr>
                <tr>
                    <td class="auto-style21"><strong>Malzemeler:</strong>
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style21"><strong>Tarif:</strong>
                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style20">
                        <asp:Image ID="Image2" runat="server" Height="159px" ImageUrl='<%# Eval("YemekResim") %>' Width="275px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <table class="auto-style5">
                            <tr>
                                <td class="auto-style13"><strong>Puan:</strong>
                                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                                    <strong><em>&nbsp;</em></strong></td>
                                <td class="auto-style14"><strong><em>Eklenme Tarihi:</em></strong>
                                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>

</asp:Content>

