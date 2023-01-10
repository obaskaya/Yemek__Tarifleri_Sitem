<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <table class="auto-style25">
        <tr>
            <td class="auto-style12" colspan="2"><strong><span class="auto-style22">MESAJ PANELİ</span></strong></td>
        </tr>

        <tr>
            <td class="auto-style17"><strong><em>Ad Soyad:&nbsp; </em></strong></td>
            <td class="auto-style29"><strong><em>
                <asp:TextBox ID="txtad" runat="server" CssClass="auto-style26" Height="30px" Width="300px"></asp:TextBox>
            </em></strong></td>
        </tr>
        <tr>
            <td class="auto-style28"><em><strong>Mail:&nbsp; </strong></em></td>
                    <strong>
            <td class="auto-style29"><strong><em>
                <asp:TextBox ID="txtmail" runat="server" CssClass="kutular" BackColor="#CCFFFF" Height="30px" Width="300px"></asp:TextBox>
            </em></strong></td>
        </tr>
        <tr>
            <td class="auto-style31"><strong><em>Konu:&nbsp; </em></strong></td>
            <td class="auto-style32"><strong><em>
                <asp:TextBox ID="txtkonu" runat="server" CssClass="kutular" Height="30px" Width="300px"></asp:TextBox>
            </em></strong></td>
        </tr>
        <tr>
            <td class="auto-style30"><strong><em>Mesaj:&nbsp; </em></strong></td>
            <td class="auto-style24"><strong><em>
                <asp:TextBox ID="txtmesaj" runat="server" CssClass="auto-style27" Height="152px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </em></strong></td>
        </tr>
        <tr>
            <td class="auto-style23">&nbsp;</td>
            <td><strong>
                <asp:Button ID="Button1" runat="server" CssClass="button" Text="Mesaj Gönder" Width="186px" OnClick="Button1_Click" />
            </strong></td>
        </tr>
    </table>
</asp:Content>

