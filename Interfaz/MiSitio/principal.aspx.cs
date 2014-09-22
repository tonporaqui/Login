using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class principal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["usuario"].ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int dicom = 0;
        string estado;
        int punto_e = 0;
        int edad = 0;
        int renta = 0;
        int antiwe = 0;
        int res = 0;
        String mensaje = null;
        if (CheckBoxList1.Text == "Dicom")
        {
            dicom = 10;
            
        }
        else
        {
            dicom = 0;
            
        }
        if (RadioButtonList1.Text != "")
        {
            estado = RadioButtonList1.Text;
            if ((estado == "Casado") && (CheckBoxList2.Text == "Hijos"))
            {
                punto_e = 6;
            }
            else
            {
                punto_e = 8;
            }
            if (estado == "Soltero")
            {
                punto_e = 5;
            }
        }
        if (DropDownList1.Text != "") {
            estado = DropDownList1.Text;
            if (estado == "1")
            {
                edad = 6;
            }
            if (estado == "2")
            {
                edad = 8;
            }
            if (estado == "3")
            {
                edad = 10;
            }
            if (estado == "4")
            {
                edad = 2;
            }
        }
        if (DropDownList2.Text != "")
        {
            estado = DropDownList2.Text;
            if (estado == "Fija")
            {
                renta = 9;
            }
            if (estado == "Variable")
            {
                renta = 6;
            }
            if (estado == "Honorario")
            {
                renta = 4;
            }
        }
        if (ListBox1.Text != "")
        {
            estado = ListBox1.Text;
            if (estado == "0")
            {
                antiwe = 3;
            }
            if (estado == "1")
            {
                antiwe = 5;
            }
            if (estado == "2")
            {
                antiwe = 8;
            }
        }
        res = dicom + punto_e + edad + renta + antiwe;
        if (res > 38)
        {
            mensaje = "Cliente Sujeto a credito";
        }
        if ((res > 32) && (res < 38))
        {
            mensaje = "Cliente sujeto a estudio";
        }
        if (res < 32)
        {
            mensaje = "Cliente no sujeto a credito";
        }

        Label2.Text = Convert.ToString(res);
        Label3.Text = mensaje;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("index.aspx");
    }
}