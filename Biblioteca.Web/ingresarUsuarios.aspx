<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ingresarUsuarios.aspx.cs" Inherits="Biblioteca.Web.ingresarUsuarios" %>

<!DOCTYPE html>
<html runat="server" lang="zxxx">
<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <title>Sistema Estacionamiento</title>

  <!-- General CSS Files -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" >

  <!-- CSS Libraries -->
  <link rel="stylesheet" href="WebDesign/node_modules/jqvmap/dist/jqvmap.min.css">
  <link rel="stylesheet" href="WebDesign/node_modules/summernote/dist/summernote-bs4.css">
  <link rel="stylesheet" href="WebDesign/node_modules/owl.carousel/dist/assets/owl.carousel.min.css">
  <link rel="stylesheet" href="WebDesign/node_modules/owl.carousel/dist/assets/owl.theme.default.min.css">

  <!-- Template CSS -->
  <link rel="stylesheet" href="WebDesign/assets/css/style.css">
  <link rel="stylesheet" href="WebDesign/assets/css/components.css">
</head>

<body>

    <form id="form1" runat="server">
  <div id="app">
    <div class="main-wrapper">
      <div class="navbar-bg"></div>
      <nav class="navbar navbar-expand-lg main-navbar">
          <ul class="navbar-nav mr-3">
            <li><a href="#" data-toggle="sidebar" class="nav-link nav-link-lg"><i class="fas fa-bars"></i></a></li>
            <li><a href="#" data-toggle="search" class="nav-link nav-link-lg d-sm-none"><i class="fas fa-search"></i></a></li>
          </ul>
          <div class="search-element">
          </div>
        <ul class="navbar-nav navbar-right">
          <li class="dropdown dropdown-list-toggle"><a href="#" data-toggle="dropdown" class="nav-link nav-link-lg message-toggle beep"><i class="far fa-envelope"></i></a>
            <div class="dropdown-menu dropdown-list dropdown-menu-right">
              <div class="dropdown-header">Mensajes
                <div class="float-right">
                  <a href="#">Marcar todo como leido</a>
                </div>
              </div>
              <div class="dropdown-list-content dropdown-list-message">
              </div>
              <div class="dropdown-footer text-center">
                <a href="#">Ver Todo <i class="fas fa-chevron-right"></i></a>
              </div>
            </div>
          </li>
          <li class="dropdown dropdown-list-toggle"><a href="#" data-toggle="dropdown" class="nav-link notification-toggle nav-link-lg beep"><i class="far fa-bell"></i></a>
            <div class="dropdown-menu dropdown-list dropdown-menu-right">
              <div class="dropdown-header">Notificaciones
                <div class="float-right">
                  <a href="#">Marcar todo como leido</a>
                </div>
              </div>
              <div class="dropdown-list-content dropdown-list-icons">
              </div>
              <div class="dropdown-footer text-center">
                <a href="#">Ver Todo <i class="fas fa-chevron-right"></i></a>
              </div>
            </div>
          </li>
          <li class="dropdown"><a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg nav-link-user">
            <img alt="image" src="WebDesign/assets/img/avatar/avatar-1.png" class="rounded-circle mr-1">
            <div class="d-sm-none d-lg-inline-block">Hola, Administrador</div></a>
            <div class="dropdown-menu dropdown-menu-right">
              <div class="dropdown-title">Disfuta las nuevas caracteristicas</div>
               <a href="#" class="dropdown-item has-icon">
                <i class="far fa-user"></i> Perfil
              </a>
              <a href="#" class="dropdown-item has-icon">
                <i class="fas fa-bolt"></i> Actividades
              </a>
              <a href="#" class="dropdown-item has-icon">
                <i class="fas fa-cog"></i> Configuracion
              </a>
              <div class="dropdown-divider"></div>
              <a href="Login.aspx" class="dropdown-item has-icon text-danger">
                <i class="fas fa-sign-out-alt"></i> Salir 
              </a>
            </div>
          </li>
        </ul>
      </nav>
      <div class="main-sidebar">
        <aside id="sidebar-wrapper">
          <div class="sidebar-brand">
            <a href="home.aspx">Parking</a>
          </div>
          <div class="sidebar-brand sidebar-brand-sm">
            <a href="home.aspx">PG</a>
          </div>
          <ul class="sidebar-menu"> 
              <li class="menu-header">Paginas</li>
              <li class="nav-item dropdown">
                <a href="#" class="nav-link has-dropdown"><i class="far fa-user"></i> <span>Usuarios</span></a>
                <ul class="dropdown-menu">
                  <li><a class="beep beep-sidebar" href="ingresarUsuarios.aspx">Ingresar Usuarios</a></li>
                  <li><a href="listarUsuarios.aspx">Listar Usuarios</a></li>
                  <li><a href="editarUsuarios.aspx">Editar Usuarios</a></li>
                </ul>
              </li>

              <li class="nav-item dropdown">
                <a href="#" class="nav-link has-dropdown"><i class="fas fa-warehouse"></i> <span>Estacionamientos</span></a>
                <ul class="dropdown-menu">
                  <li><a class="beep beep-sidebar" href="ingresarEstacionamientos.aspx">Nuevo Estacionamiento</a></li>
                  <li><a href="listarEstacionamientos.aspx">Listar Estacionamiento</a></li>
                  <li><a href="editarEstacionamientos.aspx">Editar Estacionamiento</a></li>
                </ul>
              </li>

              <li class="nav-item dropdown">
                <a href="#" class="nav-link has-dropdown"><i class="fas fa-car-side"></i> <span>Vehiculos</span></a>
                <ul class="dropdown-menu">
                  <li><a class="beep beep-sidebar" href="ingresarVehiculos.aspx">Nuevo Vehiculo</a></li>
                  <li><a href="listarVehiculos.aspx">Listar Vehiculo</a></li>
                  <li><a href="editarVehiculos.aspx">Editar Vehiculo</a></li>
                </ul>
              </li>

              <li class="nav-item dropdown">
                <a href="#" class="nav-link has-dropdown"><i class="fas fa-map-marker-alt"></i> <span>Buscar</span></a>
                <ul class="dropdown-menu">
                  <li><a class="beep beep-sidebar" href="buscarEstacionamiento.aspx">Direccion</a></li>
                  <li><a href="#">Geolocalizacion</a></li>
                </ul>
              </li>

          <li class="nav-item dropdown">
                <a href="#" class="nav-link has-dropdown"><i class="fas fa-money-check"></i> <span>Facturacion</span></a>
                <ul class="dropdown-menu">
                  <li><a class="beep beep-sidebar" href="pagarArriendo.aspx">Pagar Arriendo</a></li>
                </ul>
              </li>

              <li class="nav-item dropdown">
                <a href="#" class="nav-link has-dropdown"><i class="fas fa-home"></i> <span>Arriendo</span></a>
                <ul class="dropdown-menu">
                  <li><a class="beep beep-sidebar" href="home.aspx">Ingresar Arriendo</a></li>
                </ul>
                <ul class="dropdown-menu">
                  <li><a class="beep beep-sidebar" href="listarArriendos.aspx">Listar Arriendo</a></li>
                </ul>
              </li>

            </ul>
        </aside>
      </div>

      <!-- Main Content -->
       <div class="main-content">
        <section class="section">
          <div class="section-header">
            <h1>Ingresar Usuarios</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="home.aspx">Menu</a></div>
              <div class="breadcrumb-item"><a href="#">Usuarios</a></div>
              <div class="breadcrumb-item">Ingresar Usuarios</div>
            </div>
          </div>

          <div class="section-body">
            <h2 class="section-title">Ingresar Usuario</h2>
            <p><asp:Label ID="lblMensaje" class="section-lead" runat="server"></asp:Label></p>
          
            <div class="row">
              <div class="col-12 col-md-6 col-lg-6">
                <div class="card">
                  <div class="card-header">
                    <h4>Ingresar todos los datos de usuario</h4>
                  </div>
                  <div class="card-body">
                    <!-- RUT -->
                    <div class="form-group">
                      <label>Rut Usuario <asp:RequiredFieldValidator ID="reqRut" runat="server" ErrorMessage="Ingresar Rut de Usuario" ControlToValidate="txtRut" ForeColor="#FF3300">Ingresar Rut de Usuario(*)</asp:RequiredFieldValidator> <asp:RegularExpressionValidator ID="valRut" runat="server" ErrorMessage="Error-ingresar rut de acuerdo a norma chilena (XXXXXXXX-X)." ControlToValidate="txtRut" ValidationExpression="[0-9]{8}-[0-9kK]" BorderStyle="None" ForeColor="#FF3300">Rut debe ir acorde al siguiente formato: XXXXXXXX-X</asp:RegularExpressionValidator> </label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <div class="input-group-text">
                            <i class="fas fa-id-card"></i>
                          </div>
                        </div>
                         <asp:TextBox ID="txtRut" class="form-control" runat="server"></asp:TextBox>
                      </div>
                    </div>

                     <!-- NOMBRE -->
                    <div class="form-group">
                      <label>Nombre Usuario <asp:RequiredFieldValidator ID="reqNombre" runat="server" ErrorMessage="Ingresar Nombre de Usuario" ControlToValidate="txtNombre" ForeColor="#FF3300">Ingresar Nombre de Usuario(*)</asp:RequiredFieldValidator> <asp:RegularExpressionValidator ID="valNomb" runat="server" ErrorMessage="Nombre debe tener un largo de 15 Caracteres con un minimo de 3" ControlToValidate="txtNombre" ValidationExpression="[a-zA-Z ]{3,15}" BorderStyle="None" ForeColor="#FF3300">Nombre debe tener un largo de minimo 3 y maximo 15 Caracteres</asp:RegularExpressionValidator></label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <div class="input-group-text">
                            <i class="fas fa-id-card"></i>
                          </div>
                        </div>
                         <asp:TextBox ID="txtNombre" class="form-control" runat="server"></asp:TextBox>
                      </div>
                    </div>

                    <!-- APELLIDO -->
                    <div class="form-group">
                      <label>Apellido Usuario <asp:RequiredFieldValidator ID="reqApellido" runat="server" ErrorMessage="Ingresar Apellido de Usuario" ControlToValidate="txtApellido" ForeColor="#FF3300">Ingresar Apellido de Usuario(*)</asp:RequiredFieldValidator> <asp:RegularExpressionValidator ID="valApell" runat="server" ErrorMessage="Apellido debe tener un largo de 30 Caracteres con un minimo de 3" ControlToValidate="txtApellido" ValidationExpression="[a-zA-Z ]{3,30}" BorderStyle="None" ForeColor="#FF3300">Apellido debe tener un largo de minimo 3 y maximo 30 Caracteres</asp:RegularExpressionValidator></label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <div class="input-group-text">
                            <i class="fas fa-id-card"></i>
                          </div>
                        </div>
                         <asp:TextBox ID="txtApellido" class="form-control" runat="server"></asp:TextBox>
                      </div>
                    </div>
                  
                   <!-- CORREO -->
                    <div class="form-group">
                      <label>Correo Usuario <asp:RequiredFieldValidator ID="reqCorreo" runat="server" ErrorMessage="Ingresar Correo de Usuario" ControlToValidate="txtCorreo" ForeColor="#FF3300">Ingresar Correo de Usuario(*)</asp:RequiredFieldValidator> <asp:RegularExpressionValidator ID="valCorreo" runat="server" ErrorMessage="Error- correo debe tener un formato estandar" ControlToValidate="txtCorreo" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" BorderStyle="None" ForeColor="#FF3300">Correo debe seguir el formato estandar: correo@correo.com </asp:RegularExpressionValidator>  </label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <div class="input-group-text">
                            <i class="fas fa-mail-bulk"></i>
                          </div>
                        </div>
                         <asp:TextBox ID="txtCorreo" class="form-control" runat="server"></asp:TextBox>
                      </div>
                    </div>

                    <!-- TELEFONO -->
                    <div class="form-group">
                      <label>Telefono Usuario <asp:RequiredFieldValidator ID="reqTelefono" runat="server" ErrorMessage="Ingresar Telefono de Usuario" ControlToValidate="txtTelefono" ForeColor="#FF3300">Ingresar Telefono de Usuario(*)</asp:RequiredFieldValidator> <asp:RegularExpressionValidator ID="valTele" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Telefono debe ser 9 Digitos" ValidationExpression="[1,2,3,4,5,6,7,8,9,0]{9}" BorderStyle="None" ForeColor="#FF3300">Telefono debe ser de 9 Digitos</asp:RegularExpressionValidator></label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <div class="input-group-text">
                            <i class="fas fa-phone"></i>
                          </div>
                        </div>
                         <asp:TextBox ID="txtTelefono" class="form-control" runat="server"></asp:TextBox>
                      </div>
                    </div>

                    <!-- DIRECCION -->
                    <div class="form-group">
                      <label>Direccion Usuario <asp:RequiredFieldValidator ID="reqDireccion" runat="server" ErrorMessage="Ingresar Direccion de Usuario" ControlToValidate="txtDireccion" ForeColor="#FF3300">Ingresar Direccion de Usuario(*)</asp:RequiredFieldValidator></label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <div class="input-group-text">
                            <i class="fas fa-address-book"></i>
                          </div>
                        </div>
                         <asp:TextBox ID="txtDireccion" class="form-control" runat="server"></asp:TextBox>
                      </div>
                    </div>

                    <!-- TIPO USUARIO -->
                    <div class="section-title mt-0">Seleccionar Tipo de Usuario</div>
                    <div class="form-group">
                    <label>Tipo Usuario</label>
                       <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:db_estacionamientoConnectionString4 %>" SelectCommand="SELECT ID_TIPO_USUARIO, TIPO_USUARIO FROM TIPO_USUARIO WHERE (ID_TIPO_USUARIO = ID_TIPO_USUARIO)"></asp:SqlDataSource>
                      <asp:DropDownList ID="comboTipoUsuario" class="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="TIPO_USUARIO" DataValueField="ID_TIPO_USUARIO">
                     </asp:DropDownList>
                    </div>


                    <div class="card-header">
                    <h4>Datos Bancarios</h4>
                    </div>
                   
                    <!-- Tipo Cuenta -->
                    <div class="section-title mt-0">Seleccionar Tipo de Cuenta</div>
                    <div class="form-group">
                      <label>Tipo Cuenta Bancaria</label>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_estacionamientoConnectionString %>" SelectCommand="SELECT ID_TIPO_CUENTA, TIPO_CUENTA FROM TIPO_CUENTA WHERE (ID_TIPO_CUENTA = ID_TIPO_CUENTA)"></asp:SqlDataSource>
                        <asp:DropDownList ID="comboTipoCuenta" class="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="TIPO_CUENTA" DataValueField="ID_TIPO_CUENTA">
                        </asp:DropDownList>
                    </div>

                   <!-- Tipo banco -->
                    <div class="section-title mt-0">Seleccionar Tipo de Banco</div>
                    <div class="form-group">
                    <label>Seleccione Banco</label>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_estacionamientoConnectionString2 %>" SelectCommand="SELECT * FROM TIPO_BANCO WHERE (ID_TIPO_BANCO = ID_TIPO_BANCO)"></asp:SqlDataSource>
                        <asp:DropDownList ID="comboTipoBanco" class="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="TIPO_BANCO" DataValueField="ID_TIPO_BANCO">
                        </asp:DropDownList>
                    </div>

                    <!-- Numero Cuenta Bancaria -->
                    <div class="form-group">
                      <label>Numero Cuenta Bancaria <asp:RequiredFieldValidator ID="reqNCuenta" runat="server" ErrorMessage="Ingresar Numero de Cuenta Bancaria" ControlToValidate="txtNumeroC" ForeColor="#FF3300">Ingresar Numero de Cuenta Bancaria(*)</asp:RequiredFieldValidator> <asp:RegularExpressionValidator ID="valNCuenta" runat="server" ErrorMessage="numero de cuenta debe poseer 16 digitos" ControlToValidate="txtNumeroC" ValidationExpression="[1,2,3,4,5,6,7,8,9,0]{16}" BorderStyle="None" ForeColor="#FF3300">Numero de cuenta debe poseer 16 digitos</asp:RegularExpressionValidator> </label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <div class="input-group-text">
                            <i class="fas fa-credit-card"></i>
                          </div>
                        </div>
                         <asp:TextBox ID="txtNumeroC" class="form-control" runat="server"></asp:TextBox>
                      </div>
                    </div>

                   <!-- CVV -->
                    <div class="form-group">
                      <label>CVV Cuenta Bancaria <asp:RequiredFieldValidator ID="reqCVV" runat="server" ErrorMessage="Ingresar CVV de Cuenta Bancaria" ControlToValidate="txtRut" ForeColor="#FF3300">Ingresar CVV de Cuenta Bancaria(*)</asp:RequiredFieldValidator>  <asp:RegularExpressionValidator ID="valCVV" runat="server" ErrorMessage="CVV debe poseer 3 digitos" ControlToValidate="txtCVV" ValidationExpression="[1,2,3,4,5,6,7,8,9,0]{3}" BorderStyle="None" ForeColor="#FF3300">CVV debe poseer 3 digitos</asp:RegularExpressionValidator></label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <div class="input-group-text">
                            <i class="fas fa-wallet"></i>
                          </div>
                        </div>
                         <asp:TextBox ID="txtCVV" TextMode="Password" class="form-control" runat="server"></asp:TextBox>
                      </div> 
                    </div>

                    <div>
                        <asp:Button class="btn btn-primary btn-lg btn-icon icon-right" tabindex="4" ID="btnIngresarU" runat="server" Text="Registrar" OnClick="btnIngresarU_Click" />
                    </div>
                     
                  </div>
                </div>
                </div>
               </div>
              </div>
        </section>
      </div>
      <footer class="main-footer">
        <div class="footer-left">
          
        </div>
        <div class="footer-right">
          BETA 1.0.0
        </div>
      </footer>
    </div>
  </div>
</form>
  <!-- General JS Scripts -->
  <script src="https://code.jquery.com/jquery-3.3.1.min.js" ></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.nicescroll/3.7.6/jquery.nicescroll.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
  <script src="WebDesign/assets/js/stisla.js"></script>

  <!-- JS Libraies -->
  <script src="WebDesign/node_modules/jquery-sparkline/jquery.sparkline.min.js"></script>
  <script src="WebDesign/node_modules/chart.js/dist/Chart.min.js"></script>
  <script src="WebDesign/node_modules/owl.carousel/dist/owl.carousel.min.js"></script>
  <script src="WebDesign/node_modules/summernote/dist/summernote-bs4.js"></script>
  <script src="WebDesign/node_modules/chocolat/dist/js/jquery.chocolat.min.js"></script>

  <!-- Template JS File -->
  <script src="WebDesign/assets/js/scripts.js"></script>
  <script src="WebDesign/assets/js/custom.js"></script>

  <!-- Page Specific JS File -->
  <script src="WebDesign/assets/js/page/index.js"></script>
    
</body>
</html>

