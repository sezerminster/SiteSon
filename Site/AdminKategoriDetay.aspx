<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminKategoriDetay.aspx.cs" Inherits="Site.AdminKategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style17">
        <tr>
            <td>KATEGORİ AD:</td>
            <td>
                <asp:TextBox ID="TextBoxKatAd" runat="server" Height="29px" Width="179px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="ButtonGüncelle" runat="server" Height="28px" OnClick="ButtonGüncelle_Click" Text="Güncelle" Width="185px" />
            </td>
        </tr>
    </table>
</asp:Content>