<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listarUsuarios.aspx.cs" Inherits="Biblioteca.Web.listarUsuarios" %>

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
            <h1>Listado De Usuario</h1>
          </div>

          <div class="section-body">
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_estacionamientoConnectionString5 %>" SelectCommand="select concat(u.NOMBRE_USUARIO,' ',u.APELLIDO_USUARIO) as &quot;nombre usuario&quot;, u.RUT_USUARIO as &quot;rut usuario&quot; , u.CORREO_USUARIO as &quot;correo usuario&quot;, tu.TIPO_USUARIO as &quot;tipo usuario&quot;,u.habilitado, tb.TIPO_BANCO as &quot;tipo banco&quot; from TIPO_USUARIO tu join USUARIO u on tu.ID_TIPO_USUARIO = u.ID_TIPO_USUARIO join TIPO_BANCO tb on u.ID_TIPO_BANCO = tb.ID_TIPO_BANCO; "></asp:SqlDataSource>
              <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="rut usuario" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                  <AlternatingRowStyle BackColor="White" />
                  <Columns>
                      <asp:BoundField DataField="nombre usuario" HeaderText="Nombre de Usuario" ReadOnly="True" SortExpression="nombre usuario" />
                      <asp:BoundField DataField="rut usuario" HeaderText="Rut de Usuario" ReadOnly="True" SortExpression="rut usuario" />
                      <asp:BoundField DataField="correo usuario" HeaderText="Correo de Usuario" SortExpression="correo usuario" />
                      <asp:BoundField DataField="tipo usuario" HeaderText="Tipo de Usuario" SortExpression="tipo usuario" />
                      <asp:CheckBoxField DataField="habilitado" HeaderText="Usuario Habilitado" SortExpression="habilitado" />
                      <asp:BoundField DataField="tipo banco" HeaderText="Banco de Usuario" SortExpression="tipo banco" />
                  </Columns>
                  <EditRowStyle BackColor="#2461BF" />
                  <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                  <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                  <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                  <RowStyle BackColor="#EFF3FB" />
                  <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                  <SortedAscendingCellStyle BackColor="#F5F7FB" />
                  <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                  <SortedDescendingCellStyle BackColor="#E9EBEF" />
                  <SortedDescendingHeaderStyle BackColor="#4870BE" />
              </asp:GridView>
              
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
    </form>
</body>
</html>

