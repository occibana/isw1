using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Vew_Registro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        try
        {
            Registro registro = new Registro();

            registro.Nombre = TB_nombre.Text;
            registro.Apellido = TB_apellido.Text;
            registro.Correo = TB_correo.Text;
            registro.Telefono = TB_telefono.Text;
            registro.Usuario = TB_usuarioregistro.Text;
            registro.Contrasena = TB_contrasenaregistro.Text;
            

            Registro pedidos = new DAOLogin().verificaruser(registro);
            if (pedidos == null)
            {
                new DAOLogin().insertRegistro(registro);
                new Mail().enviarmail(registro);
                L_fallo.Text = " Usuario registrado con exito";
            }
            else
            {
                L_fallo.Text = "Este usuario o correo ya existe o esta regiatrado";
            }
            
                  
        }
        catch (Exception ex)
        {
            return;
        }
        
    }



}

