using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vew_Misreservas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            L_Usuario.Text = ((Registro)Session["usuario"]).Nombre;
        }
        catch
        {
            Response.Redirect("Login.aspx");
            Session.Remove("usuario");
        }
    }

    protected void GV_Mishoteles_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int idreserva = int.Parse(e.CommandArgument.ToString());

        if (e.CommandName == "calificarreserva")
        {
            Reserva inforeserva = new Reserva();
            inforeserva.Id = int.Parse(GV_Mishoteles.DataKeys[idreserva].Value.ToString());
            inforeserva = new DAOReserva().inforeserva(inforeserva);
            Hotel hotelinfo = new Hotel();
            hotelinfo.Idhotel = int.Parse((inforeserva.Idhotel).ToString());
            Session["visitarhotel"] = hotelinfo;
            Session["calificarhotel"] = int.Parse(GV_Mishoteles.DataKeys[idreserva].Value.ToString());
            Response.Redirect("ComentariosHotel.aspx"); 
        }
    }
}