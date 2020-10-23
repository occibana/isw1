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
        /*Hotel consulta = new Hotel();
        consulta.Idhotel = 0;
        new DAOhotel().hotelesregistrados(consulta);*/
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Hotel hotelinfo = new Hotel();
        hotelinfo.Idhotel = int.Parse(e.CommandArgument.ToString());
        Session["visitarhotel"] = hotelinfo;
        Response.Redirect("PanelHotel.aspx");
    }
}
