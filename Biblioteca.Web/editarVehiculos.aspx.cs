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
    public partial class editarVehiculos : System.Web.UI.Page
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

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            try
            {
                Vehiculo veh = new Vehiculo();
                veh.Patente = txtPatente.Text;

                if(veh.Read())
                {
                    txtMarca.Text = veh.Marca;
                    txtModelo.Text = veh.Modelo;
                    comboUsuario.SelectedValue = veh.Rut_usuario;

                    lblMensaje.Text = string.Empty;
                }
                else
                {
                    lblMensaje.Text = "Vehiculo no existe";
                    LimpiarControles();
                }
            }
            catch (Exception ex)
            {
                lblMensaje.Text = "Error al leer el Vehiculo";
                LimpiarControles();
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            XmlSerializer xmlSerial = new XmlSerializer(typeof(Vehiculo));
            StringWriter xmlWrite = new StringWriter();
            Vehiculo veh = new Vehiculo();
            SSistemaEstacionamiento se = new SSistemaEstacionamiento();
            bool resp;
            try
            {
                veh.Patente = txtPatente.Text;

                if (veh.Read())
                {
                    veh.Rut_usuario = comboUsuario.Text;
                    veh.Marca = txtMarca.Text;
                    veh.Modelo = txtModelo.Text;

                    xmlSerial.Serialize(xmlWrite, veh);
                    resp = se.ModificarVehiculo(xmlWrite.ToString());

                    lblMensaje.Text = "Vehiculo Modificado";
                    LimpiarControles();

                }
                else
                {
                    lblMensaje.Text = "Vehiculo No Existe";
                    LimpiarControles();
                }
            }
            catch (Exception ex)
            {
                lblMensaje.Text = "Error al Actualizar Vehiculo";
                LimpiarControles();
            }

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            XmlSerializer xmlSerial = new XmlSerializer(typeof(Vehiculo));
            StringWriter xmlWrite = new StringWriter();
            Vehiculo veh = new Vehiculo();
            SSistemaEstacionamiento se = new SSistemaEstacionamiento();
            bool resp;

            try
            {
                veh.Patente = txtPatente.Text;
                if (veh.Read())
                {
                    xmlSerial.Serialize(xmlWrite, veh);
                    resp = se.EliminarVehiculo(xmlWrite.ToString());

                    lblMensaje.Text = "Vehiculo Eliminado";
                    LimpiarControles();
                }
                else
                {
                    lblMensaje.Text = "Vehiculo No Existe";
                    LimpiarControles();
                }
            }
            catch (Exception ex)
            {
                lblMensaje.Text = "Error al eliminar el Vehiculo";
                LimpiarControles();
            }

        }
    }
}