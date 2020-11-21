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
        (disponibilidadE.Fecha_llegada >=  x.Fecha_llegada && disponibilidadE.Fecha_llegada <= x.Fecha_salida) && (x.Numpersona == disponibilidadE.Numpersona)).ToList().Count();                                                                                                                        //(disponibilidadE.Fecha_salida >= x.Fecha_llegada && disponibilidadE.Fecha_salida <= x.Fecha_salida)                                                                                                                                                                        //)).ToList().Count();
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


    //actualizar promedio de calificacion




    // solicitar calificaciones
    /*public void cambiarestadoreserva(int id)
    {
        using (var db = new Mapeo())
        {
            Registro datoanterior = db.usuario.Where(x => x.Id == datoE.Id).First();
            datoanterior.Nombre = datoE.Nombre;
            datoanterior.Apellido = datoE.Apellido;
            datoanterior.Correo = datoE.Correo;
            datoanterior.Telefono = datoE.Telefono;
            datoanterior.Usuario = datoE.Usuario;
            var entry = db.Entry(datoanterior);
            entry.State = EntityState.Modified;
            db.SaveChanges();
        }
    }*/
    /*
public List<Reserva> reservasporefectuar()
{
    List<Reserva> reservasrealizadas = new Mapeo().reserva.Where(x => x.Estado == 0 && x.Fecha_salida < DateTime.Now).ToList();

    return reservasrealizadas;
}*/
}