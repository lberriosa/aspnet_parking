using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Biblioteca.Negocio
{
    public class Arriendo
    {
        private string _cod_arriendo;
        private string _patente;
        private string _cod_estacionamiento;
        private DateTime _fecha_arriendo;
        private bool _pagado;

        public string Cod_arriendo { get => _cod_arriendo; set => _cod_arriendo = value; }
        public string Patente { get => _patente; set => _patente = value; }
        public string Cod_estacionamiento { get => _cod_estacionamiento; set => _cod_estacionamiento = value; }
        public DateTime Fecha_arriendo { get => _fecha_arriendo; set => _fecha_arriendo = value; }
        public bool Pagado { get => _pagado; set => _pagado = value; }


        public Arriendo()
        {
            this.Init();
        }

        private void Init()
        {
            Cod_arriendo = "";
            Patente = "";
            Cod_estacionamiento = "";
            Fecha_arriendo = DateTime.Now;
            Pagado = false;
        }

        public bool Create(Arriendo ar)
        {
            try
            {
                Biblioteca.DALC.ARRIENDO arri = new DALC.ARRIENDO();

                arri.COD_ARRIENDO = ar.Cod_arriendo;
                arri.PATENTE = ar.Patente;
                arri.COD_ESTACIONAMIENTO = ar.Cod_estacionamiento;
                arri.FECHA_ARRIENDO = ar.Fecha_arriendo;
                arri.PAGADO = ar.Pagado;


                CommonBC.ModeloEstacionamiento.ARRIENDO.Add(arri);
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
                Biblioteca.DALC.ARRIENDO arri =
                    CommonBC.ModeloEstacionamiento.ARRIENDO.First
                    (
                        ar => ar.COD_ARRIENDO == this.Cod_arriendo
                    );

                this.Cod_arriendo = arri.COD_ARRIENDO;
                this.Patente = arri.PATENTE;
                this.Cod_estacionamiento = arri.COD_ESTACIONAMIENTO;
                this.Fecha_arriendo = arri.FECHA_ARRIENDO;
                this.Pagado = arri.PAGADO;

                return true;
            }
            catch(Exception ex)
            {
                return false;
            }
        }



    }
}
