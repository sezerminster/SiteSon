<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="önerAdmin.aspx.cs" Inherits="Site.önerAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            width: 441px;
        }
        .auto-style18 {
            width: 481px;
        }
        .auto-style19 {
            width: 331px;
        }
        .auto-style20 {
            color: #FF0000;
            font-size: x-large;
        }
        .auto-style21 {
            font-size: large;
        }
        .auto-style22 {
            color: #FF0000;
            font-size: medium;
        }
        .auto-style23 {
            width: 53px;
        }
        .auto-style24 {
            width: 54px;
        }
        .auto-style25 {
            width: 5px;
        }
        .auto-style26 {
            width: 4px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table class="auto-style14">
            <tr>
                <td class="auto-style25">
                    <asp:Button ID="Button1" runat="server" Text="+" OnClick="Button1_Click" Width="53px" Height="43px" />
                </td>
                <td class="auto-style26">
                    <asp:Button ID="Button2" runat="server" Text="-" OnClick="Button2_Click" Width="53px" Height="43px"/>
                </td>
                <td class="auto-style20"><em><strong>Onaylanmamış Kitap Özeti</strong></em></td>
            </tr>
        </table>
    </div>
    <div>
        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style14">
                <tr>
                    <td class="auto-style17">
                        <asp:DataList ID="DataList1" runat="server" Width="629px">
                            <ItemTemplate>
                                <table class="auto-style14" style="border: thin groove #FF0000">
                                    <tr>
                                        <td class="auto-style19">
                                            <span class="auto-style22"><strong>KİTAP ADI:</strong></span><asp:Label ID="Label1" runat="server" Text='<%# Eval("OzetADI") %>' CssClass="auto-style21"></asp:Label>
                                        </td>
                                        <td>
                                           <a href="önerdetay.aspx?OzetID=<%#Eval("OzetID")%>"> <asp:Image ID="Image2" runat="server" Height="46px" ImageUrl="~/resimler/refresh.jpg" Width="45px" /></a>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList>
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
    <div>

        <table class="auto-style14">
            <tr>
                <td class="auto-style23">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="+" Width="53px"  Height="43px" CssClass="auto-style13"/>
                </td>
                <td class="auto-style24">
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="-" Width="53px " Height="43px"/>
                </td>
                <td>
                    <strong><em><span class="auto-style20">Onaylanmış Kitap Özeti</span></em></strong>
                </td>
               
            </tr>
        </table>

    </div>
    <div>

        <asp:Panel ID="Panel2" runat="server">
            <table class="auto-style14" style="border: thin groove #FF0000">
                <tr>
                    <td class="auto-style18">
                        <asp:DataList ID="DataList2" runat="server" Width="628px">
                            <ItemTemplate>
                                <span class="auto-style22"><strong>ONAYLANAN KİTAP ADI:</strong></span><asp:Label ID="Label2" runat="server" Text='<%# Eval("OzetADI") %>' CssClass="auto-style21"></asp:Label>
                            </ItemTemplate>
                        </asp:DataList>
                    </td>
                </tr>
            </table>
        </asp:Panel>

    </div>
</asp:Content>
