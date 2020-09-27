using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAOLogin
/// </summary>
public class DAOLogin
{
    //verificacion login
    public Registro verificar(Registro loginE)
    {
        return new Mapeo().usuario.Where(x => x.Usuario.ToUpper().Equals(loginE.Usuario.ToUpper()) && x.Contrasena.Equals(loginE.Contrasena)).FirstOrDefault();
    }

    //insert registro
    public void insertRegistro(Registro registroE)
    {
        using (var db = new Mapeo())
        {
            db.usuario.Add(registroE);
            db.SaveChanges();
        }
    }
    //verifica usuario no repetido
    public Registro verificaruser(Registro registroE)
    {
        return new Mapeo().usuario.Where(x => x.Usuario.ToUpper().Equals(registroE.Usuario.ToUpper()) || x.Correo.ToUpper().Equals(registroE.Correo.ToUpper())).FirstOrDefault();
    }
    //actualiza foto perfil
    public void actualizarfoto(Registro fotoE)
    {
        using (var db = new Mapeo())
        {
            Registro fotoanterior = db.usuario.Where(x => x.Id == fotoE.Id).First();
            //eliminar anterior
            if (File.Exists(fotoanterior.Fotoperfil))
            {
                Console.WriteLine("existe"+ fotoanterior.Fotoperfil);
                //File.Delete(fotoanterior.Fotoperfil);
            }
            //
            fotoanterior.Fotoperfil = fotoE.Fotoperfil;
            var entry = db.Entry(fotoanterior);
            entry.State = EntityState.Modified;
            db.SaveChanges();
        }
    }
    //actualiza datos perfil
    public void actualizarperfil(Registro datoE)
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
    }




}