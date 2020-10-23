using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Reserva
/// </summary>
[Serializable]//permite que se tenga relacion en cadena (volver objeto)
[Table("reserva", Schema = "hotel")]
public class Reserva
{

    private int id;
    private int idusuario;
    private int numpersona;
    private DateTime fecha_llegada;
    private DateTime fecha_salida;
    private string nombre;
    private string apellido;
    private string correo;
    private int idhotel;

    [Key]
    [Column("id")]
    public int Id { get => id; set => id = value; }
    [Column("idusuario")]
    public int Idusuario { get => idusuario; set => idusuario = value; }
    [Column("numpersona")]
    public int Numpersona { get => numpersona; set => numpersona = value; }
    [Column("fecha_llegada")]
    public DateTime Fecha_llegada { get => fecha_llegada; set => fecha_llegada = value; }
    [Column("fecha_salida")]
    public DateTime Fecha_salida { get => fecha_salida; set => fecha_salida = value; }
    [Column("nombre")]
    public string Nombre { get => nombre; set => nombre = value; }
    [Column("apellido")]
    public string Apellido { get => apellido; set => apellido = value; }
    [Column("correo")]
    public string Correo { get => correo; set => correo = value; }
    [Column("idhotel")]
    public int Idhotel { get => idhotel; set => idhotel = value; }
}