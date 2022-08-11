using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Biblioteca.Negocio
{
   public class Detalle_Arriendo
    {
        private string _cod_arriendo;
        private int _duracion;
        private int _costo_total;

        public string Cod_arriendo { get => _cod_arriendo; set => _cod_arriendo = value; }
        public int Duracion { get => _duracion; set => _duracion = value; }
        public int Costo_total { get => _costo_total; set => _costo_total = value; }

        public Detalle_Arriendo()
        {
            this.Init();
        }

        private void Init()
        {
            Cod_arriendo = "";
            Duracion = 0;
            Costo_total = 0;
        }

        public bool Create(Detalle_Arriendo da)
        {
            try
            {
                Biblioteca.DALC.DETALLE_ARRIENDO deta = new DALC.DETALLE_ARRIENDO();

                deta.COD_ARRIENDO = da.Cod_arriendo;
                deta.DURACION = da.Duracion;
                deta.COSTO_TOTAL = da.Costo_total;

                CommonBC.ModeloEstacionamiento.DETALLE_ARRIENDO.Add(deta);
                CommonBC.ModeloEstacionamiento.SaveChanges();

                return true;
            }
            catch(Exception ex)
            {
                return false;
            }
        }

        public bool Read()
        {
            try
            {
                Biblioteca.DALC.DETALLE_ARRIENDO deta =
                    CommonBC.ModeloEstacionamiento.DETALLE_ARRIENDO.First
                        (
                            da => da.COD_ARRIENDO == this.Cod_arriendo
                        );

                this.Cod_arriendo = deta.COD_ARRIENDO;
                this.Duracion = deta.DURACION;
                this.Costo_total = deta.COSTO_TOTAL;


                return true;
            }
            catch(Exception ex)
            {
                return false;
            }
        }
    }
}
