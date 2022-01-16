<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriAdminDetay.aspx.cs" Inherits="Site.KategoriAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">   <style type="text/css">
        .auto-style17 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <table class="auto-style17">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>KATEGORİ AD:</td>
            <td>
                <asp:TextBox ID="TextBoxKatAd" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>ADET:</td>
            <td>
                <asp:TextBox ID="TextBoxAdet" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>RESİM:</td>
            <td>
                <asp:FileUpload ID="FileUploadGörüntü" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="ButtonGüncelle" runat="server" Height="28px" OnClick="ButtonGüncelle_Click" Text="Güncelle" Width="97px" />
            </td>
        </tr>
    </table>
</asp:Content>