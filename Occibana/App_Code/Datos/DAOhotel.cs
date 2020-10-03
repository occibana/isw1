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

}