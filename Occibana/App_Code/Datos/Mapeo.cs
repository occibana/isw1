using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Mapeo
/// </summary>
public class Mapeo : DbContext//Hereda de DbContext (contiene referencias a entityFramework)
{
    static Mapeo()
    {
        Database.SetInitializer<Mapeo>(null);
    }

    public Mapeo(): base("name=Occibana")//name=(nombre DB de la cadena de coneccion en el web config)
    {

    }

    public DbSet<Registro> usuario { get; set; }
}