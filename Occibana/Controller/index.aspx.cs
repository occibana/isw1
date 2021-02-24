using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Utilitarios;
using Logica;

public partial class Vew_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*
        Filtro consulta = new Filtro();
        consulta.nombrehotel = null;
        new DAOhotel().hotelesregistrados(consulta);
        */
    }

    protected void DL_Listaprincipalhoteles_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Hotel hotelinfo = new Hotel();
        hotelinfo.Idhotel = int.Parse(e.CommandArgument.ToString());
        Session["visitarhotel"] = hotelinfo;
        Session.Remove("calificarhotel");
        Response.Redirect("PanelHotel.aspx");
    }

    protected void IB_Busquedageneral_Click(object sender, ImageClickEventArgs e)
    {
        UFiltro filtro = new UFiltro();
        filtro.nombrehotel = TB_Busquedageneral.Text;
        string busquedaResult = new LFiltro().filtro_general(filtro);

        Session["hotelseleccionado"] = busquedaResult;
        DL_Listaprincipalhoteles.DataBind();
    }

    protected void B_Filtrar_Click(object sender, EventArgs e)
    {
        /*
        Filtro busqueda = new Filtro();
        if (TB_PrecioMin.Text == String.Empty)
        {
            busqueda.preciomin = null;
        }
        if (TB_PrecioMax.Text == String.Empty)
        {
            busqueda.preciomax = null;
        }
        if(TB_PrecioMin.Text != String.Empty)
        {
            busqueda.preciomin = int.Parse(TB_PrecioMin.Text);
        }
        if (TB_PrecioMax.Text != String.Empty)
        {
            busqueda.preciomax = int.Parse(TB_PrecioMax.Text);
        }
        if (TB_Maxpersonas.Text == String.Empty)
        {
            busqueda.numpersonas = null;
        }
        if(TB_Maxpersonas.Text != String.Empty)
        {
            busqueda.numpersonas = int.Parse(TB_Maxpersonas.Text);
        }
        if (TB_DateAntesDe.Text != String.Empty)
        {

            if (DateTime.Parse(TB_DateAntesDe.Text) < DateTime.Parse(TB_DateDespuesDe.Text))
            {
                L_MensajeFalloFechas.Text = "La fecha Antes de, debe ser mayor de   " + DateTime.Parse(TB_DateDespuesDe.Text).ToString("dd-MM-yyyy");
            }
            else
            {
                L_MensajeFalloFechas.Text = " ";
                busqueda.fecha_antesde = DateTime.Parse(TB_DateAntesDe.Text);
            }

        }
        if (TB_DateDespuesDe.Text != String.Empty)
        {
            if (DateTime.Parse(TB_DateDespuesDe.Text) < DateTime.Now)
            {
                L_MensajeFalloFechas.Text = "La fecha especificada debe ser después de     " + DateTime.Now.ToString("dd-MM-yyyy");
            }
            else
            {
                L_MensajeFalloFechas.Text = " ";
                busqueda.fecha_despuesde = DateTime.Parse(TB_DateDespuesDe.Text);
            }
        }
        
        busqueda.zona = DDL_Zona.Text;
        busqueda.municipio = DDL_Municipio.Text;
        busqueda.calificacion = DDL_Calificacion.Text;
        busqueda.tipo = DDL_Tipo.Text;
        if (busqueda.zona.Equals("--Seleccione--"))
        {
            busqueda.zona = null;
        }
        if (busqueda.municipio.Equals("--Seleccione--"))
        {
            busqueda.municipio = null;
        }
        if (busqueda.calificacion.Equals("--Seleccionar--"))
        {
            busqueda.calificacion = null;
        }
        if (busqueda.tipo.Equals("--Seleccionar--"))
        {
            busqueda.tipo = null;
        }
        Session["hotelseleccionado"] = busqueda;
        DL_Listaprincipalhoteles.DataBind();
        */
    }

    protected void B_LimpiarFechas_Click(object sender, EventArgs e)
    {
        //TB_DateAntesDe.Text = "";
        //TB_DateDespuesDe.Text = "";
        //DDL_Zona.Text = "--Seleccionar--";
        //DDL_Municipio.Text = "--Seleccionar--";

        Response.Redirect("index.aspx");


    }

}
