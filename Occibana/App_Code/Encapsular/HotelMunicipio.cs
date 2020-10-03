using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de HotelMunicipio
/// </summary>
[Serializable]//permite que se tenga relacion en cadena (volver objeto)
[Table("hotelmunicipio", Schema = "hotel")]
public class HotelMunicipio
{
    private int idmunicipio;
    private string nombre;

    [Key]
    [Column("idmunicipio")]
    public int Idmunicipio { get => idmunicipio; set => idmunicipio = value; }
    [Column("nombre")]
    public string Nombre { get => nombre; set => nombre = value; }
}