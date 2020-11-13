using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vew_ComentariosHotel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Hotel hotel = new Hotel();
        hotel.Idhotel = ((Hotel)Session["visitarhotel"]).Idhotel;
        hotel = new DAOhotel().infohotel(hotel);
        L_NombreHotel.Text = hotel.Nombre.ToUpper();

        if ((Registro) Session["usuario"] == null)
        {
            L_Usuario.Text = "";
        }
        else
        {
            L_Usuario.Text = ((Registro)Session["usuario"]).Nombre;
            
        }
            
    }

    protected void B_Comentar_Click(object sender, EventArgs e)
    {
        
        ClientScriptManager cm = this.ClientScript;
        try
        {
            Comentarios comenta = new Comentarios();

            comenta.Id_hotel = ((Hotel)Session["visitarhotel"]).Idhotel;
            comenta.Id_usuario = ((Registro)Session["usuario"]).Id;
            comenta.Comentario = TB_Comentario.Text;
            comenta.Fecha_comentario = DateTime.Now;
            new DAOComentarios().consulta(comenta);
            new DAOComentarios().insertComentario(comenta);
            TB_Comentario.Text = "";
            L_Mensaje.Text = "Comentario Agregado.";
           // cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Comentario Agregado');</script>");
            
        }
        catch 
        {
            L_Mensaje.Text = "Para comentar, inicie sesion.";
            L_Mensaje.Visible = true;
            TB_Comentario.Text = "";
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('No tiene permitido comentar');</script>");
            //Response.Redirect("ComentariosHotel.aspx");
            
        }


    }

    protected void TB_Comentario_TextChanged(object sender, EventArgs e)
    {
        //L_Mensaje.Visible = false;
    }
}