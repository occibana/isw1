using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vew_Reserva : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["usuario"] != null)
        {
            L_Nombreusuario.Text = ((Registro)Session["usuario"]).Nombre;
            L_Mensajesinsession.Text = "Si la reserva no se hará a su nombre ingrese los datos de la persona que será responsable de la reserva";
            TB_apellido.Text = ((Registro)Session["usuario"]).Apellido;
            TB_nombre.Text = ((Registro)Session["usuario"]).Nombre;
            TB_correo.Text = ((Registro)Session["usuario"]).Correo;
        }
        else
        {
            L_Nombreusuario.Text = "Cliente";
            L_Mensajesinsession.Text = "Al parecer no te haz registrado o iniciado sesión, no hay problema igualmente puedes reservar, solo dejanos saber algunos datos.";
        }

    }

    protected void Button4_Click(object sender, EventArgs e)
    {

        Hotel hotel = new Hotel();
        hotel.Idhotel = ((Hotel)Session["visitarhotel"]).Idhotel;
        hotel = new DAOhotel().infohotel(hotel);
        Reserva reserva = new Reserva();

        if (Session["usuario"] != null)
        {
            reserva.Idusuario = ((Registro)Session["usuario"]).Id;
            reserva.Apellido = TB_apellido.Text;
            reserva.Nombre = TB_nombre.Text;
            reserva.Numpersona = int.Parse(TB_Numpersonas.Text);
            reserva.Correo = TB_correo.Text;
            reserva.Idhotel = ((Hotel)Session["visitarhotel"]).Idhotel;
            reserva.Fecha_llegada = Calendar_Fechallegada.SelectedDate;
            reserva.Fecha_salida = Calendar_Fechasalida.SelectedDate;
            new DAOReserva().insertReserva(reserva);
            hotel.Numhabitacion = hotel.Numhabitacion - 1;
            new DAOReserva().actualizarhabitaciones(hotel);
            L_Mensajefallo.Text = "REESERVA EXITOSA, REVISE SU CORREO PARA MÁS DETALLES";

        }
        else
        {
            reserva.Apellido = TB_apellido.Text;
            reserva.Nombre = TB_nombre.Text;
            reserva.Numpersona = int.Parse(TB_Numpersonas.Text);
            reserva.Correo = TB_correo.Text;
            reserva.Idhotel = ((Hotel)Session["visitarhotel"]).Idhotel;
            reserva.Fecha_llegada = Calendar_Fechallegada.SelectedDate;
            reserva.Fecha_salida = Calendar_Fechasalida.SelectedDate;
            new DAOReserva().insertReserva(reserva);
            hotel.Numhabitacion = hotel.Numhabitacion - 1;
            new DAOReserva().actualizarhabitaciones(hotel);
            L_Mensajefallo.Text = "REESERVA EXITOSA, REVISE SU CORREO PARA MÁS DETALLES";
        }
    }
}