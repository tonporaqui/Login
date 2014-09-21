using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["usuario"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        usuario miuser = new usuario();
        miuser._Nombre = TextBox1.Text;
        miuser._Clave = TextBox2.Text;
        if (miuser.verUsuario())
        {
            Session["usuario"] = miuser._Nombre;
            Response.Redirect("principal.aspx");
        }
        else
        {
            Session["usuario"] = "No Existe Usuario";
            Response.Redirect("index.aspx");
        }
    }
}