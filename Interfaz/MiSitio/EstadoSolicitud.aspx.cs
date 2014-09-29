using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;

public partial class EstadoSolicitud : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        solicitud s = new solicitud();
        int id = Convert.ToInt32(txtId.Text);
        GridView1.DataSource = s.getID(id);
        GridView1.DataBind();

    }
}