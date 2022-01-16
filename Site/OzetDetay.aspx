<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="OzetDetay.aspx.cs" Inherits="Site.OzetDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style27 {
            margin-left: 0px;
            margin-bottom: 0px;
        }
        .auto-style30 {
           margin-left: 100px;
            top: 0px;
            width: 286px;
            text-decoration: underline;
            font-size: x-large;
        color: #FF0000;
    }
        .auto-style32 {
            left: -169px;
            top: 0px;
        }
        .auto-style33 {
            text-align: left;
        }
        .auto-style34 {
             text-align: left;
        }
        .auto-style35 {
            text-align: justify;
            height: auto;
            
        }
    .auto-style36 {
        text-align: right;
    }
    .auto-style37 {
        text-align: left;
        width: 434px;
    }
    .auto-style38 {
        font-size: large;
    }
    .auto-style39 {
        width: 236px;
    }
    .auto-style40 {
        left: -172px;
        top: 0px;
        width: 236px;
    }
        .auto-style41 {
            font-size: large;
            color: #9933FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="636px">
    <ItemTemplate>
        <table class="auto-style14">
            <tr>
                <td style="border: thin groove #FF0000"></td>
                <td style="border: thin groove #FF0000"></td>
            </tr>
            <tr>
                <td style="border: thin groove #FF0000">Kitap adı:</td>
                <td style="border: thin groove #FF0000" class="auto-style33">
                    <strong>
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style41" Text='<%# Eval("KitapADI") %>'></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td style="border: thin groove #FF0000">Kitap Karakterleri:</td>
                <td style="border: thin groove #FF0000" class="auto-style33">
                    <strong>
                    <asp:Label ID="Label4" runat="server" CssClass="auto-style28" Text='<%# Eval("KitapKARAKTERLERİ") %>'></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td style="border: thin groove #FF0000">Kitap Özeti:</td>
                <td style="border: thin groove #FF0000" class="auto-style33">
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("KitapÖZETİ") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border: thin groove #FF0000">Kitap resim:</td>
                <td style="border: thin groove #FF0000">
                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("KitapRESİM") %>' Height="433px" Width="350px" />
                </td>
            </tr>
            <tr>
                <td style="border: thin groove #FF0000">Kitap Tarih:</td>
                <td style="border: thin groove #FF0000" class="auto-style33">
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("KitapTARİH") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border: thin groove #FF0000">Kitap Puan:</td>
                <td style="border: thin groove #FF0000" class="auto-style33">
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("KitapPUAN") %>'></asp:Label>
                </td>
            </tr>
          
            <tr>
                <td style="border: thin groove #FF0000">Kitap Yazar:</td>
                <td style="border: thin groove #FF0000" class="auto-style33">
                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("KitapYAZAR") %>'></asp:Label>
                </td>
            </tr>
           
        </table>
    </ItemTemplate>
</asp:DataList>

   
    <table class="auto-style14" >
                    <tr >
                        <td class="auto-style35" style="border-bottom-style: solid; border-bottom-color: #FFFFFF">
                           <p class="auto-style30"> <strong><em >Yorum Yapma Paneli</em></strong></td></p>
                    </tr>
                    <tr >
                        <td style="border-bottom-style: solid; border-bottom-color: #FFFFFF" >
                            <table class="auto-style14">
                                <tr >
                                    <td class="auto-style39" >Ad Soyad:</td>
                                    <td class="auto-style33">
                                        <asp:TextBox ID="TextYorumAd" runat="server" Height="16px" Width="265px" CssClass="auto-style13"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr >
                                    <td class="auto-style40">Mail:</td>
                                    <td class="auto-style34" >
                                        <asp:TextBox ID="TextYorumMail" runat="server" CssClass="auto-style27" Height="16px" Width="267px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr >
                                    <td class="auto-style39" >Yorumunuz:</td>
                                    <td class="auto-style33" >
                                        <asp:TextBox ID="TextYorumİcer" runat="server" Height="64px" TextMode="MultiLine" Width="269px" CssClass="auto-style13"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr >
                                    <td class="auto-style39"></td>
                                    <td class="auto-style33" >
                                        <asp:Button ID="ButtonYorum" runat="server" CssClass="auto-style32" Height="35px" OnClick="ButtonYorum_Click" Text="Gönder" Width="270px" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>

     <div>
         <p>YORUMLAR</p>
         <p>
             <asp:DataList ID="DataList3" runat="server" Width="635px">
                 <ItemTemplate>
                     <table class="auto-style14">
                         <tr>
                             <td class="auto-style37"><strong>Ad Soyad:<asp:Label ID="Label11" runat="server" CssClass="auto-style38" Text='<%# Eval("YorumADSOYAD") %>'></asp:Label>
                                 </strong>
                             </td>
                             <td class="auto-style36"><strong><em>
                                 <asp:Label ID="Label12" runat="server" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                                 </em></strong></td>
                         </tr>
                         <tr>
                             <td class="auto-style37"></td>
                             <td class="auto-style36">&nbsp;</td>
                         </tr>
                         <tr>
                             <td class="auto-style33" colspan="2">
                                 <asp:Label ID="Label13" runat="server" Text='<%# Eval("YorumYAZI") %>'></asp:Label>
                             </td>
                         </tr>
                     </table>
                 </ItemTemplate>
             </asp:DataList>
         </p>
    </div>

</asp:Content>
