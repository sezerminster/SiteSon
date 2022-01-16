<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="İletisim.aspx.cs" Inherits="Site.İletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style25 {
        width: 198px;
    }
        .auto-style27 {
            height: 3px;
            width: 198px;
            font-size: large;
        }
        .auto-style28 {
            width: 100%;
            height: 449px;
            margin-top:0px;
        }
        .auto-style29 {
            height: 17px;
            width: 198px;
            font-size: large;
        }
        .auto-style31 {
            width: 198px;
            height: 5px;
            margin-left: 200px;
        }
        .auto-style33 {
            width: 198px;
            height: 38px;
            font-size: large;
            margin-left: 200px;
        }
        .auto-style34 {
            height: 38px;
        }
        .auto-style35 {
            height: 3px;
        }
        .auto-style36 {
            height: 5px;
        }
        .auto-style37 {
            height: 17px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style28" style="border: thin groove #FF0000">
        <tr>
            <td class="auto-style33" style="border: thin groove #FF0000"><strong>Ad Soyad:</strong></td>
            <td class="auto-style34" style="border: thin groove #FF0000">
                <asp:TextBox ID="TextBoxAd" runat="server" Height="26px" Width="298px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style29" style="border: thin groove #FF0000"><strong>Mail:</strong></td>
            <td class="auto-style37" style="border: thin groove #FF0000">
                <asp:TextBox ID="TextBoxMail" runat="server" Width="304px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style27" style="border: thin groove #FF0000"><strong>Mesaj:</strong></td>
            <td class="auto-style35" style="border: thin groove #FF0000">
                <asp:TextBox ID="TextBoxMesaj" runat="server" CssClass="auto-style13" Height="114px" TextMode="MultiLine" Width="325px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style31" style="border: thin groove #FF0000"><strong></strong></td>
            <td class="auto-style36" style="border: thin groove #FF0000">
                <asp:Button ID="Button1" runat="server" Height="50px" OnClick="Button1_Click" Text="Gönder" Width="226px" />
            </td>
        </tr>
    </table>
</asp:Content>
