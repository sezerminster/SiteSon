<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminkitapdetay.aspx.cs" Inherits="Site.adminkitapdetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            width: 100%;
        }
        .auto-style18 {
            height: 29px;
            width: 241px;
        }
        .auto-style19 {
            width: 383px;
        }
        .auto-style20 {
            height: 29px;
            width: 383px;
        }
        .auto-style21 {
            width: 241px;
        }
        .auto-style22 {
            width: 241px;
            height: 161px;
        }
        .auto-style23 {
            width: 383px;
            height: 161px;
        }
        .auto-style24 {
            width: 635px;
            height: auto;
            background-color: #99CCFF;
            float: left;
            text-align: center;
            margin-left: 3px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style17">
        <tr>
            <td class="auto-style21" style="border: thin groove #FF0000"><strong>Kitap Adı:</strong></td>
            <td class="auto-style19" style="border: thin groove #FF0000">
                <asp:TextBox ID="TextBoxAd" runat="server" CssClass="auto-style13" Width="209px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style21" style="border: thin groove #FF0000"><strong>Kitap Karakterleri:</strong></td>
            <td class="auto-style19" style="border: thin groove #FF0000">
                <asp:TextBox ID="TextBoxkarakter" runat="server" Height="45px" TextMode="MultiLine" Width="207px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style21" style="border: thin groove #FF0000"><strong>Kitap Özeti:</strong></td>
            <td class="auto-style19" style="border: thin groove #FF0000">
                <asp:TextBox ID="TextBoxozet" runat="server" Height="88px" TextMode="MultiLine" Width="208px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style21" style="border: thin groove #FF0000"><strong>Kitap Puanı:</strong></td>
            <td class="auto-style19" style="border: thin groove #FF0000">
                <asp:TextBox ID="TextBoxPuan" runat="server" Width="203px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style21" style="border: thin groove #FF0000"><strong>Kitap Kategori:</strong></td>
            <td class="auto-style19" style="border: thin groove #FF0000">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="210px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style18" style="border: thin groove #FF0000"><strong>Kitap Fotoğrafı:</strong></td>
            <td class="auto-style20" style="border: thin groove #FF0000">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="207px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style22" style="border: thin groove #FF0000"><strong>Şu anki Fotoğraf:</strong></td>
            <td class="auto-style23" style="border: thin groove #FF0000">
                <asp:DataList ID="DataList1" runat="server" Width="382px">
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("KitapRESİM") %>' Width="221px" Height="301px" />
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td class="auto-style21" style="border: thin groove #FF0000"><strong>Kitap Yazar</strong></td>
            <td class="auto-style19" style="border: thin groove #FF0000">
                <asp:TextBox ID="TextBoxyazar" runat="server" Width="212px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style21" style="border: thin groove #FF0000">Slidere seçili mi?</td>
            <td class="auto-style19" style="border: thin groove #FF0000">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Seçili" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:CheckBox ID="CheckBox2" runat="server" Text="Seçili değil" />
            </td>
        </tr>
        <tr>
            <td class="auto-style21" style="border: thin groove #FF0000"></td>
            <td class="auto-style19" style="border: thin groove #FF0000">
                <asp:Button ID="ButtonGüncelle" runat="server" Height="33px" OnClick="ButtonGüncelle_Click" Text="GÜNCELLE" Width="222px" />
            </td>
        </tr>
    </table>
</asp:Content>