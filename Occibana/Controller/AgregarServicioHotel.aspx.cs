using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vew_AgregarServicioHotel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            L_SesionAnadirHotel.Text = ((Registro)Session["usuario"]).Nombre;
        }
        catch
        {
            Session.Remove("usuario");
            Response.Redirect("Login.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Perfil.aspx");
    }


    protected void B_CargarHotel_Click(object sender, EventArgs e)
    {
        ClientScriptManager cm = this.ClientScript;
        Hotel serviciohotel = new Hotel();

        serviciohotel.Nombre = TB_NombreHotel.Text;
        serviciohotel.Precionoche = int.Parse(TB_PrecioNoche.Text);
        serviciohotel.Municipio = DDL_Municipio.Text;
        //serviciohotel.Idzona = int.Parse(DDL_Zona.Text);
        serviciohotel.Numhabitacion = int.Parse(TB_AnadirNumHabitacion.Text);
        serviciohotel.Numpersona = int.Parse(TB_AnadirNumPersonas.Text);
        serviciohotel.Numbano = int.Parse(TB_AnadirNumBanos.Text);
        serviciohotel.Checkin = TB_Checkin.Text;
        serviciohotel.Checkout = TB_Checkout.Text;
        serviciohotel.Descripcion = TB_Descripcion.Text;
        serviciohotel.Condicion = TB_Condiciones.Text;


        //verifica si hay archivos seleccionados
        if (FU_ImgPrincipal.HasFile)
        {
            string direccion;
            string ext = System.IO.Path.GetExtension(FU_ImgPrincipal.FileName);//obtiene la extencion del archivo
            ext = ext.ToLower();//minusculas

            int tam = FU_ImgPrincipal.PostedFile.ContentLength;//obtiene tamano archivo

            if ((ext == ".jpg" || ext == ".png") && (tam < 1048576))//menor a 1MB en bytes
            {
                direccion = "~/Vew/hoteles/imgprincipal/" + ((Registro)Session["usuario"]).Usuario + FU_ImgPrincipal.FileName;
                FU_ImgPrincipal.SaveAs(Server.MapPath(direccion));//mapea y guarda el archivo en la direccion
                L_CargarimagenAgregarHotel.Text = "*Imagen aceptada";
                //actualiza foto de perfil
                
                serviciohotel.Imagen = direccion;
            }
            else
            {
                L_CargarimagenAgregarHotel.Text = "*Imagen no esta en formato correcto o es muy pesada";
            }
        }
        else
        {
            L_CargarimagenAgregarHotel.Text = "*Selecciona una imagen";
        }


        new DAOhotel().insertHotel(serviciohotel);
        cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('El hotel ha sido cargado');</script>");
        return;

    }

}