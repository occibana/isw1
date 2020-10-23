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
    public List<Hotel> hotelesregistrados(int consulta)
    {
        using (var db = new Mapeo())
        {
            // where ((p.CategoriaId == categoriaId) || (categoriaId == 0)) select new
            return (from h in db.hotel join hm in db.hotelmunicipio on h.Idmunicipio equals hm.Idmunicipio where (h.Idhotel >= consulta) select new
                    { h,hm     
                    }).ToList().Select(m => new Hotel
                    {
                        Idhotel = m.h.Idhotel,
                        Nombre = m.h.Nombre.ToUpper(),
                        Precionoche = m.h.Precionoche,
                        Imagen = m.h.Imagen,
                        Municipio = m.hm.Nombre,
                        
                    }).ToList();
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

}


