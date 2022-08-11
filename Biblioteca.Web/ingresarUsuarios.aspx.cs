using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Serialization;
using System.IO;
using Biblioteca.Negocio;
using Biblioteca.Servicio;

namespace Biblioteca.Web
{
    public partial class ingresarUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void LimpiarControles()
        {
            txtRut.Text = string.Empty;
            txtNombre.Text = string.Empty;
            txtApellido.Text = string.Empty;
            txtDireccion.Text = string.Empty;
            txtTelefono.Text = string.Empty;
            txtCorreo.Text = string.Empty;
            txtNumeroC.Text = string.Empty;
            txtCVV.Text = string.Empty;
            comboTipoBanco.SelectedValue = "1";
            comboTipoCuenta.SelectedValue = "1";
            comboTipoUsuario.SelectedValue = "1";   
        }

        protected void btnIngresarU_Click(object sender, EventArgs e)
        {
            XmlSerializer xmlSerial = new XmlSerializer(typeof(Usuario));
            StringWriter xmlWrite = new StringWriter();
            Usuario user = new Usuario();
            SSistemaEstacionamiento se = new SSistemaEstacionamiento();
            bool resp;
            try
            {
                user.Rut_usuario = txtRut.Text;
                if (!user.Read())
                {

                    user.Nombre_usuario = txtNombre.Text;
                    user.Apellido_usuario = txtApellido.Text;
                    user.Correo_usuario = txtCorreo.Text;
                    user.Telefono_usuario = int.Parse(txtTelefono.Text);
                    user.Direccion_usuario = txtDireccion.Text;
                    user.Id_tipo_cuenta = int.Parse(comboTipoCuenta.Text);
                    user.Id_tipo_banco = int.Parse(comboTipoBanco.Text);
                    user.Numero_cuenta_bancaria = Convert.ToInt64(txtNumeroC.Text);
                    user.Cvv = int.Parse(txtCVV.Text);
                    user.Id_tipo_usuario = int.Parse(comboTipoUsuario.Text);
                    user.Habilitado = true;

                    xmlSerial.Serialize(xmlWrite, user);
                    resp = se.CrearUsuario(xmlWrite.ToString());

                    lblMensaje.Text = "Usuario Ingresado";
                    LimpiarControles();

                }
                else
                {
                    lblMensaje.Text = "Usuario Ya Existe";
                    LimpiarControles();
                }
            }
            catch (Exception ex)
            {
                lblMensaje.Text = "Error al Ingresar Usuario";
                LimpiarControles();
            }




        }
    }
}