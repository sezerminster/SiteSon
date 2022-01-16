<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="kategoridetay.aspx.cs" Inherits="Site.kategoridetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .auto-style15 {
        text-align: center;
        background-color: #99CCFF;
            width: 596px;
        }
    .auto-style14 {
        font-size: medium;
        color:black;
    }
        .auto-style24 {
            width: 596px;
            text-align: left;
        }
        .auto-style27 {
            font-size: large;
        }
        .auto-style28 {
            font-size: large;
            color: black;
        }
        .auto-style29 {
            font-size: large;
            color: black;
            width: 100%;
            }
        .auto-style30 {
            text-align: justify;
            width: 596px;
            font-size: 15pt;
            color: red;
            height: 29px;
            background-color: #99CCFF;
        }
        .auto-style31 {
            text-decoration: none;
        }
        .auto-style32 {
            color: black;
        }
        .auto-style35 {
            font-size: large;
            height: 26px;
            color: #0066FF;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="619px">
    <ItemTemplate>
        <table class="auto-style13">
            <tr>
                <td class="auto-style30" style="border: thin groove #FF0000"><strong><span class="auto-style32"><em>Kitabın Adı:</em></span><a href="OzetDetay.aspx?KitapID=<%# Eval("KitapID") %>" class="auto-style31"><asp:Label ID="Label3" runat="server" CssClass="auto-style29" Text='<%# Eval("KitapADI") %>'></asp:Label>
                    </a></strong></td>
            </tr>
            <tr>
                <td class="auto-style24" style="border: thin groove #FF0000"><strong><span class="auto-style35"><em>Karakterler:</em></span><asp:Label ID="Label4" runat="server" CssClass="auto-style27" Text='<%# Eval("KitapKARAKTERLERİ") %>'></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style24" style="border: thin groove #FF0000"><strong><span class="auto-style35"><em>Özeti:</em></span><asp:Label ID="Label5" runat="server" CssClass="auto-style27" Text='<%# Eval("KitapÖZETİ") %>'></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style24" style="border: thin groove #FF0000"><strong><span class="auto-style35"><em>Yazarı:</em></span><asp:Label ID="Label8" runat="server" CssClass="auto-style27" Text='<%# Eval("KitapYAZAR") %>'></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style24" style="border: thin groove #FF0000"><strong><span class="auto-style35"><em>Eklenme Tarihi:</em></span><asp:Label ID="Label6" runat="server" CssClass="auto-style27" Text='<%# Eval("KitapTARİH") %>'></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td style="border: thin groove #FF0000;" class="auto-style24"><strong><em><span class="auto-style35">Puan:</span></em><asp:Label ID="Label7" runat="server" CssClass="auto-style27" Text='<%# Eval("KitapPUAN") %>'></asp:Label>
                    </strong></td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>