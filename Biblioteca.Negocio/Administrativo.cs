using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Biblioteca.Negocio
{
    public class Administrativo
    {
        public Boolean Valida(String username, String password)
        {
            var Usuarios = CommonBC.ModeloEstacionamiento.ADMINISTRATIVOS;
            var query = from u in Usuarios
                        where u.USER_NAME == username
                        select u;
            foreach (var q in query)
            {
                if (q.PASSWORD == password)
                    return true;
            }
            return false;
        }


    }
}
