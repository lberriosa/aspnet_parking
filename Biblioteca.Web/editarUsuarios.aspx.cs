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
    public partial class editarUsuarios : System.Web.UI.Page
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

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            try
            {
                Usuario user = new Usuario();
                user.Rut_usuario = txtRut.Text;

                if(user.Read())
                {
                    txtNombre.Text = user.Nombre_usuario;
                    txtApellido.Text = user.Apellido_usuario;
                    txtCorreo.Text = user.Correo_usuario;
                    txtTelefono.Text = user.Telefono_usuario.ToString();
                    txtDireccion.Text = user.Direccion_usuario;
                    comboTipoCuenta.SelectedValue = user.Id_tipo_cuenta.ToString();
                    comboTipoBanco.SelectedValue = user.Id_tipo_banco.ToString();
                    txtNumeroC.Text = user.Numero_cuenta_bancaria.ToString();
                    txtCVV.Text = user.Cvv.ToString();
                    comboTipoUsuario.SelectedValue = user.Id_tipo_usuario.ToString();

                    lblMensaje.Text = string.Empty;
                }
                else
                {
                    lblMensaje.Text = "Usuario no existe";
                    LimpiarControles();
                }


            }
            catch(Exception ex)
            {
                lblMensaje.Text = "Error al leer el Usuario";
                LimpiarControles();
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            XmlSerializer xmlSerial = new XmlSerializer(typeof(Usuario));
            StringWriter xmlWrite = new StringWriter();
            Usuario user = new Usuario();
            SSistemaEstacionamiento se = new SSistemaEstacionamiento();
            bool resp;

            try
            {
                user.Rut_usuario = txtRut.Text;
                if (user.Read())
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
                    resp = se.ModificarUsuario(xmlWrite.ToString());

                    lblMensaje.Text = "Usuario Modificado";
                    LimpiarControles();

                }
                else
                {
                    lblMensaje.Text = "Usuario No Existe";
                    LimpiarControles();
                }
            }
            catch(Exception ex)
            {
                lblMensaje.Text = "Error al Actualizar Usuario";
                LimpiarControles();
            }
            
            
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            XmlSerializer xmlSerial = new XmlSerializer(typeof(Usuario));
            StringWriter xmlWrite = new StringWriter();
            Usuario user = new Usuario();
            SSistemaEstacionamiento se = new SSistemaEstacionamiento();
            bool resp;
            try
            {
                user.Rut_usuario = txtRut.Text;
                if (user.Read())
                {
                    xmlSerial.Serialize(xmlWrite, user);
                    resp = se.EliminarUsuario(xmlWrite.ToString());

                    lblMensaje.Text = "Usuario Eliminado";
                    LimpiarControles();
                }
                else
                {
                    lblMensaje.Text = "Usuario No Existe";
                    LimpiarControles();
                }
            }
            catch(Exception ex)
            {
                lblMensaje.Text = "Error al eliminar el Usuario";
                LimpiarControles();
            }
        }
    }
}