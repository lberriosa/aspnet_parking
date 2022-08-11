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
    public partial class ingresarVehiculos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void LimpiarControles()
        {
            txtMarca.Text = string.Empty;
            txtModelo.Text = string.Empty;
            txtPatente.Text = string.Empty;
        }


        protected void btnIngresarV_Click(object sender, EventArgs e)
        {
            XmlSerializer xmlSerial = new XmlSerializer(typeof(Vehiculo));
            StringWriter xmlWrite = new StringWriter();
            Vehiculo veh = new Vehiculo();
            SSistemaEstacionamiento se = new SSistemaEstacionamiento();
            bool resp;

            try
            {
                veh.Patente = txtPatente.Text;
                if (!veh.Read())
                {
                    veh.Rut_usuario = comboUsuario.Text;
                    veh.Marca = txtMarca.Text;
                    veh.Modelo = txtModelo.Text;

                    xmlSerial.Serialize(xmlWrite, veh);
                    resp = se.CrearVehiculo(xmlWrite.ToString());

                    lblMensaje.Text = "Vehiculo Ingresado";
                    LimpiarControles();
                }
                else
                {
                    lblMensaje.Text = "Vehiculo Ya Existe";
                    LimpiarControles();
                }
            }
            catch (Exception ex)
            {
                lblMensaje.Text = "Error al Ingresar Vehiculo";
                LimpiarControles();
            }
        }
    }
}