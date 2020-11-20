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
        //try
        //{
        if (Session["visitarhotel"] != null)
        {
            Hotel hotel = new Hotel();
            hotel.Idhotel = ((Hotel)Session["visitarhotel"]).Idhotel;
            hotel = new DAOhotel().infohotel(hotel);
            L_NombreHotel.Text = hotel.Nombre.ToUpper();
            L_Nombrehotel2.Text = hotel.Nombre.ToUpper();

            if ((Registro)Session["usuario"] == null)
            {
                L_Usuario.Text = "Inicie sesion para comentar";
                B_Comentar.Enabled = false;
                B_Calificar.Enabled = false;
            }
            else
            {

                L_Usuario.Text = ((Registro)Session["usuario"]).Nombre;
                B_Comentar.Enabled = true;
                B_Calificar.Enabled = true;
            }
        }
        
        /*}
        catch
        {
            Response.Redirect("Login.aspx");
        }*/
            
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
            //new DAOComentarios().consulta(comenta);
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

    protected void B_Calificar_Click(object sender, EventArgs e)
    {
        Reserva inforeserva = new Reserva();
        if (Session["calificarhotel"]!=null)
        {
            inforeserva.Id = int.Parse(Session["calificarhotel"].ToString());
        }
        else
        {
            inforeserva.Idhotel = ((Hotel)Session["visitarhotel"]).Idhotel;
            inforeserva.Idusuario = ((Registro)Session["usuario"]).Id;
            inforeserva = new DAOReserva().ultimareserva(inforeserva);
        }

        if (inforeserva != null)
        {
            inforeserva = new DAOReserva().inforeserva(inforeserva);

            if (inforeserva.Calificacion == null)
            {

                if (RB_0estrella.Checked)
                {
                    inforeserva.Calificacion = 0;
                }
                else if (RB_1estrella.Checked)
                {
                    inforeserva.Calificacion = 1;
                }
                else if (RB_2estrella.Checked)
                {
                    inforeserva.Calificacion = 2;
                }
                else if (RB_3estrella.Checked)
                {
                    inforeserva.Calificacion = 3;
                }
                else if (RB_4estrella.Checked)
                {
                    inforeserva.Calificacion = 4;

                }
                else if (RB_5estrella.Checked)
                {
                    inforeserva.Calificacion = 5;
                }

                if (inforeserva.Calificacion != null)
                {
                    new DAOReserva().actualizarcalificacion(inforeserva);
                    L_Fallocalificacion.Text = "Calificacion realizada con exito";
                    new DAOReserva().cantidaddereservasconcalificacion(inforeserva);
                    var promediocalificacion = new DAOReserva().cantidaddereservasconcalificacion(inforeserva);
                    Hotel hotel = new Hotel();
                    hotel.Idhotel = int.Parse((inforeserva.Idhotel).ToString());
                    hotel.Promediocalificacion = promediocalificacion;
                    new DAOhotel().actualizarcalificacion(hotel);
                }
                else
                {
                    L_Fallocalificacion.Text = "Seleccione una opcion a calificar";
                }

            }
            else if (inforeserva.Calificacion != null)
            {
                L_Fallocalificacion.Text = "Este servicio ha sido calificado antes";
            }
        }else if (inforeserva == null)
        {
            L_Fallocalificacion.Text = "Todas sus reservas han sido calificadas";
        }
    }
}