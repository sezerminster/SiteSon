<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Ozetver.aspx.cs" Inherits="Site.Ozetver" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style23 {
            width: 100%;
            height: 665px;
        }
    .auto-style24 {
        
        background-color: #FFFFCC;
    }
    .auto-style25 {
        height: 200px;
    }
        .auto-style27 {
            width: 682px;
            height: 33px;
            margin-left: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style27">
    <tr>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td><strong>Kitap Ad:</strong></td>
        <td>
            <asp:TextBox ID="TextBoxAd" runat="server" Width="363px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td><strong>Kitap Karakterleri:</strong></td>
        <td>
            <asp:TextBox ID="TextBoxKarakter" runat="server" Width="361px" Height="37px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style25"><strong>Kitap Özeti:</strong></td>
        <td class="auto-style25">
            <asp:TextBox ID="TextBozOzet" runat="server" Height="192px" TextMode="MultiLine" Width="355px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td><strong>Kitap Resmi:</strong></td>
        <td>
            <asp:FileUpload ID="FileUploadResim" runat="server" Width="377px" />
        </td>
    </tr>
   
    <tr>
        <td><strong>Yazar:</strong></td>
        <td>
            <asp:TextBox ID="TextBoxYazar" runat="server" Width="364px"></asp:TextBox>
        </td>
    </tr>
  
    <tr>
        <td class="auto-style24"><strong>Özet Öneren:</strong></td>
        <td class="auto-style24">
            <asp:TextBox ID="TextBoxKisi" runat="server" Width="353px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style24"><strong>Mail:</strong></td>
        <td class="auto-style24">
            <asp:TextBox ID="TextBoxMail" runat="server" Width="354px" TextMode="Email"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style24"></td>
        <td class="auto-style24">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Gönder" Width="131px" />
        </td>
    </tr>
</table>
</asp:Content>
