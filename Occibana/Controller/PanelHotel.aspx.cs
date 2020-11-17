using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vew_PanelHotel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Hotel hotel = new Hotel();
            hotel.Idhotel = ((Hotel)Session["visitarhotel"]).Idhotel;
            hotel = new DAOhotel().infohotel(hotel);
            

            L_Panelhotelnombre.Text = hotel.Nombre.ToUpper();
            L_Panelhotelzona.Text = (new DAOhotel().zona(hotel)).Nombre;
            L_Panelhotelmunicipio.Text = (new DAOhotel().municipio(hotel)).Nombre;
            L_Panelhotelhabitaciones.Text = hotel.Numhabitacion.ToString();
            L_Panelhotelprecio.Text = hotel.Precionoche.ToString();
            I_Panelimagenprincipal.ImageUrl = hotel.Imagen.ToString();

            L_Descripcion.Text = hotel.Descripcion;
            L_Condicion.Text = hotel.Condicion;
            L_Checkin.Text = hotel.Checkin;
            L_Checkout.Text = hotel.Checkout;

        }
        catch
        {
            Session.Remove("visitarhotel");
            Response.Redirect("index.aspx");
        }

    }

    protected void B_Volver_Click(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx");
    }

    protected void B_Comentarios_Click(object sender, EventArgs e)
    {
        //UpdatePanel1.Visible = false;
        //UpdatePanel2.Visible = true;
        Response.Redirect("ComentariosHotel.aspx");

    }

    protected void B_Desc_Reserva_Click(object sender, EventArgs e)
    {
        //UpdatePanel1.Visible = true;
        //UpdatePanel2.Visible = false;
    }

    protected void B_Reservar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Reserva.aspx");
    }
}