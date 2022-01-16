<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminkategori.aspx.cs" Inherits="Site.Kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style17 {
        width: 100%;
    }
    .auto-style18 {
        text-align: center;
    }
    .auto-style20 {
        width: 362px;
    }
        .auto-style22 {
            width: 58px;
        }
        .auto-style23 {
            text-align: left;
            font-size: x-large;
            color: #CC0000;
        }
        .auto-style24 {
            width: 58px;
        }
        .auto-style29 {
            width:58px;
            height: 33px;
        }
        .auto-style30 {
            width: 58px;
            height: 33px;
        }
        .auto-style31 {
            height: 33px;
            text-align: left;
        }
        .auto-style32 {
            width: 606px;
        }
        .auto-style33 {
            width: 309px;
            font-size: large;
        }
        .auto-style34 {
            width: 100%;
            font-size: x-large;
            color: #FF0000;
        }
        .auto-style35 {
            font-size: x-large;
            color: #FF0000;
        }
        .auto-style36 {
            margin-top: 2px;
        }
        .auto-style37 {
            color: #FF0000;
        }
        .auto-style38 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
    <div class="auto-style18">
        <table class="auto-style17">
            <tr>
                <td class="auto-style24">
                    <asp:Button ID="ButtonArtı" runat="server" Font-Size="Medium" Text="+" Width="46px" Font-Bold="True" OnClick="ButtonArtı_Click" Height="31px" />
                </td>
                <td class="auto-style22"><strong>
                    <asp:Button ID="ButtonEksi" runat="server" Text="-" Width="46px" Font-Bold="True" Font-Italic="False" OnClick="ButtonEksi_Click" Height="31px" />
                    </strong></td>
                <td class="auto-style23"><strong><em><span class="auto-style37">KATEGORİ LİSTESİ</span></em></strong></td>
            </tr>
        </table>
        </div>
    </asp:Panel>
      <asp:Panel ID="Panel2" runat="server">
          <asp:DataList ID="DataList1" runat="server" Width="627px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
              <ItemTemplate>
                  <table class="auto-style17">
                      <tr>
                          <td class="auto-style20" style="border: thin groove #FF0000;">
                              <strong>
                              <asp:Label ID="Label1" runat="server" CssClass="auto-style38" Text='<%# Eval("KategoriAdı") %>'></asp:Label>
                              </strong></a>
                          </td>

                          <td class="auto-style18" style="border: thin groove #FF0000;">
                              <a href="adminkategori.aspx?KategoriID=<%#Eval("KategoriID")%>&islem=sil">
                              <asp:Image ID="Image2" runat="server" Height="21px" ImageUrl="~/resimler/sil.jpg" Width="29px" /></a>
                          </td>
                          <td class="auto-style18" style="border: thin groove #FF0000;">
                              <a href="AdminKategoriDetay.aspx?KategoriID=<%#Eval("KategoriID")%>"><asp:Image ID="Image3" runat="server" Height="28px" ImageUrl="~/resimler/refresh.jpg" Width="27px" /></a>
                          </td>
                      </tr>
                  </table>
                 
              </ItemTemplate>
               
          </asp:DataList>
    </asp:Panel>
  <asp:Panel ID="Panel3" runat="server" style= "margin-top:10px;">
          <table class="auto-style17">
              <tr>
                  <td class="auto-style29">
                      <asp:Button ID="ButtonArtı0" runat="server" Font-Bold="True" Font-Size="Medium" OnClick="ButtonArtı0_Click" Text="+" Width="46px" Height="31px" />
                  </td>
                  <td class="auto-style30"><strong>
                      <asp:Button ID="ButtonEksi0" runat="server" CssClass="auto-style13" Font-Bold="True" OnClick="ButtonEksi0_Click" Text="-" Width="46px" Height="31px" />
                      </strong></td>
                  <td class="auto-style31"><strong><em> <span class="auto-style35">KATEGORİ </span><span class="auto-style34">EKLEME</span></em></strong></td>
              </tr>
          </table>
      </asp:Panel>
           <asp:Panel ID="Panel4" runat="server">
          <table>
              <tr>
                  <td class="auto-style33" style="border: thin groove #FF0000">
                  
                      <strong>KATEGORİ AD:</strong></td>
                  <td class="auto-style32" style="border: thin groove #FF0000">
                      <asp:TextBox ID="TextBoxAd" runat="server" CssClass="auto-style36" Height="29px"></asp:TextBox>
                      <asp:Button ID="ButtonEkle0" runat="server" BorderColor="#FFCCFF" Font-Bold="True" Height="34px" OnClick="ButtonEkle_Click" Text="EKLE" Width="93px" />
                  </td>
              </tr>
          </table>
          </asp:Panel>
</asp:Content>