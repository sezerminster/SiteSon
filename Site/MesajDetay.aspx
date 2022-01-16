<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajDetay.aspx.cs" Inherits="Site.MesajDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style17 {
        width: 622px;
    }
        .auto-style18 {
            font-size: x-large;
            color: #FF0000;
        }
        .auto-style19 {
            text-align: left;
            font-size: large;
        }
        .auto-style20 {
            text-align: left;
            font-size: large;
            height: 40px;
        }
        .auto-style21 {
            text-align: left;
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style17">
        <tr>
            <td> </td>
            <td class="auto-style18"><strong><em>MESAJ İLE İLGİLİ BİLGİLER</em></strong></td>
        </tr>



        <tr>
            <td class="auto-style19" style="border: thin groove #FF0000"> AD SOYAD:</td>
            <td class="auto-style16" style="border: thin groove #FF0000">
                <asp:TextBox ID="TextBoxAd" runat="server" Width="181px"></asp:TextBox>
            </td>
        </tr>



        <tr>
            <td class="auto-style19" style="border: thin groove #FF0000"> MAİL:</td>
            <td class="auto-style16" style="border: thin groove #FF0000">
                <asp:TextBox ID="TextBoxMail" runat="server" TextMode="Email" Width="181px"></asp:TextBox>
            </td>
        </tr>



        <tr>
            <td class="auto-style20" style="border: thin groove #FF0000"> İÇERİK:</td>
            <td class="auto-style21" style="border: thin groove #FF0000">
                <asp:TextBox ID="TextBoxİcerik" runat="server" Height="49px" TextMode="MultiLine" Width="186px"></asp:TextBox>
            </td>
        </tr>



        </table>


</asp:Content>