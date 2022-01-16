<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Adminmesaj.aspx.cs" Inherits="Site.Mesaj" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            width: 100%;
        }
        .auto-style19 {
            height: 22px;
            font-size: x-large;
            color: #FF0000;
        }
        .auto-style20 {
            height: 33px;
            width: 41px;
        }
        .auto-style21 {
             height: 33px;
            width: 41px;
        }
        .auto-style22 {
            margin-left: 5px;
        }
        .auto-style23 {
            height: 22px;
            width: 632px;
        }
        .auto-style24 {
            width: 313px;
        }
        .auto-style25 {
            font-size: large;
            color: #FF0000;
        }
        .auto-style26 {
            font-size: x-large;
        }
        .auto-style27 {
            width: 265px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style17">
            <tr>
                <td class="auto-style21">
                    <asp:Button ID="ButtonArtı" runat="server" Text="+" Width="54px" Height="43px" OnClick="ButtonArtı_Click" />
                </td>
                <td class="auto-style20">
                    <asp:Button ID="ButtonEksi" runat="server" CssClass="auto-style22" Text="-" Width="54px" Height="43px" OnClick="ButtonEksi_Click" />
                </td>
                <td class="auto-style19"><strong><em>MESAJ LİSTESİ</em></strong></td>
            </tr>
            </table>
        <table>
            <tr>
                <td class="auto-style23">
                    <asp:Panel ID="Panel2" runat="server">
                        <asp:DataList ID="DataList1" runat="server" Width="623px">
                            <ItemTemplate>
                                <table class="auto-style17" style="border: thin groove #FF0000">
                                    <tr>
                                        <td class="auto-style24">
                                            <strong><span class="auto-style25">Mesaj Gönderen:</span></strong><asp:Label ID="Label1" runat="server" Text='<%# Eval("MesajAdSoyad") %>' CssClass="auto-style26"></asp:Label>
                                        </td>
                                        <td class="auto-style27">
                                            <asp:Image runat="server" />
                                            <asp:Image ID="Image3" runat="server" Height="32px" ImageUrl="~/resimler/sil.jpg" Width="78px" />
                                            <td class="auto-style27"><a href='MesajDetay.aspx?MesajID=<%# Eval("MesajID")%> '>
                                                <asp:Image ID="Image2" runat="server" Height="31px" ImageUrl="~/resimler/message.png" Width="39px" />
                                                </a>
                                                </t </tr="">
                                            </td>
                                </table>
                            </ItemTemplate>
                        </asp:DataList>
                    </asp:Panel>
                </td>
                
            </tr>
        </table>
    </asp:Panel>
</asp:Content>