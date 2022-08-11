using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Biblioteca.DALC;

namespace Biblioteca.Negocio
{
    public class CommonBC
    {
        private static db_estacionamientoEntities _modeloEstacionamiento;
        public static db_estacionamientoEntities ModeloEstacionamiento
        {
            get
            {
                if (_modeloEstacionamiento == null)
                {
                    _modeloEstacionamiento = new db_estacionamientoEntities();
                }
                return _modeloEstacionamiento;
            }
        }

        public CommonBC()
        {

        }

    }
}
