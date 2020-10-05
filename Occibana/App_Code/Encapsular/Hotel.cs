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
[Table("hotel", Schema = "hotel")]
public class Hotel
{
    private int idhotel;
    private string municipio;
    private int idmunicipio;
    private int numhabitacion;
    private int numpersona;
    private int numbano;
    private int precionoche;
    private string descripcion;
    private string condicion;
    private string checkin;
    private string checkout;
    private string imagen;
    private string nombre;
    private string usuarioencargado;
    private int idzona;

    [Key]
    [Column("idhotel")]
    public int Idhotel { get => idhotel; set => idhotel = value; }
    [Column("idmunicipio")]
    public int Idmunicipio { get => idmunicipio; set => idmunicipio = value; }
    [Column("numhabitacion")]
    public int Numhabitacion { get => numhabitacion; set => numhabitacion = value; }
    [Column("numpersona")]
    public int Numpersona { get => numpersona; set => numpersona = value; }
    [Column("numbano")]
    public int Numbano { get => numbano; set => numbano = value; }
    [Column("precionoche")]
    public int Precionoche { get => precionoche; set => precionoche = value; }
    [Column("descripcion")]
    public string Descripcion { get => descripcion; set => descripcion = value; }
    [Column("condicion")]
    public string Condicion { get => condicion; set => condicion = value; }
    [Column("checkin")]
    public string Checkin { get => checkin; set => checkin = value; }
    [Column("checkout")]
    public string Checkout { get => checkout; set => checkout = value; }
    [Column("imagen")]
    public string Imagen { get => imagen; set => imagen = value; }
    [Column("nombre")]
    public string Nombre { get => nombre; set => nombre = value; }
    [Column("idzona")]
    public int Idzona { get => idzona; set => idzona = value; }
    [Column("usuarioencargado")]
    public string Usuarioencargado { get => usuarioencargado; set => usuarioencargado = value; }

    [NotMapped]
    public string Municipio { get => municipio; set => municipio = value; }
}