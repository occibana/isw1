using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de HotelZona
/// </summary>
[Serializable]//permite que se tenga relacion en cadena (volver objeto)
[Table("hotelzona", Schema = "hotel")]
public class HotelZona
{
    private int idzona;
    private string nombre;

    [Key]
    [Column("idzona")]
    public int Idzona { get => idzona; set => idzona = value; }
    [Column("nombre")]
    public string Nombre { get => nombre; set => nombre = value; }
   
}

