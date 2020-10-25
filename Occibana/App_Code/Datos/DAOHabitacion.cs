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
}