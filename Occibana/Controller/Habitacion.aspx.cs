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
        L_Prueba.Text = Session["tabla"].ToString();
        L_Prueba.Visible = false;
    }

    protected void B_Volver_Click(object sender, EventArgs e)
    {
        Response.Redirect("Mishoteles.aspx");
    }

    protected void B_AgregarHabitacion_Click(object sender, EventArgs e)
    {

        Habitacion habit = new Habitacion();

        habit.Numpersonas = int.Parse(TB_NumPersonas.Text);
        habit.Numbanio = int.Parse(TB_NumBanio.Text);
        habit.Idhotel = int.Parse(L_Prueba.Text);
        habit.Tipo = TB_Tipo.Text;
           
        new DAOHabitacion().insertHabitacion(habit);
        new DAOhotel().actualizarhabiatacion(habit);
        L_Error_habitacion.Text = " Habitacion añadida con exito";

       TB_NumPersonas.Text = "";
        TB_NumBanio.Text = "";
        TB_Tipo.Text = "";
        

    }
}