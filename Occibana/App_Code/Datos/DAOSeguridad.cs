using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAOSeguridad
/// </summary>
public class DAOSeguridad
{
    public void insertartoken(Token tokenE)
    {
        using (var db = new Mapeo())
        {
            db.token.Add(tokenE);
            db.SaveChanges();
        }
    }

    public Token getTokenusuario(int userid)
    {
        return new Mapeo().token.Where(x => x.User_id == userid && x.Fecha_caducidad > DateTime.Now).FirstOrDefault();
    }

    public Token validartoken(string token)
    {
        return new Mapeo().token.Where(x => x.Tokengenerado == token).FirstOrDefault();
    }

    //actualiza contraseña
    public void actualizarcontrasenarecuperacion(Registro datoE)
    {
        using (var db = new Mapeo())
        {
            Registro datoanterior = db.usuario.Where(x => x.Id == datoE.Id).First();
            datoanterior.Contrasena = datoE.Contrasena;

            var entry = db.Entry(datoanterior);
            entry.State = EntityState.Modified;
            db.SaveChanges();
        }
    }
}