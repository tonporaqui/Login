using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;

public partial class creaSolicitud : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.PreviousPage != null)
        {
            Label puntaje = (Label)Page.PreviousPage.FindControl("Label2");
            Label clasificacion = (Label)Page.PreviousPage.FindControl("Label3");
            if ((puntaje != null) && (clasificacion != null))
            {
                lbPuntaje.Text = puntaje.Text;
                lbTipo.Text = clasificacion.Text;
            }
            else
            {
                lbPuntaje.Text = puntaje.Text;
                lbTipo.Text = clasificacion.Text;
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        solicitud s = new solicitud();
        s._Cliente = this.txtNombre.Text;
        s._Rut = this.txtRut.Text;
        s._Puntaje = Convert.ToInt32(lbPuntaje.Text);
        s._Clasificacion = this.lbTipo.Text;
        s._Monto = Convert.ToInt64(this.txtMonto.Text);
        s._Tipo_solicitud = this.rbTipo.Text;
        s._Ejecutivo = this.ddlEjecutivo.Text;
        s._Observacion = "oli";
        s.insertarSolicitud();
        Response.Redirect("principal.aspx");
    }

}