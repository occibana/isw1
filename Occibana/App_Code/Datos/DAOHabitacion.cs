using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAOHabitacion
/// </summary>
public class DAOHabitacion
{
    public void insertHabitacion(Habitacion habitE)
    {
        using (var db = new Mapeo())
        {
            db.habitacion.Add(habitE);
            db.SaveChanges();
        }
    }

    public int cantidadHabitaciones(Habitacion habitE)
    {
        return new Mapeo().habitacion.Where(x => x.Idhotel == habitE.Idhotel).ToList().Count();
    }


    //habitaciones por hotel
    public List<Habitacion> habitacionesHotel(Hotel idE, Filtro consulta)
    {

        if (consulta.numpersonas == null)
        {
            using (var db = new Mapeo())
            {
                List<Habitacion> habitaciones = (from hhab in db.habitacion

                                                 select new
                                                 {
                                                     hhab
                                                 }).ToList().Select(m => new Habitacion
                                                 {
                                                     Tipo = m.hhab.Tipo,
                                                     Id = m.hhab.Id,
                                                     Numbanio = m.hhab.Numbanio,
                                                     Numcamas = m.hhab.Numcamas,
                                                     Numpersonas = m.hhab.Numpersonas,
                                                     Idhotel = m.hhab.Idhotel,
                                                     Precio = m.hhab.Precio,

                                                 }).Where(x => x.Idhotel == idE.Idhotel).ToList();
                return habitaciones;
            }
        }
        else
        {
            using (var db = new Mapeo())
            {
                List<Habitacion> habitaciones = (from hhab in db.habitacion

                                                 select new
                                                 {
                                                     hhab
                                                 }).ToList().Select(m => new Habitacion
                                                 {
                                                     Tipo = m.hhab.Tipo,
                                                     Id = m.hhab.Id,
                                                     Numbanio = m.hhab.Numbanio,
                                                     Numcamas = m.hhab.Numcamas,
                                                     Numpersonas = m.hhab.Numpersonas,
                                                     Idhotel = m.hhab.Idhotel,
                                                     Precio = m.hhab.Precio,

                                                 }).Where(x => (x.Idhotel == idE.Idhotel) && (x.Numpersonas == consulta.numpersonas)).ToList();
                return habitaciones;
            }
        }


    }

    
    //select info habitacion
    public Habitacion infoHabitacion(int habitacionE)
    {
        return new Mapeo().habitacion.Where(x => (x.Id == habitacionE)).FirstOrDefault();
    }


}