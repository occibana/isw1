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
        (disponibilidadE.Fecha_llegada >= x.Fecha_llegada && disponibilidadE.Fecha_llegada <= x.Fecha_salida) || 
        (disponibilidadE.Fecha_salida >= x.Fecha_llegada && disponibilidadE.Fecha_salida <= x.Fecha_salida)
        && (x.Numpersona == disponibilidadE.Numpersona) && (x.Id_habitacion == disponibilidadE.Id_habitacion)).ToList().Count();                                                                                                    //(disponibilidadE.Fecha_salida >= x.Fecha_llegada && disponibilidadE.Fecha_salida <= x.Fecha_salida)                                                                                                                                                                        //)).ToList().Count();
    }
    

    //select mostrar reservas
    public List<Reserva> mostrarreservas(int disponibilidadE)
    {
        return new Mapeo().reserva.Where(x => x.Idhotel == disponibilidadE && x.Fecha_salida >= DateTime.Now).ToList();
    }

    //select mostrar reservas completadas
    public List<Reserva> mostrarreservascompletadas(int disponibilidadE)
    {
        return new Mapeo().reserva.Where(x => x.Idhotel == disponibilidadE && x.Fecha_salida <= DateTime.Now).ToList();
    }

    // select mis reservas
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
                        Id = m.r.Id,
                        Idhotel = m.h.Idhotel,
                        Numpersona = m.r.Numpersona,
                        Nombrehotel = m.h.Nombre,
                        Fecha_llegada = m.r.Fecha_llegada,
                        Fecha_salida = m.r.Fecha_salida,
                        Nombre = m.r.Nombre,
                        Apellido = m.r.Apellido,
                        Correo = m.r.Correo,
                        Mediopago = m.r.Mediopago,
                        Calificacion = m.r.Calificacion,
                        PrecioNoche = m.r.PrecioNoche,
                    }).ToList();
        }
        //return new Mapeo().reserva.Where(x => x.Idusuario == disponibilidadE.Id).ToList();
    }

    //select reserva
    //select fechas disponibles
    public Reserva inforeserva(Reserva reserva)
    {
        return new Mapeo().reserva.Where(x => (x.Id == reserva.Id)).FirstOrDefault();
    }

    //eliminar reserva 
    public void deleteReserva(Reserva inforeserva)
    {
        using (var db = new Mapeo())
        {
            Reserva mireserva = db.reserva.Where(x => x.Id == inforeserva.Id).First();
            db.reserva.Remove(mireserva);
            db.SaveChanges();
        }
    }

    //actualizar calificacion
    //actualiza foto perfil
    public void actualizarcalificacion(Reserva datosE)
    {
        using (var db = new Mapeo())
        {
            Reserva calificacionanterior = db.reserva.Where(x => x.Id == datosE.Id).First();

            calificacionanterior.Calificacion = datosE.Calificacion;
            var entry = db.Entry(calificacionanterior);
            entry.State = EntityState.Modified;
            db.SaveChanges();
        }
    }


    //actualizar promedio de calificacion
    //contar elementos
    public int cantidaddereservasconcalificacion(Reserva hotel)
    {
        double? reservas = new Mapeo().reserva.Where(x => (x.Idhotel == hotel.Idhotel) && (x.Calificacion != null)).Average(x => x.Calificacion);
        double variable = Convert.ToDouble(reservas);
        reservas = Math.Round(variable);
        return int.Parse(reservas.ToString());
    }


    //informacion de la reserva - ultima reserva sin calificar
    public Reserva ultimareserva(Reserva reservaE)
    {
        Reserva ultimareserva = new Mapeo().reserva.Where(x => (x.Idhotel == reservaE.Idhotel) && (x.Idusuario == reservaE.Idusuario) && (x.Calificacion == null)).FirstOrDefault();
        
        return ultimareserva;
    }


    //verificar si la reserva ya se encuentra antes de hacerla efectiva
    public int verificarreserva(Reserva reservaE)
    {
        int reserva = new Mapeo().reserva.Where(x => (x.Idhotel == reservaE.Idhotel) && (x.Numpersona == reservaE.Numpersona) && (x.Fecha_llegada == reservaE.Fecha_llegada) && (x.Fecha_salida == reservaE.Fecha_salida) && (x.Id_habitacion == reservaE.Id_habitacion)).Count();
        return reserva;
    }

    //disponibbilidad de personas
    public List<Habitacion> disponibilidadDePeronas(Hotel datosE)
    {
        using (var db = new Mapeo())
        {
            List<Habitacion> limiteDePersonas = (from hhab in db.habitacion where hhab.Idhotel==datosE.Idhotel
                                                 select new
                    {
                        hhab
                    }).ToList().Select(m => new Habitacion
                    {
                        Id = m.hhab.Numpersonas,
                    }).ToList();

            return limiteDePersonas;
        }
    }
}