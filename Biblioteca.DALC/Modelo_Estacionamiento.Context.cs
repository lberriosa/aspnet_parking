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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class db_estacionamientoEntities : DbContext
    {
        public db_estacionamientoEntities()
            : base("name=db_estacionamientoEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<ADMINISTRATIVOS> ADMINISTRATIVOS { get; set; }
        public DbSet<ARRIENDO> ARRIENDO { get; set; }
        public DbSet<DETALLE_ARRIENDO> DETALLE_ARRIENDO { get; set; }
        public DbSet<ESTACIONAMIENTO> ESTACIONAMIENTO { get; set; }
        public DbSet<TIPO_BANCO> TIPO_BANCO { get; set; }
        public DbSet<TIPO_CUENTA> TIPO_CUENTA { get; set; }
        public DbSet<TIPO_USUARIO> TIPO_USUARIO { get; set; }
        public DbSet<USUARIO> USUARIO { get; set; }
        public DbSet<VEHICULO> VEHICULO { get; set; }
    }
}
