using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vew_Actualizarcontrasena : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        try
        {
            Registro login = new Registro();

            login.Usuario = ((Registro)Session["usuario"]).Usuario.ToString();
            login.Contrasena = ((Registro)Session["usuario"]).Contrasena.ToString();

            login = new DAOLogin().verificar(login);
            
            if (login == null)
            {
                L_Error_noregistro.Text = "Verifica tus datos\n usuario o contraseña incorrecto";
            }

        }
        catch
        {
            Session.Remove("usuario");
            Response.Redirect("Login.aspx");
        }
    }

    protected void B_Volver_Click(object sender, EventArgs e)
    {
        Response.Redirect("Perfil.aspx");
    }

    protected void B_Enviar_Click(object sender, EventArgs e)
    {
        Registro login = new Registro();

        login.Usuario = ((Registro)Session["usuario"]).Usuario.ToString();
        login.Contrasena = TB_Contrasenaactual.Text;
        login.Correo = ((Registro)Session["usuario"]).Correo.ToString();

        login = new DAOLogin().verificar(login);

        if (login == null)
        {
            L_Error_noregistro.Text = "Verifica tus datos.\n La contraseña no coinside con tu usuario";
        }
        else
        {           
            login.Contrasena = TB_Nuevacontrasena.Text;
            new DAOLogin().actualizarcontrasena(login);
            new Mail().mailactualizarcontrasena(login);
            L_Error_noregistro.Text = "Contraseña actualizada";
        }
    }
}