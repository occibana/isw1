using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAOReserva
/// </summary>
public class DAOReserva
{
    //insert registro
    public void insertReserva(Reserva reservaE)
    {
        using (var db = new Mapeo())
        {
            db.reserva.Add(reservaE);
            db.SaveChanges();
        }
    }

    //select habitaciones disponibles segun filtro
    public int habitacionesdisponibles(Reserva disponibilidadE)
    {
        //int habitaciones = new Mapeo().reserva.Where(x => (x.Idhotel == disponibilidadE.Idhotel) && (x.Numpersona == disponibilidadE.Numpersona)).ToList().Count();
        //return habitaciones;
        return new Mapeo().habitacion.Where(x => (x.Idhotel == disponibilidadE.Idhotel) && (x.Numpersonas == disponibilidadE.Numpersona)).ToList().Count();
    }

    //actualiza estado de habitaciones
    public void actualizarhabitaciones(Hotel reservaE)
    {
        using (var db = new Mapeo())
        {
            Hotel datoanterior = db.hotel.Where(x => x.Idhotel == reservaE.Idhotel).First();
            datoanterior.Numhabitacion = reservaE.Numhabitacion;

            var entry = db.Entry(datoanterior);
            entry.State = EntityState.Modified;
            db.SaveChanges();
        }
    }

    
}