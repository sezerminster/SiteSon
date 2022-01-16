<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkımızda.aspx.cs" Inherits="Site.Hakkımızda" %>


  

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> 
    <style type="text/css">
       
         .auto-style13 {
       
            
            margin-left:-10px;
        }
      
    .auto-style29 {
        height: 395px;
        background-image: url('resimler/resim.jpg');
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1"  runat="server">
    <div class="auto-style29" style="color: #FFFFFF">
        <asp:DataList ID="DataList2" runat="server" Height="394px" Width="634px" CssClass="auto-style27" style="margin-left: 0px">
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("İcerik") %>'></asp:Label>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>