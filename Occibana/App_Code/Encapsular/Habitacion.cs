using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Hotel
/// </summary>
[Serializable]//permite que se tenga relacion en cadena (volver objeto)
[Table("hotel_habitacion", Schema = "hotel")]
public class Habitacion
{

    private int id;
    private int numpersonas;
    private int numbanio;
    private int idhotel;
    private string tipo;
    private Nullable<int> numcamas;


    [Key]
    [Column("id")]
    public int Id { get => id; set => id = value; }
    [Column("numpersona")]
     public int Numpersonas { get => numpersonas; set => numpersonas = value; }
    [Column("numbano")]
    public int Numbanio { get => numbanio; set => numbanio = value; }
    [Column("idhotel")]
    public int Idhotel { get => idhotel; set => idhotel = value; }
    [Column("tipo")]
    public string Tipo { get => tipo; set => tipo = value; }
    [Column("numcamas")]
    public Nullable<int> Numcamas { get => numcamas; set => numcamas = value; }
}