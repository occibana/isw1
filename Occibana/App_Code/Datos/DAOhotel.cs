using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAOhotel
/// </summary>
public class DAOhotel
{
    public List<HotelMunicipio> municipio()
    {
        return new Mapeo().hotelmunicipio.ToList();
    }
    public List<HotelZona> zona()
    {
        return new Mapeo().hotelzona.ToList();
    }
    //insert registro
    public void insertHotel(Hotel hotelE)
    {
        using (var db = new Mapeo())
        {
            db.hotel.Add(hotelE);
            db.SaveChanges();
        }
    }

    //lista de hoteles por usuario 
    //(hoteles que se muestran en index)
    public List<Hotel> hotelesregistrados(Filtro consulta)
    {
        using (var db = new Mapeo())
        {
            // where ((p.CategoriaId == categoriaId) || (categoriaId == 0)) select new
            List<Hotel> elementos = (from h in db.hotel join hm in db.hotelmunicipio on h.Idmunicipio equals hm.Idmunicipio
                                     join hz in db.hotelzona on h.Idzona equals hz.Idzona join hhab in db.habitacion on h.Idhotel equals hhab.Idhotel
                                     select new
                                     { h, hm, hz, hhab
                                     }).ToList().Select(m => new Hotel
                                     {
                                         Idhotel = m.h.Idhotel,
                                         Nombre = m.h.Nombre.ToUpper(),
                                         Precionoche = m.h.Precionoche,
                                         Imagen = m.h.Imagen,
                                         Municipio = m.hm.Nombre,
                                         Zona = m.hz.Nombre,
                                         NumMaxPersonas = m.hhab.Numpersonas,
                                         Tipo = m.hhab.Tipo,
                    }).ToList();
            if (consulta == null)
            {
                return elementos;
            }
            if (consulta.numpersonas != null)
            {
                elementos = elementos.Where(x => (x.NumMaxPersonas <= consulta.numpersonas)).ToList();
            }
            if (consulta.nombrehotel != null)
            {
                elementos = elementos.Where(x => x.Nombre.Equals(consulta.nombrehotel)).ToList();
            }
            if (consulta.preciomin != null && consulta.preciomax != null)
            {
                elementos = elementos.Where(x => x.Precionoche <= consulta.preciomax && x.Precionoche >= consulta.preciomin).ToList();
            }
            else
            {
                if (consulta.preciomax != null && consulta.preciomin == null)
                {
                    elementos = elementos.Where(x => x.Precionoche <= consulta.preciomax).ToList();
                }
                if (consulta.preciomin != null && consulta.preciomax == null)
                {
                    elementos = elementos.Where(x => x.Precionoche >= consulta.preciomin).ToList();
                }
            }         
            if (consulta.zona != null && consulta.municipio != null)
            {
                elementos = elementos.Where(x => (x.Municipio.Equals(consulta.municipio)) && (x.Zona.Equals(consulta.zona))).ToList();
            }
            else
            {
                if (consulta.municipio != null && consulta.zona == null)
                {
                    elementos = elementos.Where(x => x.Municipio.Equals(consulta.municipio)).ToList();
                }else
                if (consulta.zona != null && consulta.municipio == null)
                {
                    elementos = elementos.Where(x => x.Zona.Equals(consulta.zona)).ToList();
                }
            }
            
            return elementos;
        }
    }
    //select info hotel panel hotel
    public Hotel infohotel(Hotel hotelE)
    {
        return new Mapeo().hotel.Where(x => x.Idhotel.Equals(hotelE.Idhotel)).FirstOrDefault();
    }
    //select zona
    public HotelZona zona(Hotel hotelE)
    {
        return new Mapeo().hotelzona.Where(x => x.Idzona.Equals(hotelE.Idzona)).FirstOrDefault();
    }
    //select municipio
    public HotelMunicipio municipio(Hotel hotelE)
    {
        return new Mapeo().hotelmunicipio.Where(x => x.Idmunicipio.Equals(hotelE.Idmunicipio)).FirstOrDefault();
    }

    //obtener mis hoteles
    //Select 
    public List<Hotel> obtenerhoteles(string usuario)
    {
        return new Mapeo().hotel.Where(x => x.Usuarioencargado.Equals(usuario)).OrderBy(x => x.Idhotel).ToList<Hotel>();
    }

    //eliminar hotel
    public void deleteHotel(Hotel id)
    {
        using (var db = new Mapeo())
        {
            Hotel mihotel = db.hotel.Where(x => x.Idhotel == id.Idhotel).First();
            List<Habitacion> mihabitacion = db.habitacion.Where(x => x.Idhotel == id.Idhotel).ToList();
            db.habitacion.RemoveRange(mihabitacion);
            db.hotel.Remove(mihotel);
            db.SaveChanges();
        }
    }

    //Agregar habitación en el hotel
    public void actualizarhabiatacion(Habitacion idE)
    {
        using (var db = new Mapeo())
        {
            Hotel datoanterior = db.hotel.Where(x => x.Idhotel == idE.Idhotel).First();
            var idanterior = datoanterior.Numhabitacion;
            datoanterior.Numhabitacion = idanterior + 1;
            var entry = db.Entry(datoanterior);
            entry.State = EntityState.Modified;
            db.SaveChanges();
        }
    }
}


