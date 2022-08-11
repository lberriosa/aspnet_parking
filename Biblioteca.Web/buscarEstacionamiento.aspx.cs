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
    public partial class buscarEstacionamiento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void LimpiarControles()
        {
            txtCodigo.Text = string.Empty;
            txtDireccion.Text = string.Empty;
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            try
            {
                Estacionamiento es = new Estacionamiento();
                es.Cod_estacionamiento = txtCodigo.Text;
                if (es.Read())
                {
                   
                    txtDireccion.Text = es.Direccion;
                    
                    lblMensaje.Text = string.Empty;

                }
                else
                {
                    lblMensaje.Text = "Estacionamiento no existe";
                    LimpiarControles();
                }
            }
            catch (Exception ex)
            {
                lblMensaje.Text = "Error al leer el Estacionamiento";
                LimpiarControles();
            }
        }
    }
}