<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="adminYemekler.aspx.cs" Inherits="Yemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style12 {
            background-color: #00FFFF;
        }

        .auto-style16 {
            width: 57px;
            height: 34px;
        }

        .auto-style17 {
            width: 136px;
            height: 34px;
        }
        .auto-style18 {
            width: 224px;
            height: 34px;
        }
        .auto-style19 {
            align-items: center;
            appearance: none;
            background-color: #FCFCFD;
            border-radius: 4px;
            border-width: 0;
            box-shadow: rgba(45, 35, 66, 0.4) 0 2px 4px,rgba(45, 35, 66, 0.3) 0 7px 13px -3px,#D6D6E7 0 -3px 0 inset;
            box-sizing: border-box;
            color: #36395A;
            cursor: pointer;
            display: inline-flex;
            font-family: "JetBrains Mono",monospace;
            height: 31px;
            justify-content: center;
            line-height: 1;
            list-style: none;
            overflow: hidden;
            padding-left: 16px;
            padding-right: 16px;
            position: relative;
            text-align: left;
            text-decoration: none;
            transition: box-shadow .15s,transform .15s;
            user-select: none;
            -webkit-user-select: none;
            touch-action: manipulation;
            white-space: nowrap;
            will-change: box-shadow,transform;
            font-size: 18px;
            left: 1px;
            top: 0px;
            width: 59px;
        }
        .auto-style20 {
            align-items: center;
            appearance: none;
            background-color: #FCFCFD;
            border-radius: 4px;
            border-width: 0;
            box-shadow: rgba(45, 35, 66, 0.4) 0 2px 4px,rgba(45, 35, 66, 0.3) 0 7px 13px -3px,#D6D6E7 0 -3px 0 inset;
            box-sizing: border-box;
            color: #36395A;
            cursor: pointer;
            display: inline-flex;
            font-family: "JetBrains Mono",monospace;
            height: 35px;
            justify-content: center;
            line-height: 1;
            list-style: none;
            overflow: hidden;
            padding-left: 16px;
            padding-right: 16px;
            position: relative;
            text-align: left;
            text-decoration: none;
            transition: box-shadow .15s,transform .15s;
            user-select: none;
            -webkit-user-select: none;
            touch-action: manipulation;
            white-space: nowrap;
            will-change: box-shadow,transform;
            font-size: 18px;
            left: -2px;
            top: 0px;
            width: 57px;
        }
        .auto-style24 {
            width: 57px;
            height: 29px;
        }
        .auto-style25 {
            width: 136px;
            height: 29px;
        }
        .auto-style26 {
            width: 224px;
            height: 29px;
        }
        .auto-style27 {
            width: 179px;
        }
        .auto-style28 {
            border: 2px solid #456879;
            border-radius: 10px;
            background-color: #CCFFFF;
        }
        .auto-style30 {
            width: 26px;
        }
        .auto-style38 {
            width: 424px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style12">
        <table class="auto-style9">
            <tr>
                <td class="auto-style16">
                    <strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style19" Height="30px" Text="+" OnClick="Button1_Click" />
                    </strong>
                </td>
                <td class="auto-style17">
                    <strong>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style20" Height="30px"  Text="-" Width="60px" OnClick="Button2_Click" />
                    </strong>
                </td>
                <td class="auto-style18">YEMEK LİSTESİ<br />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table class="auto-style9">
                    <tr>
                        <td class="auto-style38">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style30">
                         <a href="adminYemekler.aspx?Yemekid=<%#Eval("Yemekid") %>&islem=sil">  <asp:Image ID="Image6" runat="server" Height="20px" ImageUrl="~/resimler/t.png" Width="35px" />  </a>
                        </td>
                        <td>
                          <a href="adminYemeklerDuzen.aspx?Yemekid=<%#Eval("kategoriid") %>">  <asp:Image ID="Image7" runat="server" Height="20px" ImageUrl="~/resimler/b.png" Width="30px" />  </a>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style38">&nbsp;</td>
                        <td class="auto-style30">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
 <asp:Panel ID="Panel3" runat="server" BackColor="Cyan">
        <table class="auto-style9">
            <tr>
                <td class="auto-style24"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style19" Height="30px" Text="+" OnClick="Button3_Click" />
                    </strong></td>
                <td class="auto-style25"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style20" Height="30px"  Text="-" Width="60px" OnClick="Button4_Click" />
                    </strong></td>
                <td class="auto-style26">YEMEK EKLEME<br /> </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style9">
            <tr>
                <td class="auto-style27">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style27">YEMEK AD:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style28" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">YEMEK MALZEMELER:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style28" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">YEMEK TARİFİ:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style28" Height="200px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">KATEGORİ:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">&nbsp;</td>
                <td>
                    <asp:Button ID="BtnEkle" runat="server" CssClass="button"  Text="Ekle" Width="85px" OnClick="BtnEkle_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>


