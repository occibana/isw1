using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vew_ActualizarDatos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["usuario"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            try
            {
                L_Actusuario.Text = "Bienvenido usuario: "+((Registro)Session["usuario"]).Nombre;
                L_Actnombre.Text = ((Registro)Session["usuario"]).Nombre;
                L_Actapellido.Text = ((Registro)Session["usuario"]).Apellido;
                L_Actcorreo.Text = ((Registro)Session["usuario"]).Correo;
                L_Acttelefono.Text = ((Registro)Session["usuario"]).Telefono;
                L_Actusuario0.Text = ((Registro)Session["usuario"]).Usuario;
            }
            catch
            {
                Session.Remove("usuario");
                Response.Redirect("Login.aspx");

            }
        }
    }

    protected void B_Volver_Click(object sender, EventArgs e)
    {
        Response.Redirect("Perfil.aspx");
    }

    protected void B_Actualizar_Click(object sender, EventArgs e)
    {
        Registro nuevodato = new Registro();
        nuevodato.Usuario = TB_Actusuario.Text.ToUpper();
        nuevodato.Correo = TB_Actcorreo.Text.ToUpper();
        nuevodato = new DAOLogin().verificaruser(nuevodato);
        if ((nuevodato != null) && (TB_Actusuario.Text != String.Empty))//si tb tiene algo
        {
            LB_Actfallo.Text = "Utiliza otro usuario, este ya existe o esta registrado";
        }else if ((nuevodato != null) && (TB_Actcorreo.Text != String.Empty))//si tb tiene algo
        {
            LB_Actfallo.Text = "Utiliza otro correo, este ya existe o esta registrado";
        }
        else
        { 
            Registro nuevodat = new Registro();
            nuevodat.Id = ((Registro)Session["usuario"]).Id;
            nuevodat.Usuario = TB_Actusuario.Text;
            nuevodat.Nombre = TB_Actnombre.Text;
            nuevodat.Apellido = TB_Actapellido.Text;
            nuevodat.Telefono = TB_Acttelefono.Text;
            nuevodat.Correo = TB_Actcorreo.Text;

            if (TB_Actusuario.Text == String.Empty)
            {
                nuevodat.Usuario = ((Registro)Session["usuario"]).Usuario;
            }
            if (TB_Actnombre.Text == String.Empty)
            {
                nuevodat.Nombre = ((Registro)Session["usuario"]).Nombre;
            }
            if (TB_Actapellido.Text == String.Empty)
            {
                nuevodat.Apellido = ((Registro)Session["usuario"]).Apellido;
            }
            if (TB_Acttelefono.Text == String.Empty)
            {
                nuevodat.Telefono = ((Registro)Session["usuario"]).Telefono;
            }
            if (TB_Actcorreo.Text == String.Empty)
            {
                nuevodat.Correo = ((Registro)Session["usuario"]).Correo;
            }
            new DAOLogin().actualizarperfil(nuevodat);
            LB_Actfallo.Text = "Datos actualizados correctamente";
            this.Controls.OfType<TextBox>().ToList().ForEach(o => o.Text = "");
            B_Volver.Text = "VOLVER";
        }
    }
}