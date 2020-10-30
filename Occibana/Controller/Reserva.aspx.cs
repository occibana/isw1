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
        try
        {
            Hotel hotel = new Hotel();
            hotel.Idhotel = ((Hotel)Session["visitarhotel"]).Idhotel;
            hotel = new DAOhotel().infohotel(hotel);
            L_NombreHotel.Text = hotel.Nombre.ToUpper();
            L_Habitacionesdisponibles.Text = hotel.Numhabitacion.ToString();
            if (Session["usuario"] != null)
            {
                L_Nombreusuario.Text = ((Registro)Session["usuario"]).Nombre;
                L_MensajeestadoSession.Text = "Si la reserva no se hará a su nombre ingrese los datos de la persona que será responsable de la reserva";
                TB_Apellido.Text = ((Registro)Session["usuario"]).Apellido;
                TB_Nombre.Text = ((Registro)Session["usuario"]).Nombre;
                TB_Correo.Text = ((Registro)Session["usuario"]).Correo;

            }
            else
            {
                L_Nombreusuario.Text = "Cliente";
                L_MensajeestadoSession.Text = "Al parecer no te haz registrado o iniciado sesión, no hay problema igualmente puedes reservar, solo dejanos saber algunos datos.";
            }
            
            if (hotel.Numhabitacion > 0)
            {
                L_Habitacionesdisponibles.Text = hotel.Numhabitacion.ToString();
            }
            else if(hotel.Numhabitacion <= 0)
            {
                L_Habitacionesdisponibles.Text = "Sin habitaciones disponibles";
            }
            
        }
        catch
        {
            Response.Redirect("index.aspx");
        }
        
    }

    /*protected void B_Confirmarreserva_Click(object sender, EventArgs e)
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
            if (hotel.Numhabitacion <= 0)
            {
                L_Mensajefallo.Text = "NO EXISTEN HABITACIÓNES DISPONIBLES";
            }
            else
            {
                hotel.Numhabitacion = hotel.Numhabitacion - 1;
                new DAOReserva().actualizarhabitaciones(hotel);
                L_Mensajefallo.Text = "REESERVA EXITOSA, REVISE SU CORREO PARA MÁS DETALLES";
            }
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
    }*/

    protected void B_Volver_Click(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx");
    }

    protected void B_BuscarDisponibilidad_Click(object sender, EventArgs e)
    {
        Reserva reserva = new Reserva();
        reserva.Idhotel = ((Hotel)Session["visitarhotel"]).Idhotel;
        reserva.Fecha_salida = C_FechaSalida.SelectedDate;
        reserva.Fecha_llegada = C_FechaLlegada.SelectedDate;
        reserva.Numpersona = int.Parse(TB_NumPersonas.Text);
        if (C_FechaLlegada.SelectedDate > C_FechaSalida.SelectedDate)
        {
            L_Habitacionesdisponibles.Text = "Seleccione una fecha de salida posterior a\n"+ C_FechaLlegada.SelectedDate;
        }
        else if (C_FechaLlegada.SelectedDate <= C_FechaSalida.SelectedDate)
        {
           var disponibles = new DAOReserva().habitacionesdisponibles(reserva);
           L_Habitacionesdisponibles.Text = (disponibles).ToString();
        }
    }
}