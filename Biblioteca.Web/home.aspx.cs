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
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void LimpiarControlesEstacionamiento()
        {
            txtDireEst.Text = string.Empty;
            txtNombreD.Text = string.Empty;
            txtPH.Text = string.Empty;
        }

        private void LimpiarControlesAutomovil()
        {
            txtVeh.Text = string.Empty;
            txtNombreA.Text = string.Empty;
        }

        private void LimpiarControlesArriendo()
        {
            txtCodigoArr.Text = string.Empty;
            txtDuracion.Text = string.Empty;
            txtFecha.Text = string.Empty;
            txtFechaArr.Text = string.Empty;
            txtCostoArr.Text = string.Empty;
            txtDurArr.Text = string.Empty;
        }

        private void LimpiarControles()
        {
            LimpiarControlesArriendo();
            LimpiarControlesAutomovil();
            LimpiarControlesEstacionamiento();
            txtCodigoE.Text = string.Empty;
            txtPatente.Text = string.Empty;  
        }


        protected void btnBuscarE_Click(object sender, EventArgs e)
        {
            try
            {
                Estacionamiento es = new Estacionamiento();
                es.Cod_estacionamiento = txtCodigoE.Text;
                if (es.Read())
                {
                    Usuario us = new Usuario();
                    us.Rut_usuario = es.Rut_usuario;

                    if (us.Read())
                    {
                        if (us.Habilitado == true)
                        {
                            if (es.Habilitado == true)
                            {
                                txtDireEst.Text = es.Direccion;
                                string nom = us.Nombre_usuario;
                                string app = us.Apellido_usuario;
                                string uni = string.Concat(nom, ' ', app);
                                txtNombreD.Text = uni;
                                txtPH.Text = es.Precio_hora.ToString();
                            }
                            else
                            {
                                lblMensaje.Text = "Estacionamiento no habilitado";
                                LimpiarControlesEstacionamiento();
                            }
                        }
                        else
                        {
                            lblMensaje.Text = "Usuario no habilitado";
                            LimpiarControlesEstacionamiento();
                        }
                    }
                    else
                    {
                        lblMensaje.Text = "Usuario no existe";
                        LimpiarControlesEstacionamiento();
                    }
                }
                else
                {
                    lblMensaje.Text = "Estacionamiento no existe";
                    LimpiarControlesEstacionamiento();
                    txtCodigoE.Text = string.Empty;
                }

            }
            catch (Exception ex)
            {
                lblMensaje.Text = "Error al leer el Estacionamiento";
                LimpiarControlesEstacionamiento();
                txtCodigoE.Text = string.Empty;
            }
        }

        protected void btnBuscarV_Click(object sender, EventArgs e)
        {
            try
            {
                Vehiculo ve = new Vehiculo();
                ve.Patente = txtPatente.Text;

                if(ve.Read())
                {
                    Usuario us = new Usuario();
                    us.Rut_usuario = ve.Rut_usuario;

                    if(us.Read())
                    {
                        if(us.Habilitado == true)
                        {
                            string mo = ve.Modelo;
                            string ma = ve.Marca;
                            string v = string.Concat(ma, ' ', mo);
                            txtVeh.Text = v;

                            string nom = us.Nombre_usuario;
                            string app = us.Apellido_usuario;
                            string uni = string.Concat(nom, ' ', app);
                            txtNombreA.Text = uni;
                        }
                        else
                        {
                            lblMensaje.Text = "Usuario no habilitado";
                            LimpiarControlesAutomovil();
                        }
                    }
                    else
                    {
                        lblMensaje.Text = "Usuario no existe";
                        LimpiarControlesAutomovil();
                    }
                }
                else
                {
                    lblMensaje.Text = "Vehiculo no existe";
                    LimpiarControlesAutomovil();
                }
            }
            catch(Exception ex)
            {
                lblMensaje.Text = "Error al leer el Vehiculo";
                LimpiarControlesAutomovil();
            }
        }

        protected void btnArr_Click(object sender, EventArgs e)
        {
            try
            {
                Estacionamiento es = new Estacionamiento();
                es.Cod_estacionamiento = txtCodigoE.Text;
                Vehiculo ve = new Vehiculo();
                ve.Patente = txtPatente.Text;

                if (es.Read())
                {
                    if(ve.Read())
                    {
                        if(es.Habilitado == true)
                        {
                            int duracion = int.Parse(txtDuracion.Text);
                            DateTime fecha = DateTime.Parse(txtFecha.Text);
                            int precio = es.Precio_hora;
                            int total = duracion * precio;

                            txtCostoArr.Text = total.ToString();
                            txtDurArr.Text = duracion.ToString();
                            txtFechaArr.Text = fecha.ToString();
                        }
                        else
                        {
                            lblMensaje.Text = "Estacionamiento no habilitado";
                            LimpiarControlesEstacionamiento();
                        }
                    }
                    else
                    {
                        lblMensaje.Text = "Vehiculo no existe";
                        LimpiarControlesAutomovil();
                    }
                }
                else
                {
                    lblMensaje.Text = "Vehiculo no existe";
                    LimpiarControlesAutomovil();
                }
            }
            catch(Exception ex)
            {
                lblMensaje.Text = "Error al leer el Arriendo";
                LimpiarControlesArriendo();
            }           
        }

        protected void btnConfirmar_Click(object sender, EventArgs e)
        {
            XmlSerializer xmlSerial = new XmlSerializer(typeof(Arriendo));
            XmlSerializer xmlSerial2 = new XmlSerializer(typeof(Detalle_Arriendo));
            XmlSerializer xmlSerial3 = new XmlSerializer(typeof(Usuario));
            XmlSerializer xmlSerial4 = new XmlSerializer(typeof(Usuario));

            StringWriter xmlWrite = new StringWriter();
            StringWriter xmlWrite2 = new StringWriter();
            StringWriter xmlWrite3 = new StringWriter();
            StringWriter xmlWrite4 = new StringWriter();


            SSistemaEstacionamiento se = new SSistemaEstacionamiento();
            SSistemaEstacionamiento se2 = new SSistemaEstacionamiento();
            SSistemaEstacionamiento se3 = new SSistemaEstacionamiento();
            SSistemaEstacionamiento se4 = new SSistemaEstacionamiento();

             Estacionamiento es = new Estacionamiento();
             es.Cod_estacionamiento = txtCodigoE.Text;

             Arriendo arr = new Arriendo();
             arr.Cod_arriendo = txtCodigoArr.Text;

             Detalle_Arriendo darr = new Detalle_Arriendo();
             darr.Cod_arriendo = arr.Cod_arriendo;

             Vehiculo veh = new Vehiculo();
             veh.Patente = txtPatente.Text;

             Usuario usuD = new Usuario();
             Usuario usuA = new Usuario();

            bool resp, resp2, resp3, resp4;

            try
            {
                if (es.Read())
                {
                    usuD.Rut_usuario = es.Rut_usuario;
                    if (usuD.Read())
                    {
                        if (veh.Read())
                        {
                            usuA.Rut_usuario = veh.Rut_usuario;

                            if (usuA.Read())
                            {
                                if (es.Habilitado == true)
                                {
                                    if (usuD.Habilitado == true)
                                    {
                                        if (usuA.Habilitado == true)
                                        {
                                            usuD.Habilitado = false;
                                            usuA.Habilitado = false;


                                            xmlSerial3.Serialize(xmlWrite3, usuD);
                                            resp3 = se3.ModificarUsuario(xmlWrite3.ToString());

                                            xmlSerial4.Serialize(xmlWrite4, usuA);
                                            resp4 = se4.ModificarUsuario(xmlWrite4.ToString());


                                            arr.Patente = txtPatente.Text;
                                            arr.Cod_estacionamiento = txtCodigoE.Text;
                                            arr.Fecha_arriendo = DateTime.Parse(txtFechaArr.Text);
                                            arr.Pagado = false;

                                            darr.Duracion = int.Parse(txtDurArr.Text);
                                            darr.Costo_total = int.Parse(txtCostoArr.Text);

                                            xmlSerial2.Serialize(xmlWrite2, darr);
                                            resp2 = se2.CrearDetalleArriendo(xmlWrite2.ToString());

                                            xmlSerial.Serialize(xmlWrite, arr);
                                            resp = se.CrearArriendo(xmlWrite.ToString());

                                            lblMensaje.Text = "Arriendo Ingresado correctamente al sistema";
                                            LimpiarControles();
                                        }
                                        else
                                        {
                                            lblMensaje.Text = "Usuario Arrendatario no habilitado";
                                            LimpiarControlesAutomovil();
                                        }
                                    }
                                    else
                                    {
                                        lblMensaje.Text = "Usuario Dueño no habilitado";
                                        LimpiarControlesEstacionamiento();
                                    }
                                }
                                else
                                {
                                    lblMensaje.Text = "Estacionamiento no habilitado";
                                    LimpiarControlesEstacionamiento();
                                    txtCodigoE.Text = string.Empty;
                                }
                            }
                            else
                            {
                                lblMensaje.Text = "Usuario Arrendatario no existe";
                                LimpiarControlesAutomovil();
                            }
                        }
                        else
                        {
                            lblMensaje.Text = "Vehiculo no existe";
                            LimpiarControlesAutomovil();
                            txtPatente.Text = string.Empty;
                        }
                    }
                    else
                    {
                        lblMensaje.Text = "Usuario Dueño no existe";
                        LimpiarControlesEstacionamiento();
                    }
                }
                else
                {
                    lblMensaje.Text = "Estacionamiento no existe";
                    LimpiarControlesEstacionamiento();
                    txtCodigoE.Text = string.Empty;
                }
            }
            catch (Exception ex)
            {
                lblMensaje.Text = "Error al confirmar el Arriendo";
                LimpiarControlesArriendo();
            }
        }
    }
}