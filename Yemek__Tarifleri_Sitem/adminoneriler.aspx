<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="adminoneriler.aspx.cs" Inherits="oneriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <style type="text/css">


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
        </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style9" __designer:mapid="0">
        <tr __designer:mapid="1">
            <td class="auto-style16" __designer:mapid="2"><strong __designer:mapid="3">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style19" Height="30px"  Text="+" OnClick="Button1_Click" />
                </strong></td>
            <td class="auto-style17" __designer:mapid="5"><strong __designer:mapid="6">
                <asp:Button ID="Button2" runat="server" CssClass="auto-style20" Height="30px"  Text="-" Width="60px" OnClick="Button2_Click"  />
                </strong></td>
            <td class="auto-style18" __designer:mapid="8">ONAYSIZ ÖNERİ LİSTESİ<br __designer:mapid="9" /></td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table class="auto-style9">
                    <tr>
                        <td class="auto-style38">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td>
                          <a href="adminonerilerdetay.aspx?Tarifid=<%# Eval("Tarifid") %>">  <asp:Image ID="Image7" runat="server" Height="20px" ImageUrl="~/resimler/inspect.jpg" Width="30px" /> </a>
                            </a></td>
                    </tr>
                    <tr>
                        <td class="auto-style38">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <table class="auto-style9" __designer:mapid="0">
        <tr __designer:mapid="1">
            <td class="auto-style16" __designer:mapid="2"><strong __designer:mapid="3">
                <asp:Button ID="Button3" runat="server" CssClass="auto-style19" Height="30px"  Text="+" OnClick="Button3_Click"  />
                </strong></td>
            <td class="auto-style17" __designer:mapid="5"><strong __designer:mapid="6">
                <asp:Button ID="Button4" runat="server" CssClass="auto-style20" Height="30px"  Text="-" Width="60px" OnClick="Button4_Click"   />
                </strong></td>
            <td class="auto-style18" __designer:mapid="8">ONAYLI ÖNERİ LİSTESİ<br __designer:mapid="9" /></td>
        </tr>
    </table>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <table class="auto-style9">
                    <tr>
                        <td class="auto-style38">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td>
                          <a href="adminonerilerdetay.aspx?Tarifid=<%# Eval("Tarifid") %>">  <asp:Image ID="Image8" runat="server" Height="20px" ImageUrl="~/resimler/inspect.jpg" Width="30px" /> </a>
                            </a></td>
                    </tr>
                    <tr>
                        <td class="auto-style38">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <br />
</asp:Content>

