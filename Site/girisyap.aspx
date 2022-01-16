<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="girisyap.aspx.cs" Inherits="Site.girisyap" %>


<!DOCTYPE <html>

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Admin Kontrol Paneli</title>

  <!-- BOOTSTRAP STYLES-->

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
      <script src="https://kit.fontawesome.com/09204778f6.js" crossorigin="anonymous"></script>

  <link href="assets/css/bootstrap.css" rel="stylesheet" />
  <!-- FONTAWESOME STYLES-->
  <link href="assets/css/font-awesome.css" rel="stylesheet" />
  <!-- GOOGLE FONTS-->
  <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

  <style>
    body {
         background-image: url("resimler/arkaplann.jpg"); 
         background-attachment: fixed;
         -moz-background-size : 100% 100%;
         -moz-background-size: 100% 100%;
         -moz-background-size: 100% 100%;
          -webkit-background-size: 100% 100%;
          background-size: 100% 100%;
    }
      .auto-style1 {
          left: 0px;
          top: 0px;
          width: 750px;
      }
      .auto-style2 {
          color: #003366;
          font-weight: bold;
          font-size: xx-large;
          background-color: #CCFF66;
      }
      body{
          background-image:url("resimler/arkaplan.jpg");
      }
  </style>

</head>
<body >
    <div class="container" style="margin-left:400px; margin-top:40px;" >
      <div class="row text-center " style=" padding-top:100px; ">
            
      </div>
      <div class="row ">
      <div class="auto-style1">
      <div style="background-color: black; opacity: 0.6; margin-top:100px; border-radius: 5px 5px 5px 5px;" class="panel-body">
      
          <form id="form1" runat="server">
       
          <center><h2 class="auto-style2">Kullanıcı Girişi</h2></center>
             

                        <div class="form-group input-group" style="left: 0px; top: 0px; width: 99%">
                            <span class="input-group-addon"><i class="fa fa-tag"  ></i></span>

                         
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="mt-0" class="form-control" placeholder="Kullanıcı Adınız "  Height="35px" Width="984px"></asp:TextBox>
                        </div>
                        
                        <div class="form-group input-group" style="left: 0px; top: 0px; width: 99%">
                            <span class="input-group-addon"><i class="fa fa-lock"  ></i></span>
                            
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="Şifreniz " Height="32px" Width="986px" TextMode="Password"></asp:TextBox>
                        </div>
                                                                          
                   <asp:Button ID="Button1" runat="server" style="width:100%" class="btn btn-primary" Text="Giriş Yap" Width="421px" OnClick="Button1_Click1" />
                                                                          
                
                  
                     <hr />
                 </form>
             </div>
         </div>
     </div>
 </div>

</body>
</html>