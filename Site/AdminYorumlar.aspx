<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminYorumlar.aspx.cs" Inherits="Site.AdminYorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            width: 100%;
        }
        .auto-style19 {
            width: 41px;
            height:33px;
        }
        .auto-style20 {
             width: 41px;
            height:33px;
        }
        .auto-style21 {
            width: 347px;
        }
        .auto-style22 {
            width: 100%;
            color: #FF0000;
            font-size: x-large;
        }
        .auto-style23 {
            color: #FF0000;
            
        }
        .auto-style24 {
            font-size: x-large;
        }
    .auto-style25 {
        color: #FF0000;
        font-size: large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style17">
            <tr>
                <td class="auto-style19">
                    <asp:Button ID="ButtonArtı" runat="server" Text="+" Height="43px" OnClick="ButtonArtı_Click"  Width="54px" />
                </td>
                <td class="auto-style20">
                    <asp:Button ID="ButtonEksi" runat="server" Text="-" OnClick="ButtonEksi_Click" Width="54px" CssClass="auto-style13" Height="43px" />
                </td>
                <td class="auto-style22"><strong><em>ONAYLI YORUM LİSTESİ</em></strong></td>
            </tr>
            </table>
          </asp:Panel>
      
                    <asp:Panel ID="Panel2" runat="server">
                        <asp:DataList ID="DataList2" runat="server" Width="619px">
                            <ItemTemplate>
                                <table class="auto-style17">
                                    <tr>
                                        <td class="auto-style21" style="border: thin groove #FF0000">
                                            <span class="auto-style25"><strong>Yorumu Yapan:</strong></span><asp:Label ID="Label2" runat="server" Text='<%# Eval("YorumADSOYAD") %>' CssClass="auto-style24"></asp:Label>
                                        </td>
                                        <td style="border: thin groove #FF0000">
                                            <a href="AdminYorumlar.aspx?YorumID=<%#Eval("YorumID")%>&islem=sil"> <asp:Image ID="Image4" runat="server" Height="32px" ImageUrl="~/resimler/sil.jpg" Width="36px" /></a>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList>
                    </asp:Panel>
            
                
               
         
  
<asp:Panel ID="Panel3" runat="server">
        <table class="auto-style17">
            <tr>
                <td class="auto-style19">
                    <asp:Button ID="Button1" runat="server" Text="+" Height="43px"   Width="54px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style20">
                    <asp:Button ID="Button2" runat="server" Text="-"  Width="54px" CssClass="auto-style13" Height="43px" OnClick="Button2_Click" />
                </td>
                <td class="auto-style22"><strong><em>ONAYSIZ YORUM LİSTESİ</em></strong></td>
            </tr>
            </table>
          </asp:Panel>


    <asp:Panel ID="Panel4" runat="server">
                        <asp:DataList ID="DataList1" runat="server" Width="621px">
                            <ItemTemplate>
                                <table class="auto-style17">
                                    <tr>
                                        <td class="auto-style21" style="border: thin groove #FF0000">
                                            <span class="auto-style23"><strong>Yorumu Yapan:</strong></span><asp:Label ID="Label2" runat="server" Text='<%# Eval("YorumADSOYAD") %>' CssClass="auto-style24"></asp:Label>
                                        </td>
                                        <td style="border: thin groove #FF0000">
                                            <a href="AdminYorumlar.aspx?YorumID=<%#Eval("YorumID")%>&islem=sil"> <asp:Image ID="Image4" runat="server" Height="32px" ImageUrl="~/resimler/sil.jpg" Width="36px" /></a>
                                        </td>
                                        <td style="border: thin groove #FF0000">
                                           <a href="AdminYorumDetay.aspx?YorumID=<%#Eval("YorumID")%>">  <asp:Image ID="Image5" runat="server" Height="27px" ImageUrl="~/resimler/refresh.jpg" Width="30px" />
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList>
                    </asp:Panel>

</asp:Content>