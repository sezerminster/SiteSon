<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="önerdetay.aspx.cs" Inherits="Site.önerdetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style17 {
        width: 635px;
    }
    .auto-style18 {
        width: 587px;
    }
    .auto-style19 {
        width: 587px;
        height: 23px;
    }
    .auto-style20 {
        width: 635px;
        height: 23px;
    }
        .auto-style22 {
            width: 587px;
            height: 28px;
        }
        .auto-style23 {
            width: 635px;
            height: 28px;
            text-align: left;
        }
        .auto-style24 {
            width: 635px;
            color: #FF0000;
            font-size: x-large;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style17"></td>
        </tr>
        <tr>
            <td class="auto-style18">KİTAP ADI:</td>
            <td class="auto-style24">
                <asp:TextBox ID="TextBoxAd" runat="server" Width="174px" CssClass="auto-style13"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">KİTAP KARAKTERLERİ:</td>
            <td class="auto-style24">
                <asp:TextBox ID="TextBoxMalzeme" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">KİTAP ÖZETİ:</td>
            <td class="auto-style24">
                <asp:TextBox ID="TextBoxYapilis" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">KİTAP RESİM:</td>
            <td class="auto-style20">
                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("OzetKitapFoto") %>' Height="497px" Width="257px" />
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td class="auto-style22">KİTABI ÖNEREN:</td>
            <td class="auto-style23">
                <asp:TextBox ID="TextBoxÖneren" runat="server" Width="171px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">MAİL:</td>
            <td class="auto-style24">
                <asp:TextBox ID="TextBoxMail" runat="server" TextMode="Email" Width="170px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">KİTABIN KATEGORİSİ:</td>
            <td class="auto-style24">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="176px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">KİTABIN YAZARI:</td>
            <td class="auto-style24">
                <asp:TextBox ID="TextBoxyazar" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style24">
                <asp:Button ID="ButtonOnay" runat="server" Height="30px" Text="Onayla" Width="210px" OnClick="ButtonOnay_Click" />
            </td>
        </tr>
    </table>
</asp:Content>