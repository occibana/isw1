﻿using System;
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
            //hotel = new DAOhotel().municipio(hotel.Idmunicipio);

            L_Panelhotelnombre.Text = hotel.Nombre.ToUpper();
            L_Panelhotelzona.Text = (new DAOhotel().zona(hotel)).Nombre;
            L_Panelhotelmunicipio.Text = (new DAOhotel().municipio(hotel)).Nombre;
            L_Panelhotelhabitaciones.Text = hotel.Numhabitacion.ToString();
            L_Panelhotelprecio.Text = hotel.Precionoche.ToString();
            I_Panelimagenprincipal.ImageUrl = hotel.Imagen.ToString();

        }
        catch
        {
            Session.Remove("visitarhotel");
            Response.Redirect("index.aspx");
        }

    }
}