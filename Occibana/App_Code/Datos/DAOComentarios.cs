using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAOComentarios
/// </summary>
public class DAOComentarios
{
    public List<Comentarios> obtenerComentarios(Hotel id)
    {
        using (var db = new Mapeo())
        {
            //           return new Mapeo().comentario.Where(x => x.Id_hotel.Equals(id.Idhotel)).ToList<Comentarios>();
         List<Comentarios> comentariosHotel =  (from ch in db.comentario
                    join us in db.usuario on ch.Id_usuario equals us.Id

                    select new
                    {
                        ch,
                        us
                    }).ToList().Select(m => new Comentarios
                    {
                        Nombre_usuario = m.us.Nombre,
                        Comentario = m.ch.Comentario,
                        Id_usuario = m.ch.Id_usuario,
                        Id_hotel = m.ch.Id_hotel,
                    }).ToList<Comentarios>();

            if (comentariosHotel != null && id.Idhotel != null)
            {
                comentariosHotel = comentariosHotel.Where(x => x.Id_hotel.Equals(id.Idhotel)).ToList();

            }
            
            return comentariosHotel;
        }
    }

    public void insertComentario(Comentarios coment)
    {
        using (var db = new Mapeo())
        {
            db.comentario.Add(coment);
            db.SaveChanges();
        }
    }

    //public Boolean consulta(Comentarios user)
    //{
    //    if (new Mapeo().reserva.Where(x => (x.Idhotel == user.Id_hotel) &&
    //   ((user.Fecha_comentario >= x.Fecha_salida && user.Fecha_comentario <= x.Fecha_salida.AddDays(3))
    //     )))
    //    {
    //        return true;
    //    }
    //    else return false;


    //}
}
