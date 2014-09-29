<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EstadoSolicitud.aspx.cs" Inherits="EstadoSolicitud" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 201px;
        }
        .style2
        {
            width: 185px;
        }
        #TextArea1
        {
            height: 56px;
            width: 282px;
        }
        .style6
        {
            width: 154px;
        }
        .style8
        {
            width: 282px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Revision Solicitud<br />
        <br />
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    Codigo Solicitud</td>
                <td class="style2">
                    <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Buscar" onclick="Button1_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    <p>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </p>
    <br />
    <br />
    <br />
    <table style="width:100%;">
        <tr>
            <td class="style6">
                Resuelve</td>
            <td class="style8">
                Comentario</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>Aprueba</asp:ListItem>
                    <asp:ListItem>Rechaza</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style8">
                <textarea id="TextArea1" name="S1"></textarea></td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Enviar" onclick="Button2_Click" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
