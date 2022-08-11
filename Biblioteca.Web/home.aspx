<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Biblioteca.Web.home" %>

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
        <form class="form-inline mr-auto">
          <ul class="navbar-nav mr-3">
            <li><a href="#" data-toggle="sidebar" class="nav-link nav-link-lg"><i class="fas fa-bars"></i></a></li>
            <li><a href="#" data-toggle="search" class="nav-link nav-link-lg d-sm-none"><i class="fas fa-search"></i></a></li>
          </ul>
          <div class="search-element">
          </div>
        </form>
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
            <h1>Bienvenido </h1>
          </div>
          <div class="section-body">
              <h2 class="section-title">Formulario de Arriendo</h2>
             <p><asp:Label ID="lblMensaje" class="section-lead" runat="server" ForeColor="#FF3300"></asp:Label></p>
           <div class="row">
              <div class="col-12 col-md-6 col-lg-6">
                <div class="card">
                  <div class="card-header">
                    <h4>Ingresar Codigo Estacionamiento</h4>
                  </div>
                  <div class="card-body">
                      <!-- CODIGO ESTACIONAMIENTO -->
                      <div class="form-group">
                      <label>Codigo de Estacionamiento</label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <div class="input-group-text">
                            <i class="fas fa-warehouse"></i>
                          </div>
                        </div>
                          <asp:TextBox ID="txtCodigoE" class="form-control" runat="server"></asp:TextBox>
                      </div> 
                    </div>
                      <div class="form-group">
                             <asp:Button class="btn btn-primary btn-lg btn-icon icon-right" tabindex="4" ID="btnBuscarE" runat="server" Text="Buscar/Ingresar Estacionamiento" OnClick="btnBuscarE_Click" />
                        </div>   
                  </div>  
                </div>
                <div class="card">
                 <div class="card-header">
                    <h4>Ingresar Patente de Vehiculo</h4>
                  </div>
                  <div class="card-body">

                    <!-- PATENTE VEHICULO -->
                    <div class="form-group">
                      <label>Patente Vehiculo</label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <div class="input-group-text">
                            <i class="fas fa-car-alt"></i>
                          </div>
                        </div>
                           <asp:TextBox ID="txtPatente" class="form-control" runat="server" ></asp:TextBox>
                      </div>
                    </div>
                      <div class="form-group">
                            <asp:Button class="btn btn-primary btn-lg btn-icon icon-right" tabindex="4" ID="btnBuscarV" runat="server" Text="Buscar/Ingresar Vehiculo" OnClick="btnBuscarV_Click"   />
                      </div>

                  </div>
                </div>
                 <div class="card">
                 <div class="card-header">
                    <h4>Ingresar Datos de Arriendo</h4>
                  </div>
                  <div class="card-body">

                      <!-- CODIGO ARRIENDO -->
                    <div class="form-group">
                      <label>Codigo de Arriendo </label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <div class="input-group-text">
                            <i class="fas fa-keyboard"></i>
                          </div>
                        </div>
                           <asp:TextBox ID="txtCodigoArr" class="form-control" runat="server" ></asp:TextBox>
                      </div>
                    </div>


                       <!-- FECHA ARRIENDO -->
                    <div class="form-group">
                      <label>Fecha Arriendo (dd/mm/yyyy)</label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <div class="input-group-text">
                            <i class="fas fa-calendar-week"></i>
                          </div>
                        </div>
                           <asp:TextBox ID="txtFecha" class="form-control" runat="server" ></asp:TextBox>
                      </div>
                    </div>


                      <!-- DURACION ARRIENDO -->
                    <div class="form-group">
                      <label>Duracion de Arriendo (Hrs.)</label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <div class="input-group-text">
                            <i class="fas fa-stopwatch"></i>
                          </div>
                        </div>
                           <asp:TextBox ID="txtDuracion" class="form-control" runat="server" ></asp:TextBox>
                      </div>
                    </div>

                      <div class="form-group">
                            <asp:Button class="btn btn-primary btn-lg btn-icon icon-right" tabindex="4" ID="btnArr" runat="server" Text="Crear Arriendo " OnClick="btnArr_Click" />
                      </div>
                  </div>
                </div>
              </div>

              <div class="col-12 col-md-6 col-lg-6">
                <div class="card">
                  <div class="card-header">
                    <h4>Resumen de Arriendo</h4>
                  </div>
                  <div class="card-body">

                   <!-- DUEÑO -->
                    <div class="section-title mt-0">Datos Estacionamiento</div>
                    
                       <!-- NOMBRE -->
                    <div class="form-group">
                      <label>Nombre Dueño</label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <div class="input-group-text">
                            <i class="fas fa-id-card"></i>
                          </div>
                        </div>
                         <asp:TextBox ID="txtNombreD" class="form-control" runat="server" ></asp:TextBox>
                      </div>
                    </div>

                          <!-- DIRECCION -->
                    <div class="form-group">
                      <label>Direccion Estacionamiento</label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <div class="input-group-text">
                            <i class="fas fa-warehouse"></i>
                          </div>
                        </div>
                         <asp:TextBox ID="txtDireEst" class="form-control" runat="server" ></asp:TextBox>
                      </div>
                    </div>

                          <!-- PRECIO POR HORA -->
                    <div class="form-group">
                      <label>Precio por Hora de Estacionamiento</label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <div class="input-group-text">
                            <i class="fas fa-dollar-sign"></i>
                          </div>
                        </div>
                         <asp:TextBox ID="txtPH" class="form-control" runat="server" ></asp:TextBox>
                      </div>
                    </div>


                    <!-- ARRENDATARIO -->
                   <div class="section-title mt-0">Datos Arrendatario</div>
        
                     <!-- NOMBRE -->
                    <div class="form-group">
                      <label>Nombre Arrendatario</label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <div class="input-group-text">
                            <i class="fas fa-id-card"></i>
                          </div>
                        </div>
                         <asp:TextBox ID="txtNombreA" class="form-control" runat="server" ></asp:TextBox>
                      </div>
                    </div>


                       <!-- VEHICULO -->
                    <div class="form-group">
                      <label>Vehiculo Arrendatario</label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <div class="input-group-text">
                            <i class="fas fa-car"></i>
                          </div>
                        </div>
                         <asp:TextBox ID="txtVeh" class="form-control" runat="server" ></asp:TextBox>
                      </div>
                    </div>

                      <!-- DATOS DE ARRIENDO -->
                   <div class="section-title mt-0">Datos Arriendo</div>

                      <!-- FECHA ARRIENDO -->
                    <div class="form-group">
                      <label>Fecha Arriendo</label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <div class="input-group-text">
                            <i class="fas fa-calendar-week"></i>
                          </div>
                        </div>
                           <asp:TextBox ID="txtFechaArr" class="form-control" runat="server" ></asp:TextBox>
                      </div>
                    </div>

                      <!-- DURACION -->
                    <div class="form-group">
                      <label>Duracion Arriendo (Hrs.)</label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <div class="input-group-text">
                            <i class="fas fa-stopwatch"></i>
                          </div>
                        </div>
                           <asp:TextBox ID="txtDurArr" class="form-control" runat="server" ></asp:TextBox>
                      </div>
                    </div>

                         <!-- COSTO TOTAL-->
                    <div class="form-group">
                      <label>Costo Total</label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <div class="input-group-text">
                            <i class="fas fa-dollar-sign"></i>
                          </div>
                        </div>
                           <asp:TextBox ID="txtCostoArr" class="form-control" runat="server" ></asp:TextBox>
                      </div>
                    </div>
                      <div class="form-group">
                            <asp:Button class="btn btn-primary btn-lg btn-icon icon-right" tabindex="4" ID="btnConfirmar" runat="server" Text="Confirmar Arriendo" OnClick="btnConfirmar_Click" />
                      </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
        </form>
      <footer class="main-footer">
        <div class="footer-left">       
        </div>
        <div class="footer-right">
          BETA 1.0.0
        </div>
      </footer>
    </div>
  </div>

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

