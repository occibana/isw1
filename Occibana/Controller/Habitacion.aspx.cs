using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vew_Habitacion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        L_Prueba.Text = (string)Session["tabla"];
    }

    protected void B_Volver_Click(object sender, EventArgs e)
    {
        Response.Redirect("Mishoteles.aspx");
    }

    protected void B_AgregarHabitacion_Click(object sender, EventArgs e)
    {
       // try
        //{
            Habitacion habit = new Habitacion();

            habit.Numpersonas = int.Parse(TB_NumPersonas.Text);
            habit.Numbanio = int.Parse(TB_NumBanio.Text);
            //habit.Idhotel = sender.;
            //((Hotel)Session["usuario"]).Idhotel
            //Habitacion pedidos = new DAOLogin().verificaruser(habit);
            //if (pedidos == null)
            //{
            new DAOHabitacion().insertHabitacion(habit);
                L_Error_habitacion.Text = " Habitacion añadida con exito";
           /* }
            else
            {
                L_Error_habitacion.Text = "Algo paso";
            }*/

        /*}
        catch (Exception ex)
        {
            L_Error_habitacion.Text = "Error";
       // }*/
    }
}