<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="Site.AnaSayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <head>
             <meta http-equiv="content-type" content="text/html;charset=utf-8"/>
   
        <script src="sliderengine/jquery.js"></script>
    <script src="sliderengine/amazingslider.js"></script>
    <link rel="stylesheet" type="text/css" href="sliderengine/amazingslider-1.css">
    <script src="sliderengine/initslider-1.js"></script>
    
  
    



 

             <style type="text/css">
                 .auto-style27 {
                     text-decoration: underline;
                     font-size: 15pt;
                     color: red;
                     width: 691px;
                     
                 }
                 .auto-style28 {
                     position: relative;
                     left: 0px;
                     top: 0px;
                 }




                 *:focus,
*:active {
  outline: none !important;
  -webkit-tap-highlight-color: transparent;
}



.wrapper {
  display: inline-flex;
  margin-left:0px;

}

.wrapper .icon {
  position: relative;
  background-color: #ffffff;
  border-radius: 50%;
  padding: 15px;
  margin: 10px;
  width: 12px;
  height: 12px;
  font-size: 18px;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  box-shadow: 0 10px 10px rgba(0, 0, 0, 0.1);
  cursor: pointer;
  transition: all 0.2s cubic-bezier(0.68, -0.55, 0.265, 1.55);
}

.wrapper .tooltip {
  position: absolute;
  top: 0;
  font-size: 14px;
  background-color: #ffffff;
  color: #ffffff;
  padding: 5px 8px;
  border-radius: 5px;
  box-shadow: 0 10px 10px rgba(0, 0, 0, 0.1);
  opacity: 0;
  pointer-events: none;
  transition: all 0.3s cubic-bezier(0.68, -0.55, 0.265, 1.55);
}

.wrapper .tooltip::before {
  position: absolute;
  content: "";
  height: 8px;
  width: 8px;
  background-color: #ffffff;
  bottom: -3px;
  left: 50%;
  transform: translate(-50%) rotate(45deg);
  transition: all 0.3s cubic-bezier(0.68, -0.55, 0.265, 1.55);
}

.wrapper .icon:hover .tooltip {
  top: -45px;
  opacity: 1;
  visibility: visible;
  pointer-events: auto;
}

.wrapper .icon:hover span,
.wrapper .icon:hover .tooltip {
  text-shadow: 0px -1px 0px rgba(0, 0, 0, 0.1);
}



.wrapper .twitter:hover,
.wrapper .twitter:hover .tooltip,
.wrapper .twitter:hover .tooltip::before {
  background-color: #46c1f6;
  color: #ffffff;
}

.wrapper .instagram:hover,
.wrapper .instagram:hover .tooltip,
.wrapper .instagram:hover .tooltip::before {
  background-color: #e1306c;
  color: #ffffff;
}




.wrapper .youtube:hover,
.wrapper .youtube:hover .tooltip,
.wrapper .youtube:hover .tooltip::before {
  background-color: #de463b;
  color: #ffffff;
}
  .auto-style29 {
                     width: 72px;
                     height: 72px;
                 }
 .auto-style30 {
                    
                     width: 72px;
                     height: 72px;
                 }
                 .auto-style31 {
                     width: 120px;
                     height: 120px;
                 }









                 .auto-style32 {
                     font-size: x-large;
                     color: #9999FF;
                 }









                 .auto-style33 {
                     height: 30px;
                 }









             .auto-style34 {
        color: #000000;
        background-color: #FF0000;
    }









                 .auto-style35 {
                     position: relative;
                     left: 0px;
                     top: 0px;
                 }









             </style>
      </head>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style27">
        
    

       


         <div class="auto-style35" id="amazingslider-wrapper-1" style="display:block;max-width:400px;margin:0px auto 56px;">
        <div class="auto-style28" id="amazingslider-1" style="display:block;margin:0 auto;">
            <ul class="amazingslider-slides" style="display:none;">
               


<asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                        <li><asp:Image ID="Image3" runat="server" ImageUrl='<%#Eval("Resim") %>' Height="491px" Width="550px" /></li>

                    </ItemTemplate>
                </asp:DataList>
            </ul>
            <ul class="amazingslider-thumbnails" style="display:none;">
              
            </ul>
        <div class="amazingslider-engine"><a href="http://amazingslider.com" title="Responsive jQuery Slider">Responsive jQuery Slider</a></div>
        </div>
    </div>
        <div class="auto-style32">


            <strong><em><span class="auto-style34">Sosyal Medyalarımız</span></em></strong></div>


        <div class="auto-style33">

        </div>

        <div>

            <div class="wrapper">
  
  <div class="icon twitter">
    <div class="tooltip">Twitter</div>
    <span><img src="resimler/Twitter.png" class="auto-style30"><img></span>
  </div>
  <div class="icon instagram">
    <div class="tooltip">Instagram</div>
    <span><img src="resimler/insta.png" class="auto-style31"><img></span>
  </div>
 
  <div class="icon youtube">
      <div class="tooltip">Youtube</div>
    <span><img src="resimler/Youtube.png" class="auto-style29"><img></span>
  </div>
</div>

            </div>
     

</div>


     
</asp:Content>














