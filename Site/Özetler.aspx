<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Özetler.aspx.cs" Inherits="Site.Özetler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style27 {
            width: 1332px;
            height: 20px;
           
            margin-left: 100px;
        }
   
        .auto-style29 {
            width: 1332px;
            height: 26px;
            text-align: left;
            margin-left: 100px;
        }
        .auto-style30 {
            font-size: x-large;
        }
        .auto-style31 {
            width: 352px;
            height: 26px;
            text-align: left;
            margin-left: 100px;
        }
        .auto-style32 {
            font-size: large;
            color: #6699FF;
        }
        .auto-style33 {
            font-size: x-large;
            color: #FF0000;
        }
   
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="693px" CssClass="auto-style30">
        <ItemTemplate>
            <table class="auto-style31">
                <tr>
                    <td colspan="2">
                        <a href="OzetDetay.aspx?KitapID=<%# Eval("KitapID") %>"> <asp:Image ID="Image3" runat="server" Height="573px" ImageUrl='<%# Eval("KitapRESİM") %>' Width="460px" /></a>
                    </td>
                </tr>
                <tr>
                   <td class="auto-style28" style="border: thin groove #FF0000"><strong>Kitap Adı:</strong></td>
                    <td class="auto-style29" style="border: thin groove #FF0000">
                      <a href="OzetDetay.aspx?KitapID=<%# Eval("KitapID") %>">  <strong>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("KitapADI") %>' CssClass="auto-style33"></asp:Label>
                        </strong></a>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style28" style="border: thin groove #FF0000"><strong>Kitap Yazarı:</strong></td>
                    <td class="auto-style25" style="border: thin groove #FF0000">
                        <strong>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("KitapYAZAR") %>' CssClass="auto-style32"></asp:Label>
                        </strong>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
