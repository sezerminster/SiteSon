<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="arama.aspx.cs" Inherits="Site.arama" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
  
        .auto-style31 {
            width: 180px;
        }
        .auto-style32 {
            text-align: left;
        }
        .auto-style33 {
            width: 163px;
            text-align: left;
        }
  
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server"  >
    <ItemTemplate>
        <table >
            <tr>
                <td  colspan="2" style="border: thin groove #FF0000"><strong>
                    <asp:Label ID="Label3" runat="server"  Text='<%# Eval("KitapADI") %>'></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style31" style="border: thin groove #FF0000"><strong>Kitap Karakterleri:</strong></td>
                <td class="auto-style32" style="border: thin groove #FF0000" >
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("KitapKARAKTERLERİ") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style31" style="border: thin groove #FF0000" ><strong>Kitap Özeti:</strong></td>
                <td class="auto-style32" style="border: thin groove #FF0000" >
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("KitapÖZETİ") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style31" style="border: thin groove #FF0000" ><strong>Kitap Resim:</strong></td>
                <td style="border: thin groove #FF0000">
                    <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("KitapRESİM") %>' Height="490px" Width="402px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style31" style="border: thin groove #FF0000"><strong>Kitap Tarih:</strong></td>
                <td class="auto-style32" style="border: thin groove #FF0000" >
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("KitapTARİH") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style31" style="border: thin groove #FF0000" ><strong>Kitap Puan:</strong></td>
                <td class="auto-style32" style="border: thin groove #FF0000" >
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("KitapPUAN") %>'></asp:Label>
                </td>
            </tr>
            <tr>


                <td class="auto-style31" style="border: thin groove #FF0000"><strong>Kitap Yazarı:</strong></td>
                <td class="auto-style33" style="border: thin groove #FF0000">
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("KitapYAZAR") %>'></asp:Label>
                </td>
            </tr>
            <tr>


                <td class="auto-style31" style="border: thin groove #FF0000"><strong>Kitap Kategori:</strong></td>
                <td class="auto-style33" style="border: thin groove #FF0000">
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("KategoriAdı") %>'></asp:Label>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

