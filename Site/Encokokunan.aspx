<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Encokokunan.aspx.cs" Inherits="Site.Encokokunan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="635px">
        <ItemTemplate>
            <table class="auto-style14">
                <tr>
                    <td>Kitap adı:</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("KitapADI") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Kitap Karakterleri:</td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("KitapKARAKTERLERİ") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Özeti:</td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("KitapÖZETİ") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Kitap Resim:</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Kitap Tarih:</td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("KitapTARİH") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Kitap Paun:</td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("KitapPUAN") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Kitap Yayınevi:</td>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("KitapYAYINEVİ") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Önbilgi:</td>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("KitapONBILGI") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Kitabın Yazarı:</td>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("KitapYAZAR") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="border-bottom-style: inset; border-color: #C0C0C0; border-width: thick">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
