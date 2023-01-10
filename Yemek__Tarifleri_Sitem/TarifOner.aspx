<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="TarifOner.aspx.cs" Inherits="Tarif" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style8 {
            text-align: left;
        }

        .auto-style9 {
            text-align: right;
            height: 26px;
        }

        .auto-style10 {
            height: 26px;
        }

        .auto-style11 {
            font-weight: bold;
            text-align: left;          
        }

        .auto-style16 {
            height: auto;
            width: 24%;
            text-align: right;
            background-color: #dfbef8;
        }

        .auto-style17 {
            font-size: x-large;
            text-align: right;
            height: 26px;
            width: 24%;
        }

        .auto-style18 {
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
            margin-left: 102px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <table class="auto-style5">
        <tr>
            <td>
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style16">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style16">Tarif Ad:</td>
                        <td>
                            <asp:TextBox ID="TxtTarifAd" runat="server" Width="250px" BackColor="#CCFFFF" CssClass="kutular"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16">Malzemeler:</td>
                        <td>
                            <asp:TextBox ID="TxtMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="250px" BackColor="#CCFFFF" CssClass="kutular"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16">Yapılış:</td>
                        <td>
                            <asp:TextBox ID="TxtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="250px" BackColor="#CCFFFF" CssClass="kutular"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16">Resim:</td>
                        <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" Width="256px" BackColor="#CCFFFF" CssClass="auto-style26" Height="30px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16">Tarif Öneren:</td>
                        <td>
                            <asp:TextBox ID="TxtTarifOneren" runat="server" Width="250px" BackColor="#CCFFFF" CssClass="kutular"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16">Mail Adresi:</td>
                        <td class="auto-style10">
                            <asp:TextBox ID="TxtMailAdresi" runat="server" Width="250px" BackColor="#CCFFFF" CssClass="kutular"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style10"><strong><em>
                            <asp:Button ID="BtnTarifOner" runat="server" BackColor="#CCFFFF" CssClass="auto-style18" Height="40px" Text="Tarif Öner" Width="150px" OnClick="BtnTarifOner_Click" />
                        </em></strong></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

