using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Biblioteca.Negocio
{
    public class Estacionamiento
    {
        private string _cod_estacionamiento;
        private string _rut_usuario;
        private string _direccion;
        private int _precio_hora;
        private int _superficie;
        private int _altura;
        private bool _habilitado;

        public string Cod_estacionamiento { get => _cod_estacionamiento; set => _cod_estacionamiento = value; }
        public string Rut_usuario { get => _rut_usuario; set => _rut_usuario = value; }
        public string Direccion { get => _direccion; set => _direccion = value; }
        public int Precio_hora { get => _precio_hora; set => _precio_hora = value; }
        public int Superficie { get => _superficie; set => _superficie = value; }
        public int Altura { get => _altura; set => _altura = value; }
        public bool Habilitado { get => _habilitado; set => _habilitado = value; }

        public Estacionamiento()
        {
            this.Init();
        }

        private void Init()
        {
            Cod_estacionamiento = "";
            Rut_usuario = "";
            Direccion = "";
            Precio_hora = 0;
            Superficie = 0;
            Altura = 0;
            Habilitado = false;
        }


        public bool Create(Estacionamiento es)
        {
            try
            {
                Biblioteca.DALC.ESTACIONAMIENTO esta = new DALC.ESTACIONAMIENTO();
                esta.COD_ESTACIONAMIENTO = es.Cod_estacionamiento;
                esta.RUT_USUARIO = es.Rut_usuario;
                esta.DIRECCION = es.Direccion;
                esta.PRECIO_HORA = es.Precio_hora;
                esta.SUPERFICIE = es.Superficie;
                esta.ALTURA = es.Altura;
                esta.HABILITADO = es.Habilitado;

                CommonBC.ModeloEstacionamiento.ESTACIONAMIENTO.Add(esta);
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
                Biblioteca.DALC.ESTACIONAMIENTO esta =
                    CommonBC.ModeloEstacionamiento.ESTACIONAMIENTO.First
                    (
                        es => es.COD_ESTACIONAMIENTO == this.Cod_estacionamiento    
                    );

                this.Cod_estacionamiento = esta.COD_ESTACIONAMIENTO;
                this.Rut_usuario = esta.RUT_USUARIO;
                this.Direccion = esta.DIRECCION;
                this.Precio_hora = esta.PRECIO_HORA;
                this.Superficie = esta.SUPERFICIE;
                this.Altura = esta.ALTURA;
                this.Habilitado = esta.HABILITADO;

                return true;
            }
            catch(Exception ex)
            {
                return false;
            }
        }

        public bool Update(Estacionamiento est)
        {
            try
            {
                Biblioteca.DALC.ESTACIONAMIENTO esta =
                    CommonBC.ModeloEstacionamiento.ESTACIONAMIENTO.First
                    (
                        es => es.COD_ESTACIONAMIENTO == est.Cod_estacionamiento
                    );

                esta.RUT_USUARIO = est.Rut_usuario;
                esta.DIRECCION = est.Direccion;
                esta.PRECIO_HORA = est.Precio_hora;
                esta.SUPERFICIE = est.Superficie;
                esta.ALTURA = est.Altura;
                esta.HABILITADO = est.Habilitado;

                CommonBC.ModeloEstacionamiento.SaveChanges();

                return true;

            }
            catch(Exception ex)
            {
                return false;
            }
        }

        public bool Delete(Estacionamiento es)
        {
            try
            {
                Biblioteca.DALC.ESTACIONAMIENTO esta =
                    CommonBC.ModeloEstacionamiento.ESTACIONAMIENTO.First
                    (
                        est => est.COD_ESTACIONAMIENTO == es.Cod_estacionamiento
                    );

                CommonBC.ModeloEstacionamiento.ESTACIONAMIENTO.Remove(esta);
                CommonBC.ModeloEstacionamiento.SaveChanges();
                return true;
            }
            catch(Exception ex)
            {
                return false;
            }
        }




    }
}
