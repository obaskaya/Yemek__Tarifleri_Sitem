<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="adminYorumlar.aspx.cs" Inherits="Yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style12 {
            background-color: #00FFFF;
        }

        .auto-style16 {
            width: 57px;
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
        
        .auto-style17 {
            width: 71px;
            height: 34px;
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
        .auto-style18 {
            width: 224px;
            height: 34px;
        }
        .auto-style38 {
            width: 424px;
        }
        .auto-style30 {
            width: 26px;
        }
        .auto-style39 {
            width: 72px;
            height: 34px;
        }
        .auto-style40 {
            width: 13px;
            height: 34px;
        }
        .auto-style41 {
            width: 257px;
            height: 34px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style12">
        <table class="auto-style9">
            <tr>
                <td class="auto-style16"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style19" Height="30px"  Text="+" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style20" Height="30px"  Text="-" Width="60px" OnClick="Button2_Click" />
                    </strong></td>
                <td class="auto-style18">ONAYLANAN YORUM LİSTESİ<br /> </td>
            </tr>
        </table>
    </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
            <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                    <table class="auto-style9">
                        <tr>
                            <td class="auto-style38">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </td>
                            <td class="auto-style30">
                               <a href="adminYorumlar.aspx?Yorumid=<%#Eval("Yorumid") %>&islem=sil"> <asp:Image ID="Image6" runat="server" Height="20px" ImageUrl="~/resimler/t.png" Width="35px" />     </a>
                                </td>
                            <td>
                              <a href="adminYorumDetay.aspx?Yorumid=<%#Eval("Yorumid") %>">  <asp:Image ID="Image7" runat="server" Height="20px" ImageUrl="~/resimler/b.png" Width="30px" />   </a>
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
    <br />
     <asp:Panel ID="Panel3" runat="server" CssClass="auto-style12">
        <table class="auto-style9">
            <tr>
                <td class="auto-style16"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style19" Height="30px"  Text="+" OnClick="Button3_Click"  />
                    </strong></td>
                <td class="auto-style40"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style20" Height="30px"  Text="-" Width="60px" OnClick="Button4_Click"  />
                    </strong></td>
                <td class="auto-style41">ONAYLANMAMIŞ YORUM LİSTESİ<br /> </td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style40">&nbsp;</td>
                <td class="auto-style41">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
         <asp:Panel ID="Panel4" runat="server">
            <asp:DataList ID="DataList2" runat="server">
                <ItemTemplate>
                    <table class="auto-style9">
                        <tr>
                            <td class="auto-style38">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </td>
                            <td class="auto-style30">
                              <a href="adminYorumlar.aspx?Yorumid=<%#Eval("Yorumid") %>&islem=sil">  <asp:Image ID="Image6" runat="server" Height="20px" ImageUrl="~/resimler/t.png" Width="35px" /> </a>
                                </td>
                            <td>
                             <a href="adminYorumDetay.aspx?Yorumid=<%#Eval("Yorumid") %>">   <asp:Image ID="Image7" runat="server" Height="20px" ImageUrl="~/resimler/b.png" Width="30px" /></a>
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
    <br />
</asp:Content>

