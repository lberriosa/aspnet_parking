//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Biblioteca.DALC
{
    using System;
    using System.Collections.Generic;
    
    public partial class TIPO_CUENTA
    {
        public TIPO_CUENTA()
        {
            this.USUARIO = new HashSet<USUARIO>();
        }
    
        public int ID_TIPO_CUENTA { get; set; }
        public string TIPO_CUENTA1 { get; set; }
    
        public virtual ICollection<USUARIO> USUARIO { get; set; }
    }
}
