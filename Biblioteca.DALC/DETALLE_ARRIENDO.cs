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
    
    public partial class DETALLE_ARRIENDO
    {
        public int ID_DETALLE { get; set; }
        public string COD_ARRIENDO { get; set; }
        public int DURACION { get; set; }
        public int COSTO_TOTAL { get; set; }
    
        public virtual ARRIENDO ARRIENDO { get; set; }
    }
}
