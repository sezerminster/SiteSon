<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="uyeol.aspx.cs" Inherits="Site.uyeol" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
     
   
        .auto-style29 {
        text-align: left;
    }
     
   
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style14">
        <tr>
            <td class="auto-style29"><span class="auto-style32">E posta Adresi:</span><asp:TextBox ID="Textmail" runat="server" TextMode="Email" Width="279px" CssClass="auto-style31" Height="34px"></asp:TextBox>
                <br />
                </td>
        </tr>
        <tr>
            <td class="auto-style29"><br />
                <span class="auto-style32">Şifrerini Giriniz:</span><asp:TextBox ID="Textsifre" runat="server" CssClass="auto-style34" TextMode="Password" Width="261px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style29"> <br />
                <span class="auto-style32"> 
                <br />
                Şifrenizi
                Tekrar Giriniz:</span><asp:TextBox ID="Texttekrar" runat="server" TextMode="Password" Width="296px" CssClass="auto-style36" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style29"><br />
                <span class="auto-style32">Ad Soyad:<asp:TextBox ID="Textad" runat="server" Width="332px" CssClass="auto-style38" Height="26px"></asp:TextBox>
                </span></td>
        </tr>
        <tr>
            <td class="auto-style29"><br />
                <span class="auto-style32">Kullanıcı Adı:</span>
                <asp:TextBox ID="Textkulad" runat="server" Width="306px" CssClass="auto-style36"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;<asp:Panel ID="Panel1" runat="server" Width="168px">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </asp:Panel>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="ButtonUye" runat="server" OnClick="ButtonUye_Click" Text="Kayıt Ol" Width="235px" />
                </td>
        </tr>
        </table>
</asp:Content>