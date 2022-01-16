<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminHakkımızda.aspx.cs" Inherits="Site.adminHakkımızda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            width: 100%;
        }
        .auto-style19 {
            width: 191px;
            text-align: right;
        }
        .auto-style21 {
            width: 191px;
            text-align: left;
        }
        .auto-style22 {
            font-size: x-large;
        }
        .auto-style23 {
            text-decoration: underline;
            margin-left: 110px;
            font-size: x-large;
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server"> <p style="text-decoration: none;" class="auto-style7" > <span class="auto-style23"><strong><em>     HAKKIMIZDA YAZISI GÜNCELLEME</em></strong></span></p>
       </asp:Panel>
     <asp:Panel ID="Panel2" runat="server">
         <table class="auto-style17">
             <tr>
                 <td class="auto-style21"><em><strong><span class="auto-style22">Değiştimek istediğiniz yazıyı yazınız</span></strong></em></td>
                 <td>
                     <asp:TextBox ID="TextBoxMetin" runat="server" Height="96px" TextMode="MultiLine" Width="422px"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style19"></td>
                 <td>
                     <asp:Button ID="ButtonGüncelle" runat="server" Height="39px" OnClick="ButtonGüncelle_Click" Text="Güncelle" Width="424px" />
                 </td>
             </tr>
         </table>
    </asp:Panel>
</asp:Content>