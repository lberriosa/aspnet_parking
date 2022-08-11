using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Biblioteca.Negocio
{
    public class Usuario
    {
        private string _rut_usuario;
        private string _nombre_usuario;
        private string _apellido_usuario;
        private string _correo_usuario;
        private int _telefono_usuario;
        private string _direccion_usuario;
        private int _id_tipo_cuenta;
        private int _id_tipo_banco;
        private long _numero_cuenta_bancaria;
        private int _cvv;
        private int _id_tipo_usuario;
        private bool _habilitado;

        public string Rut_usuario { get => _rut_usuario; set => _rut_usuario = value; }
        public string Nombre_usuario { get => _nombre_usuario; set => _nombre_usuario = value; }
        public string Apellido_usuario { get => _apellido_usuario; set => _apellido_usuario = value; }
        public string Correo_usuario { get => _correo_usuario; set => _correo_usuario = value; }
        public int Telefono_usuario { get => _telefono_usuario; set => _telefono_usuario = value; }
        public string Direccion_usuario { get => _direccion_usuario; set => _direccion_usuario = value; }
        public int Id_tipo_cuenta { get => _id_tipo_cuenta; set => _id_tipo_cuenta = value; }
        public int Id_tipo_banco { get => _id_tipo_banco; set => _id_tipo_banco = value; }
        public long Numero_cuenta_bancaria { get => _numero_cuenta_bancaria; set => _numero_cuenta_bancaria = value; }
        public int Cvv { get => _cvv; set => _cvv = value; }
        public int Id_tipo_usuario { get => _id_tipo_usuario; set => _id_tipo_usuario = value; }
        public bool Habilitado { get => _habilitado; set => _habilitado = value; }

        public Usuario()
        {
            this.Init();
        }

        private void Init()
        {
            Rut_usuario = "";
            Nombre_usuario = "";
            Apellido_usuario = "";
            Correo_usuario = "";
            Telefono_usuario = 0;
            Direccion_usuario = "";
            Id_tipo_cuenta = 0;
            Id_tipo_banco = 0;
            Numero_cuenta_bancaria = 0;
            Cvv = 0;
            Id_tipo_usuario = 0;
            Habilitado = true;
        }

        public bool Create(Usuario us)
        {
            try
            {
                Biblioteca.DALC.USUARIO user = new DALC.USUARIO();

                user.RUT_USUARIO = us.Rut_usuario;
                user.NOMBRE_USUARIO = us.Nombre_usuario;
                user.APELLIDO_USUARIO = us.Apellido_usuario;
                user.CORREO_USUARIO = us.Correo_usuario;
                user.TELEFONO_USUARIO = us.Telefono_usuario;
                user.DIRECCION_USUARIO = us.Direccion_usuario;
                user.ID_TIPO_CUENTA = us.Id_tipo_cuenta;
                user.ID_TIPO_BANCO = us.Id_tipo_banco;
                user.NUMERO_CUENTA_BANCARIA = us.Numero_cuenta_bancaria;
                user.CVV = us.Cvv;
                user.ID_TIPO_USUARIO = us.Id_tipo_usuario;
                user.HABILITADO = us.Habilitado;

                CommonBC.ModeloEstacionamiento.USUARIO.Add(user);
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
                Biblioteca.DALC.USUARIO user =
                    CommonBC.ModeloEstacionamiento.USUARIO.First
                    (
                        us => us.RUT_USUARIO == this.Rut_usuario
                    );

                this.Rut_usuario = user.RUT_USUARIO;
                this.Nombre_usuario = user.NOMBRE_USUARIO;
                this.Apellido_usuario = user.APELLIDO_USUARIO;
                this.Correo_usuario = user.CORREO_USUARIO;
                this.Telefono_usuario = user.TELEFONO_USUARIO;
                this.Direccion_usuario = user.DIRECCION_USUARIO;
                this.Id_tipo_cuenta = user.ID_TIPO_CUENTA;
                this.Id_tipo_banco = user.ID_TIPO_BANCO;
                this.Numero_cuenta_bancaria = user.NUMERO_CUENTA_BANCARIA;
                this.Cvv = user.CVV;
                this.Id_tipo_usuario = user.ID_TIPO_USUARIO;
                this.Habilitado = user.HABILITADO;

                return true;
            }
            catch(Exception ex)
            {
                return false;
            }
        }


        public bool Update(Usuario usu)
        {
            try
            {
                Biblioteca.DALC.USUARIO user =
                    CommonBC.ModeloEstacionamiento.USUARIO.First
                    (
                        us => us.RUT_USUARIO == usu.Rut_usuario
                    );

                user.NOMBRE_USUARIO = usu.Nombre_usuario;
                user.APELLIDO_USUARIO = usu.Apellido_usuario;
                user.CORREO_USUARIO = usu.Correo_usuario;
                user.TELEFONO_USUARIO = usu.Telefono_usuario;
                user.DIRECCION_USUARIO = usu.Direccion_usuario;
                user.ID_TIPO_CUENTA = usu.Id_tipo_cuenta;
                user.ID_TIPO_BANCO = usu.Id_tipo_banco;
                user.NUMERO_CUENTA_BANCARIA = usu.Numero_cuenta_bancaria;
                user.CVV = usu.Cvv;
                user.ID_TIPO_USUARIO = usu.Id_tipo_usuario;
                user.HABILITADO = usu.Habilitado;

                CommonBC.ModeloEstacionamiento.SaveChanges();

                return false;
            }
            catch (Exception ex)
            {
                return true;
            }

        }


        public bool Delete(Usuario usu)
        {
            try
            {
                Biblioteca.DALC.USUARIO user =
                     CommonBC.ModeloEstacionamiento.USUARIO.First
                     (
                         us => us.RUT_USUARIO == usu.Rut_usuario
                     );

                CommonBC.ModeloEstacionamiento.USUARIO.Remove(user);
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
