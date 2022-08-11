using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Xml.Serialization;
using Biblioteca.Negocio;

namespace Biblioteca.Servicio
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "SSistemaEstacionamiento" en el código, en svc y en el archivo de configuración.
    // NOTE: para iniciar el Cliente de prueba WCF para probar este servicio, seleccione SSistemaEstacionamiento.svc o SSistemaEstacionamiento.svc.cs en el Explorador de soluciones e inicie la depuración.
    public class SSistemaEstacionamiento : ISistemaEstacionamiento
    {

        public Boolean ValidarUsuario(string u, string p)
        {
            Administrativo adm = new Administrativo();
            return adm.Valida(u, p);
        }

        //mantenedor usuario

        public bool CrearUsuario(string xmlEmp)
        {
            XmlSerializer xmlSerial = new XmlSerializer(typeof(Usuario));
            StringReader xmlRead = new StringReader(xmlEmp);
            Usuario user = (Usuario)xmlSerial.Deserialize(xmlRead);
            Usuario nUser = new Usuario();

            if (nUser.Create(user))
            {
                return true;
            }
            else
            {
                return false;
            }

        }

        public bool ModificarUsuario(string xmlEmp)
        {
            XmlSerializer xmlSerial = new XmlSerializer(typeof(Usuario));
            StringReader xmlRead = new StringReader(xmlEmp);
            Usuario user = (Usuario)xmlSerial.Deserialize(xmlRead);
            Usuario nUser = new Usuario();

            if (nUser.Update(user))
            {
                return true;
            }
            else
            {
                return false;
            }

        }

        public bool EliminarUsuario(string xmlEmp)
        {
            XmlSerializer xmlSerial = new XmlSerializer(typeof(Usuario));
            StringReader xmlRead = new StringReader(xmlEmp);
            Usuario user = (Usuario)xmlSerial.Deserialize(xmlRead);
            Usuario nUser = new Usuario();

            if (nUser.Delete(user))
            {
                return true;
            }
            else
            {
                return false;
            }

        }

        // mantenedor estacionamiento

        public bool CrearEstacionamiento(string xmlEmp)
        {
            XmlSerializer xmlSerial = new XmlSerializer(typeof(Estacionamiento));
            StringReader xmlRead = new StringReader(xmlEmp);
            Estacionamiento est = (Estacionamiento)xmlSerial.Deserialize(xmlRead);
            Estacionamiento nEst = new Estacionamiento();

            if (nEst.Create(est))
            {
                return true;
            }
            else
            {
                return false;
            }

        }

        public bool ModificarEstacionamiento(string xmlEmp)
        {
            XmlSerializer xmlSerial = new XmlSerializer(typeof(Estacionamiento));
            StringReader xmlRead = new StringReader(xmlEmp);
            Estacionamiento est = (Estacionamiento)xmlSerial.Deserialize(xmlRead);
            Estacionamiento nEst = new Estacionamiento();

            if (nEst.Update(est))
            {
                return true;
            }
            else
            {
                return false;
            }

        }

        public bool EliminarEstacionamiento(string xmlEmp)
        {
            XmlSerializer xmlSerial = new XmlSerializer(typeof(Estacionamiento));
            StringReader xmlRead = new StringReader(xmlEmp);
            Estacionamiento est = (Estacionamiento)xmlSerial.Deserialize(xmlRead);
            Estacionamiento nEst = new Estacionamiento();

            if (nEst.Delete(est))
            {
                return true;
            }
            else
            {
                return false;
            }

        }

        // mantenedor vehiculo

        public bool CrearVehiculo(string xmlEmp)
        {
            XmlSerializer xmlSerial = new XmlSerializer(typeof(Vehiculo));
            StringReader xmlRead = new StringReader(xmlEmp);
            Vehiculo veh = (Vehiculo)xmlSerial.Deserialize(xmlRead);
            Vehiculo nVeh = new Vehiculo();

            if (nVeh.Create(veh))
            {
                return true;
            }
            else
            {
                return false;
            }

        }

        public bool ModificarVehiculo(string xmlEmp)
        {
            XmlSerializer xmlSerial = new XmlSerializer(typeof(Vehiculo));
            StringReader xmlRead = new StringReader(xmlEmp);
            Vehiculo veh = (Vehiculo)xmlSerial.Deserialize(xmlRead);
            Vehiculo nVeh = new Vehiculo();

            if (nVeh.Update(veh))
            {
                return true;
            }
            else
            {
                return false;
            }

        }

        public bool EliminarVehiculo(string xmlEmp)
        {
            XmlSerializer xmlSerial = new XmlSerializer(typeof(Vehiculo));
            StringReader xmlRead = new StringReader(xmlEmp);
            Vehiculo veh = (Vehiculo)xmlSerial.Deserialize(xmlRead);
            Vehiculo nVeh = new Vehiculo();

            if (nVeh.Delete(veh))
            {
                return true;
            }
            else
            {
                return false;
            }

        }

        // arriendo
        public bool CrearArriendo(string xmlEmp)
        {
            XmlSerializer xmlSerial = new XmlSerializer(typeof(Arriendo));
            StringReader xmlRead = new StringReader(xmlEmp);
            Arriendo arr = (Arriendo)xmlSerial.Deserialize(xmlRead);
            Arriendo nArr = new Arriendo();

            if (nArr.Create(arr))
            {
                return true;
            }
            else
            {
                return false;
            }

        }



        // detalle arriendo

        public bool CrearDetalleArriendo(string xmlEmp)
        {
            XmlSerializer xmlSerial = new XmlSerializer(typeof(Detalle_Arriendo));
            StringReader xmlRead = new StringReader(xmlEmp);
            Detalle_Arriendo arr = (Detalle_Arriendo)xmlSerial.Deserialize(xmlRead);
            Detalle_Arriendo nArr = new Detalle_Arriendo();

            if (nArr.Create(arr))
            {
                return true;
            }
            else
            {
                return false;
            }

        }


    }
}
