<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Adminkitap.aspx.cs" Inherits="Site.Adminkitap" %>
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
            width: 41px;
            height: 33px;
        }
        .auto-style23 {
            
            font-size: x-large;
            text-decoration: underline;
            color: #FF0000;
            margin-left: 200px;
        }
        .auto-style24 {
             width: 41px;
            height: 33px;
        }
        .auto-style29 {
            width: 41px;
            height: 33px;
        }
        .auto-style30 {
            width: 41px;
            height: 33px;
        }
        .auto-style31 {
            height: 33px;
            margin-left: 200px;

        }
        .auto-style32 {
            width: 606px;
            text-align: left;
        }
        .auto-style33 {
            width: 309px;
        }
        .auto-style34 {
            width: 309px;
            height: 23px;
        }
        .auto-style35 {
            width: 606px;
            height: 23px;
            text-align: left;
        }
        .auto-style36 {
            width: 100%;
            font-size: x-large;
            text-decoration: underline;
            color: #FF0000;
        }
        .auto-style37 {
            font-size: x-large;
            text-decoration: underline;
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
                    <asp:Button ID="ButtonArtı" runat="server" Font-Size="Medium" Text="+" Width="54px" Font-Bold="True" OnClick="ButtonArtı_Click" Height="43px"  />
                </td>
                <td class="auto-style22"><strong>
                    <asp:Button ID="ButtonEksi" runat="server" Text="-" Width="54px" Font-Bold="True" Font-Italic="False"  Height="43px" OnClick="ButtonEksi_Click" CssClass="auto-style13" />
                    </strong></td>
                <td class="auto-style23"><strong><em>KİTAP LİSTESİ</em></strong></td>
            </tr>
        </table>
        </div>
    </asp:Panel>
      <asp:Panel ID="Panel2" runat="server">
          <asp:DataList ID="DataList1" runat="server" Width="627px">
              <ItemTemplate>
                  <table class="auto-style17">
                      <tr>
                          <td class="auto-style20" style="border: thin groove #CC0000;">
                              <strong>
                              <asp:Label ID="Label1" runat="server" CssClass="auto-style38" Text='<%#Eval("KitapADI")%>'></asp:Label>
                              </strong></a>
                          </td>

                          <td class="auto-style18" style="border: thin groove #CC0000;">
                              
                             <a href="Adminkitap.aspx?KitapID=<%#Eval("KitapID")%>&islem=sil"> <asp:Image ID="Image2" runat="server" Height="21px" ImageUrl="~/resimler/sil.jpg" Width="29px" /> </a>
                          </td>
                          <td class="auto-style18" style="border: thin groove #CC0000;">
                          <a href="adminkitapdetay.aspx?KitapID=<%#Eval("KitapID")%>"> <asp:Image ID="Image3" runat="server" Height="28px" ImageUrl="~/resimler/refresh.jpg" Width="27px" /></a>
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
                      <asp:Button ID="ButtonArtı0" runat="server" Font-Bold="True" Font-Size="Medium" Text="+" Width="54px" OnClick="ButtonArtı0_Click" Height="43px" />
                  </td>
                  <td class="auto-style30"><strong>
                      <asp:Button ID="ButtonEksi0" runat="server" CssClass="auto-style13" Font-Bold="True"  Text="-" Width="54px" Height="43px" OnClick="ButtonEksi0_Click" />
                      </strong></td>
                  <td class="auto-style31"> <span class="auto-style37"> <em><strong>KİTAP</strong></em></span><em><strong><span class="auto-style36"> EKLEME</span></strong></em></td>
              </tr>
          </table>
      </asp:Panel>
           <asp:Panel ID="Panel4" runat="server">
          <table>
              <tr>
                  <td class="auto-style33" style="border: thin groove #FF0000">
                  
                      <strong>KİTAP ADI:</strong></td>
                  <td class="auto-style32" style="border: thin groove #FF0000">
                      <asp:TextBox ID="TextBoxAd" runat="server" Width="214px" ></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style33" style="border: thin groove #FF0000"><strong>KİTAP KARAKTERLERİ:</strong></td>
                  <td class="auto-style32" style="border: thin groove #FF0000">
                      <asp:TextBox ID="TextBoxkarakter" runat="server" Width="213px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style33" style="border: thin groove #FF0000"><strong>KİTAP ÖZETİ:</strong></td>
                  <td class="auto-style32" style="border: thin groove #FF0000">
                      <asp:TextBox ID="TextBoxÖzet" runat="server" Height="59px" TextMode="MultiLine" Width="215px" ></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style33" style="border: thin groove #FF0000"><strong>KİTAP RESİM:</strong></td>
                  <td class="auto-style32" style="border: thin groove #FF0000">
                      <asp:FileUpload ID="FileUploadResim" runat="server" CssClass="auto-style13" Width="221px" />
                  </td>
              </tr>
              <tr>
                  <td class="auto-style34" style="border: thin groove #FF0000"><strong>KİTAP PUANI:</strong></td>
                  <td class="auto-style35" style="border: thin groove #FF0000">
                      <asp:TextBox ID="TextBoxPuan" runat="server" Width="210px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style33" style="border: thin groove #FF0000"><strong>KİTAP KATEGORİ:</strong></td>
                  <td class="auto-style32" style="border: thin groove #FF0000">
                      <asp:DropDownList ID="DropDownList1" runat="server" Width="220px">
                      </asp:DropDownList>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style33" style="border: thin groove #FF0000"><strong>KİTAP YAZAR</strong></td>
                  <td class="auto-style32" style="border: thin groove #FF0000">
                      <asp:TextBox ID="TextBoxYazar" runat="server" Width="212px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style33"></td>
                  <td class="auto-style32">
                      <asp:Button ID="ButtonEkle0" runat="server" BorderColor="#FFCCFF" Font-Bold="True" Height="32px" OnClick="ButtonEkle_Click" Text="EKLE" Width="93px" />
                  </td>
              </tr>
          </table>
          </asp:Panel>
</asp:Content>