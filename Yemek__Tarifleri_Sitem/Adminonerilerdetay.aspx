<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Adminonerilerdetay.aspx.cs" Inherits="Adminonerilerdetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .auto-style14 {
        text-align: right;
        width: 125px;
    }
        .auto-style17 {
            border: 2px solid #456879;
            border-radius: 10px;
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
            margin-left: 186px;
        }
        .auto-style19 {
            width: 299px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style10">
            <tr>
                <td class="auto-style14"><strong></strong></td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">Tarif Ad:</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="300px" BackColor="#CCFFFF" CssClass="auto-style17"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Tarif Malzemeler<strong>:</strong></td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="300px" BackColor="#CCFFFF" CssClass="auto-style17"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>Yapılış::</strong></td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox3" runat="server" Height="80px" TextMode="MultiLine" Width="300px" BackColor="#CCFFFF" CssClass="auto-style17"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Tarif Resim:</td>
                <td class="auto-style19">
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="kutular" Width="300px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Tarif Öneren</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox5" runat="server" BackColor="#CCFFFF" CssClass="auto-style17" Height="20px" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Öneren Mail:</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox6" runat="server" BackColor="#CCFFFF" CssClass="auto-style17" Height="20px" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Kategori:</td>
                <td class="auto-style19">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="kutular" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"><strong></strong></td>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style18"  Text="Onayla" Width="121px" Height="38px" OnClick="Button1_Click" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

