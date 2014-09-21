<%@ Page Language="C#" AutoEventWireup="true" CodeFile="creaSolicitud.aspx.cs" Inherits="creaSolicitud" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
        }
        #TextArea1
        {
            height: 77px;
            width: 383px;
        }
        #txtObservacion
        {
            width: 398px;
            height: 112px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        FECHA DE SOLICITUD DE CREDITO<br />
        <br />
        <table style="width:100%;">
            <tr>
                <td class="style2">
                    Cliente RUT:</td>
                <td class="style2">
                    Cliente Nombre:</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:TextBox ID="txtRut" runat="server"></asp:TextBox>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Puntaje:
                </td>
                <td class="style2">
                    Tipo</td>
                <td>
                    Tipo Credito</td>
                <td>
                    Monto Solicitante</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lbPuntaje" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style2">
                    <asp:Label ID="lbTipo" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="rbTipo" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem>Consumo</asp:ListItem>
                        <asp:ListItem>Hipotecario</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:TextBox ID="txtMonto" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    Seleccione Ejecutivo</td>
                <td colspan="2">
                    Observacion</td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    <asp:DropDownList ID="ddlEjecutivo" runat="server">
                        <asp:ListItem>Seleccione.....</asp:ListItem>
                        <asp:ListItem>Pepito</asp:ListItem>
                        <asp:ListItem>Pablito</asp:ListItem>
                        <asp:ListItem>Juanito</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td colspan="2">
                    <textarea id="TextArea1" cols="20" name="S1"></textarea></td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    &nbsp;</td>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="Guardar" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
