using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vew_Mishoteles : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            L_Usuario.Text = ((Registro)Session["usuario"]).Nombre;
        }
        catch
        {
            Session.Remove("usuario");
            Response.Redirect("Login.aspx");
        }
    }
}