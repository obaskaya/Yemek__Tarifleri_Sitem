<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Hakkimizda.aspx.cs" Inherits="Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
    <style type="text/css">

       

    </style>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p class="auto-style33">
        &nbsp;</p>
    <p class="auto-style33">
        <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl="~/resimler/hakkimizda.jpg" Width="703px" CssClass="auto-style36" />
    </p>
    <asp:DataList ID="DataList2" runat="server" CssClass="auto-style35">
        <ItemTemplate>
            <br />
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>
    <br />
</asp:Content>

