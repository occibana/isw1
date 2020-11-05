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
        return new Mapeo().habitacion.Where(x => (x.Idhotel == disponibilidadE.Idhotel) && (x.Numpersonas == disponibilidadE.Numpersona)).ToList().Count();
    }


    //select fechas disponibles
    public int fechasdisponibles(Reserva disponibilidadE)
    {
        return new Mapeo().reserva.Where(x => (x.Idhotel == disponibilidadE.Idhotel) && 
        ((disponibilidadE.Fecha_llegada >=  x.Fecha_llegada && disponibilidadE.Fecha_llegada <= x.Fecha_salida) ||
        (disponibilidadE.Fecha_salida >= x.Fecha_llegada && disponibilidadE.Fecha_salida <= x.Fecha_salida)
          )).ToList().Count();
    }

    //actualiza estado de habitaciones
    /*public void actualizarhabitaciones(Hotel reservaE)
    {
        using (var db = new Mapeo())
        {
            Hotel datoanterior = db.hotel.Where(x => x.Idhotel == reservaE.Idhotel).First();
            datoanterior.Numhabitacion = reservaE.Numhabitacion;

            var entry = db.Entry(datoanterior);
            entry.State = EntityState.Modified;
            db.SaveChanges();
        }
    }*/

    //select mostrar reservas
    public List<Reserva> mostrarreservas(Reserva disponibilidadE)
    {
        return new Mapeo().reserva.Where(x => x.Idhotel == disponibilidadE.Idhotel).ToList();
    }

    public List<Reserva> mostrarmisreservas(Registro disponibilidadE)
    {
        using (var db = new Mapeo())
        {
            return (from h in db.hotel join r in db.reserva on h.Idhotel equals r.Idhotel where r.Idusuario == disponibilidadE.Id 
                    select new
                    {
                    h,
                    r
                    }).ToList().Select(m => new Reserva
                    {
                        Numpersona = m.r.Numpersona,
                        Nombrehotel = m.h.Nombre,
                        Fecha_llegada = m.r.Fecha_llegada,
                        Fecha_salida = m.r.Fecha_salida,
                        Nombre = m.r.Nombre,
                        Apellido = m.r.Apellido,
                        Correo = m.r.Correo,
                    }).ToList();
        }
        //return new Mapeo().reserva.Where(x => x.Idusuario == disponibilidadE.Id).ToList();
    }
}