<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminYorumDetay.aspx.cs" Inherits="Site.AdminYorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style17 {
        width: 100%;
    }
    .auto-style18 {
        height: 21px;
    }
    .auto-style19 {
        height: 21px;
        font-size: large;
            width: 98%;
        }
    .auto-style20 {
        font-size: large;
        height: 26px;
            width: 98%;
        }
    .auto-style21 {
        height: 26px;
    }
        .auto-style22 {
            width: 98%;
            font-size: large;
        }
        .auto-style23 {
            width: 98%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style17">
    <tr>
        <td class="auto-style22" style="border: thin groove #FF0000"><strong><em>AD SOYAD:</em></strong></td>
        <td style="border: thin groove #FF0000">
            <asp:TextBox ID="TextBoxAd" runat="server" Width="169px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style19" style="border: thin groove #FF0000"><strong><em>MAİL:</em></strong></td>
        <td class="auto-style18" style="border: thin groove #FF0000">
            <asp:TextBox ID="TextBoxMail" runat="server" Width="169px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style20" style="border: thin groove #FF0000"><strong><em>İÇERİK:</em></strong></td>
        <td class="auto-style21" style="border: thin groove #FF0000">
            <asp:TextBox ID="TextBoxİcerik" runat="server" Height="50px" TextMode="MultiLine" Width="175px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style22" style="border: thin groove #FF0000"><strong><em>KİTAP:</em></strong></td>
        <td style="border: thin groove #FF0000">
            <asp:TextBox ID="TextBoxYemek" runat="server" Width="167px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style23" style="border: thin groove #FF0000"></td>
        <td style="border: thin groove #FF0000">
            <asp:Button ID="ButtonGüncelle" runat="server" Height="36px" OnClick="ButtonGüncelle_Click" Text="Onayla" Width="95px" />
        </td>
    </tr>
</table>
</asp:Content>