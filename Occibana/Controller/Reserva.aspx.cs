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
        int habitacionesDisponibles;
        deshabilitarbotones();
        try
        {
            
            Hotel hotel = new Hotel();
            hotel.Idhotel = ((Hotel)Session["visitarhotel"]).Idhotel;
            hotel = new DAOhotel().infohotel(hotel);
            L_NombreHotel.Text = hotel.Nombre.ToUpper();
            habitacionesDisponibles = int.Parse(hotel.Numhabitacion.ToString());
            habitacionesDisponibles = habitacionesDisponibles - 1;

            L_Habitacionesdisponibles.Text = habitacionesDisponibles.ToString();
            L_PrecioNoche.Text = hotel.Precionoche.ToString();
            L_NumeroDePersonas.Text = (((Habitacion)Session["idhabitacion"]).Numpersonas).ToString();
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
                L_Habitacionesdisponibles.Text = habitacionesDisponibles.ToString();
            }
            else if (hotel.Numhabitacion <= 0)
            {
                L_Habitacionesdisponibles.Text = "Sin habitaciones disponibles";
            }

        }
        catch (Exception ex)
        {
            Response.Redirect("index.aspx");
        }

    }

    protected void B_Volver_Click(object sender, EventArgs e)
    {
        Response.Redirect("PanelHotel.aspx");
    }

    protected void B_BuscarDisponibilidad_Click(object sender, EventArgs e)
    {
        Reserva reserva = new Reserva();
        reserva.Idhotel = ((Hotel)Session["visitarhotel"]).Idhotel;
        reserva.Fecha_salida = C_FechaSalida.SelectedDate;
        reserva.Fecha_llegada = C_FechaLlegada.SelectedDate;
        reserva.Numpersona = int.Parse(L_NumeroDePersonas.Text);
        reserva.Id = ((Habitacion)Session["idhabitacion"]).Id;
        if (reserva.Fecha_llegada < DateTime.Now)
        {
            L_Habitacionesdisponibles.Text = "Seleccione fechas de llegada despues de "+ DateTime.Now.Date;
            deshabilitarbotones();
        }
        else
        {
            if (reserva.Fecha_llegada == null || reserva.Fecha_salida == null)
            {
                L_Habitacionesdisponibles.Text = "Seleccione las fechas correctamente";
                deshabilitarbotones();
            }
            else if (reserva.Fecha_llegada != null || reserva.Fecha_salida != null)
            {
                if (C_FechaLlegada.SelectedDate > C_FechaSalida.SelectedDate)
                {
                    L_Habitacionesdisponibles.Text = "Seleccione una fecha de salida posterior a\n" + C_FechaLlegada.SelectedDate;
                }
                else if (C_FechaLlegada.SelectedDate <= C_FechaSalida.SelectedDate)
                {
                   
                    var hdisponibles = new DAOReserva().habitacionesdisponibles(reserva);//hdisponibles-fechasreservadas
                    var fechasreservadas = new DAOReserva().fechasdisponibles(reserva);
                    var disponibilidad = hdisponibles - fechasreservadas;
                    if (hdisponibles >= 1)
                    {
                        if (disponibilidad > 0)
                        {
                            habilitarbotones();
                            L_Habitacionesdisponibles.Text = (disponibilidad-1).ToString();
                        }
                        else
                        {
                            L_Habitacionesdisponibles.Text = "0";
                            deshabilitarbotones();
                        }
                    }
                    else
                    {
                        L_Habitacionesdisponibles.Text = "No hay habitaciones disponibles para ese numero de personas";
                        deshabilitarbotones();
                    }
                }
            }
        }
    }

    protected void deshabilitarbotones()
    {
        TB_Nombre.Enabled = false;
        TB_Correo.Enabled = false;
        TB_Apellido.Enabled = false;
        TB_CCorreo.Enabled = false;
        B_ConfirmarReserva.Enabled = false;
    }

    protected void habilitarbotones()
    {
        TB_Nombre.Enabled = true;
        TB_Correo.Enabled = true;
        TB_Apellido.Enabled = true;
        TB_CCorreo.Enabled = true;
        B_ConfirmarReserva.Enabled = true;
    }

    protected void B_ConfirmarReserva_Click(object sender, EventArgs e)
    {
        ClientScriptManager cm = this.ClientScript;//script
        Hotel hotel = new Hotel();
        hotel.Idhotel = ((Hotel)Session["visitarhotel"]).Idhotel;
        hotel = new DAOhotel().infohotel(hotel);
        Reserva reserva = new Reserva();

        reserva.Apellido = TB_Apellido.Text;
        reserva.Nombre = TB_Nombre.Text;
        reserva.Numpersona = int.Parse(L_NumeroDePersonas.Text);
        reserva.Correo = TB_Correo.Text;
        reserva.Idhotel = ((Hotel)Session["visitarhotel"]).Idhotel;
        reserva.Fecha_llegada = C_FechaLlegada.SelectedDate;
        reserva.Fecha_salida = C_FechaSalida.SelectedDate;
        reserva.Mediopago = CHBL_Mediodepago.Text;
        reserva.Limite_comentario = reserva.Fecha_salida.AddDays(3);
        int cantreservas = new DAOReserva().verificarreserva(reserva);
        if (cantreservas==0)
        {
            if (Session["usuario"] != null)
            {
                reserva.Idusuario = ((Registro)Session["usuario"]).Id;
                new DAOReserva().insertReserva(reserva);
                L_MensajeestadoSession.Text = "REESERVA EXITOSA";//, REVISE SU CORREO PARA MÁS DETALLES
                new Mail().mailconfirmarreserva(reserva);
            }
            else
            {
                new DAOReserva().insertReserva(reserva);
                L_MensajeestadoSession.Text = "REESERVA EXITOSA";//, REVISE SU CORREO PARA MÁS DETALLES
                cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('La reserva ha sido exitosa');</script>");
                new Mail().mailconfirmarreserva(reserva);
            }
        }
        else
        {
            L_MensajeestadoSession.Text = "RESERVA OCUPADA";//, REVISE SU CORREO PARA MÁS DETALLES
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('ESTA RESERVA SE ENCUENTRA OCUPADA');</script>");
        }
        
    }
}