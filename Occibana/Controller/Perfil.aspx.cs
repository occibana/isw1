using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Vew_Perfil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            L_Pnombre.Text = ((Registro)Session["usuario"]).Nombre;
            L_Pcorreo.Text = ((Registro)Session["usuario"]).Correo;

            L_Ptelefono.Text = ((Registro)Session["usuario"]).Telefono;
            L_Pusuariodatospersonales.Text = ((Registro)Session["usuario"]).Usuario;
            L_Pusuario.Text = ((Registro)Session["usuario"]).Usuario;
            //L_Pestadomembresia.Text = ((Registro)Session["usuario"]).Idestado;
            fotoperfil.ImageUrl = ((Registro)Session["usuario"]).Fotoperfil;
            if (((Registro)Session["usuario"]).Fotoperfil == null)
            {
                fotoperfil.ImageUrl="~/Vew/img/perfilvacio.jpg";
            }
            if (((Registro)Session["usuario"]).Idestado == 1) //1 Es con menbresia, 0 sin membresia
            {
                B_ComprarMembresia.Visible = false;
                B_ActualizarMembresia.Visible = true;
                B_AgregarHotel.Visible = true;
                L_EstadoMembresia.Text = "Con Membresia";

            } else
            {
                B_ComprarMembresia.Visible = true;
                B_ActualizarMembresia.Visible = false;
                B_AgregarHotel.Visible = false;
                L_EstadoMembresia.Text = "Sin Membresia";
            }
            
        }
        catch
        {
            Session.Remove("usuario");
            Response.Redirect("Login.aspx");
        }
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Session.Remove("usuario");
        Response.Redirect("Login.aspx");
    }



    protected void Button9_Click(object sender, EventArgs e)
    {
        
        //verifica si hay archivos seleccionados
        if (FileUpload1.HasFile)
        {
            string direccion;
            string ext = System.IO.Path.GetExtension(FileUpload1.FileName);//obtiene la extencion del archivo
            ext = ext.ToLower();//minusculas

            int tam = FileUpload1.PostedFile.ContentLength;//obtiene tamano archivo
            //string fotoperfil;

            if ((ext == ".jpg" || ext == ".png") && (tam < 1048576))//menor a 1MB en bytes
            {
                direccion = "~/Vew/imgusuarios/" + ((Registro)Session["usuario"]).Usuario + FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath(direccion));//mapea y guarda el archivo en la direccion
                L_Pcargaimagen.Text = "*Imagen aceptada";
                //actualiza foto de perfil
                Registro nuevodat = new Registro();
                nuevodat.Id = ((Registro)Session["usuario"]).Id;
                nuevodat.Fotoperfil = direccion;
                new DAOLogin().actualizarfoto(nuevodat);
                L_Pcargaimagen.Text = "*Imagen cargada con exito";                
            }
            else
            {
                L_Pcargaimagen.Text = "*Imagen no esta en formato correcto o es muy pesada";
            }            
        }
        else
        {
            L_Pcargaimagen.Text = "*Selecciona una imagen";
        }
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("ActualizarDatos.aspx");
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("Actualizarcontrasena.aspx");
    }

    protected void B_AgregarHotel_Click(object sender, EventArgs e)
    {
        Response.Redirect("AgregarServicioHotel.aspx");
    }
}