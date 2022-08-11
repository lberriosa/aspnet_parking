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
    public partial class ingresarEstacionamientos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        private void LimpiarControles()
        {
            txtAltura.Text = string.Empty;
            txtCodE.Text = string.Empty;
            txtDireccion.Text = string.Empty;
            txtPrecioH.Text = string.Empty;
            txtSuperficie.Text = string.Empty;
        }

        protected void btnIngresarE_Click(object sender, EventArgs e)
        {
            XmlSerializer xmlSerial = new XmlSerializer(typeof(Estacionamiento));
            StringWriter xmlWrite = new StringWriter();
            Estacionamiento est = new Estacionamiento();
            SSistemaEstacionamiento se = new SSistemaEstacionamiento();
            bool resp;
       
            try
            {
                est.Cod_estacionamiento = txtCodE.Text;
                if (!est.Read())
                {
                   

                    est.Rut_usuario = comboUsuario.Text;
                    est.Direccion = txtDireccion.Text;
                    est.Precio_hora = int.Parse(txtPrecioH.Text);
                    est.Superficie = int.Parse(txtSuperficie.Text);
                    est.Altura = int.Parse(txtAltura.Text);

                    if(radioHT.Checked)
                    {
                        est.Habilitado = true;
                    }

                    if(radioHF.Checked)
                    {
                        est.Habilitado = false;
                    }
                    
                    xmlSerial.Serialize(xmlWrite, est);
                    resp = se.CrearEstacionamiento(xmlWrite.ToString());

                    lblMensaje.Text = "Estacionamiento Ingresado";
                    LimpiarControles();
                }
                else
                {
                    lblMensaje.Text = "Estacionamiento Ya Existe";
                    LimpiarControles();
                }
            }
            catch (Exception ex)
            {
                lblMensaje.Text = "Error al Ingresar Estacionamiento";
                LimpiarControles();
            }


        }

        protected void radioHF_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}