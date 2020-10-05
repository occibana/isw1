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

    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Hotel hotelinfo = new Hotel();
        hotelinfo.Idhotel = int.Parse(e.CommandArgument.ToString());
        /*DataList1.SelectedIndex = e.Item.ItemIndex;
        hotelinfo.Nombre = ((Label)DataList1.SelectedItem.FindControl("NombreLabel")).Text;
        hotelinfo.Precionoche = int.Parse(((Label)DataList1.SelectedItem.FindControl("PrecionocheLabel")).Text);
        hotelinfo.Municipio = ((Label)DataList1.SelectedItem.FindControl("MunicipioLabel")).Text;    
        */
        Session["visitarhotel"] = hotelinfo;
        Response.Redirect("PanelHotel.aspx");
    }
}