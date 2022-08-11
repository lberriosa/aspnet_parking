using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using Biblioteca.Negocio;

namespace Biblioteca.Servicio
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de interfaz "ISistemaEstacionamiento" en el código y en el archivo de configuración a la vez.
    [ServiceContract]
    public interface ISistemaEstacionamiento
    {
        [OperationContract]
        Boolean ValidarUsuario(String u, String p);
        //usuario
        [OperationContract]
        Boolean CrearUsuario(string xmlEmp);
        [OperationContract]
        Boolean ModificarUsuario(string xmlEmp);
        [OperationContract]
        Boolean EliminarUsuario(string xmlEmp);

        //Estacionamiento
        [OperationContract]
        Boolean CrearEstacionamiento(string xmlEmp);
        [OperationContract]
        Boolean ModificarEstacionamiento(string xmlEmp);
        [OperationContract]
        Boolean EliminarEstacionamiento(string xmlEmp);

        //Vehiculo
        [OperationContract]
        Boolean CrearVehiculo(string xmlEmp);
        [OperationContract]
        Boolean ModificarVehiculo(string xmlEmp);
        [OperationContract]
        Boolean EliminarVehiculo(string xmlEmp);


        //Arriendo
        [OperationContract]
        Boolean CrearArriendo(string xmlEmp);

        //Detalle Arriendo
        [OperationContract]
        Boolean CrearDetalleArriendo(string xmlEmp);
    }


}
