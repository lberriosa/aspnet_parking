<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Biblioteca.Web.Login" %>

<!DOCTYPE html>
<html runat="server" lang="zxx">
<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <title>Sistema Estacionamiento</title>

  <!-- General CSS Files -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" >

  <!-- CSS Libraries -->
  <link rel="stylesheet" href="WebDesign/node_modules/bootstrap-social/bootstrap-social.css">

  <!-- Template CSS -->
  <link rel="stylesheet" href="WebDesign/assets/css/style.css">
  <link rel="stylesheet" href="WebDesign/assets/css/components.css">
</head>

<body>
  <div id="app">
    <section class="section">
      <div class="d-flex flex-wrap align-items-stretch">
        <div class="col-lg-4 col-md-6 col-12 order-lg-1 min-vh-100 order-2 bg-white">
          <div class="p-4 m-3">
            <img src="WebDesign/assets/img/Logo.png" alt="logo" width="80" class="shadow-light rounded-circle mb-5 mt-2">
            <h4 class="text-dark font-weight-normal">Bienvenido al nuevo sistema de <span class="font-weight-bold"> Arriendo De Estacionamientos</span></h4>
            <p class="text-muted">Un nuevo sistema acorde a las necesidades actuales de la ciudad.</p>
              <form id="form1" runat="server">
              <div class="form-group">
                <label for="username">Nombre Usuario <asp:RequiredFieldValidator ID="reqUser" runat="server" ErrorMessage="Ingresar Nombre de Usuario" ControlToValidate="user" ForeColor="#FF3300">Ingresar Nombre de Usuario(*)</asp:RequiredFieldValidator></label>
                  <asp:TextBox ID="user" runat="server" class="form-control" tabindex="1"></asp:TextBox>
                <div class="invalid-feedback">
                  Please fill in your email
                </div>
              </div>

              <div class="form-group">
                <div class="d-block">
                  <label for="password" class="control-label">Password <asp:RequiredFieldValidator ID="reqPass" runat="server" ErrorMessage="Ingresar Password de Usuario" ControlToValidate="password" ForeColor="#FF3300">Ingresar Contraseña de Usuario(*)</asp:RequiredFieldValidator></label>  
                </div>
                <asp:TextBox ID="password" TextMode="Password" runat="server" class="form-control" name="password" tabindex="2" ></asp:TextBox>
                <div class="invalid-feedback">
                  please fill in your password
                </div>
              </div>
              <div class="form-group text-right">
                  <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" class="btn btn-primary btn-lg btn-icon icon-right" tabindex="4" OnClick="btnIngresar_Click" />
              </div>

               

              </form>


          </div>
        </div>
        <div class="col-lg-8 col-12 order-lg-2 order-1 min-vh-100 background-walk-y position-relative overlay-gradient-bottom" data-background="WebDesign/assets/img/fondo.jpg">
          <div class="absolute-bottom-left index-2">
            <div class="text-light p-5 pb-2">
              <div class="mb-5 pb-3">
                <h1 class="mb-2 display-4 font-weight-bold">Bienvenido</h1>
                <h5 class="font-weight-normal text-muted-transparent">Duoc, Sede Antonio Varas</h5>
            </div>
          </div>
        </div>
      </div>
          </div>
    </section>
  </div>

  <!-- General JS Scripts -->
  <script src="https://code.jquery.com/jquery-3.3.1.min.js" ></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.nicescroll/3.7.6/jquery.nicescroll.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
  <script src="WebDesign/assets/js/stisla.js"></script>

  <!-- JS Libraies -->

  <!-- Template JS File -->
  <script src="WebDesign/assets/js/scripts.js"></script>
  <script src="WebDesign/assets/js/custom.js"></script>

  <!-- Page Specific JS File -->
</body>
</html>

