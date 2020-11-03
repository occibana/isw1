using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vew_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Filtro consulta = new Filtro();
        consulta.nombrehotel = null;
        new DAOhotel().hotelesregistrados(consulta);
    }

    protected void DL_Listaprincipalhoteles_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Hotel hotelinfo = new Hotel();
        hotelinfo.Idhotel = int.Parse(e.CommandArgument.ToString());
        Session["visitarhotel"] = hotelinfo;
        Response.Redirect("PanelHotel.aspx");
    }

    protected void IB_Busquedageneral_Click(object sender, ImageClickEventArgs e)
    {
        Filtro busqueda = new Filtro();
        if (TB_Busquedageneral.Text == String.Empty)
        {
            busqueda.nombrehotel = null;
        }
        else
        {
            busqueda.nombrehotel = (TB_Busquedageneral.Text).ToUpper();
        }
        Session["hotelseleccionado"] = busqueda;
        DL_Listaprincipalhoteles.DataBind();
    }

    protected void B_Filtrar_Click(object sender, EventArgs e)
    {
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
        busqueda.zona = DDL_Zona.Text;
        busqueda.municipio = DDL_Municipio.Text;
        if (busqueda.zona.Equals("--Seleccione--"))
        {
            busqueda.zona = null;
        }
        if (busqueda.municipio.Equals("--Seleccione--"))
        {
            busqueda.municipio = null;
        }
        Session["hotelseleccionado"] = busqueda;
        DL_Listaprincipalhoteles.DataBind();
        
    }
}
