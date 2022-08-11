using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Biblioteca.Negocio
{
    public class Vehiculo
    {
        private string _rut_usuario;
        private string _patente;
        private string _marca;
        private string _modelo;

        public string Rut_usuario { get => _rut_usuario; set => _rut_usuario = value; }
        public string Patente { get => _patente; set => _patente = value; }
        public string Marca { get => _marca; set => _marca = value; }
        public string Modelo { get => _modelo; set => _modelo = value; }

        public Vehiculo()
        {
            this.Init();
        }


        private void Init()
        {
            Rut_usuario = "";
            Patente = "";
            Marca = "";
            Modelo = "";
        }


        public bool Create(Vehiculo ve)
        {
            try
            {
                Biblioteca.DALC.VEHICULO veh = new DALC.VEHICULO();

                veh.RUT_USUARIO = ve.Rut_usuario;
                veh.PATENTE = ve.Patente;
                veh.MARCA = ve.Marca;
                veh.MODELO = ve.Modelo;

                CommonBC.ModeloEstacionamiento.VEHICULO.Add(veh);
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
                Biblioteca.DALC.VEHICULO veh =
                   CommonBC.ModeloEstacionamiento.VEHICULO.First
                   (
                       ve => ve.PATENTE == this.Patente
                   );

                this.Rut_usuario = veh.RUT_USUARIO;
                this.Patente = veh.PATENTE;
                this.Marca = veh.MARCA;
                this.Modelo = veh.MODELO;

                return true;
            }
            catch(Exception ex)
            {
                return false;
            }
        }


        public bool Update(Vehiculo ve)
        {
            try
            {
                Biblioteca.DALC.VEHICULO veh =
                   CommonBC.ModeloEstacionamiento.VEHICULO.First
                   (
                       vehi => vehi.PATENTE == ve.Patente
                   );

                veh.RUT_USUARIO = ve.Rut_usuario;
                veh.MARCA = ve.Marca;
                veh.MODELO = ve.Modelo;

                CommonBC.ModeloEstacionamiento.SaveChanges();

                return false;
            }
            catch(Exception ex)
            {
                return false;
            }
        }

        public bool Delete(Vehiculo ve)
        {
            try
            {
                Biblioteca.DALC.VEHICULO veh =
                  CommonBC.ModeloEstacionamiento.VEHICULO.First
                  (
                      vehi => vehi.PATENTE == ve.Patente
                  );

                CommonBC.ModeloEstacionamiento.VEHICULO.Remove(veh);
                CommonBC.ModeloEstacionamiento.SaveChanges();

                return false;
            }
            catch(Exception ex)
            {
                return false;
            }
        }



    }
}
