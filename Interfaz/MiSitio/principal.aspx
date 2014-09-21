<%@ Page Language="C#" AutoEventWireup="true" CodeFile="principal.aspx.cs" Inherits="principal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style4
        {
            width: 39%;
        }
        .style5
        {
            width: 69px;
        }
        .style7
        {
            width: 52%;
        }
        .style8
        {
            text-align: center;
        }
        .style10
        {
            width: 20%;
        }
        .style11
        {
            width: 29%;
        }
        .style14
        {
            width: 104px;
        }
        .style15
        {
            width: 38%;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style8">
    
        Bienvenido
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx">Cerrar sesion</asp:HyperLink>
        <br />
        <br />
        <br />
        CLASIFICACION CLIENTE</div>
    <table style="width:100%;">
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td colspan="2" style="text-align: center">
                Indicadores</td>
            <td class="style11">
                <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                    <asp:ListItem>Dicom</asp:ListItem>
                </asp:CheckBoxList>
            </td>
        </tr>
        <tr>
            <td class="style10">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem>Casado</asp:ListItem>
                    <asp:ListItem>Soltero</asp:ListItem>
                    <asp:ListItem>Separado</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style14">
                Edad<br />
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Seleccione...</asp:ListItem>
                    <asp:ListItem Value="1">Entre 18 y 28 </asp:ListItem>
                    <asp:ListItem Value="2">Entre 29 y 35</asp:ListItem>
                    <asp:ListItem Value="3">Entre 36 y 55</asp:ListItem>
                    <asp:ListItem Value="4">Sobre 55</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style15">
                Tipo de Contrato<br />
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>Seleccione...</asp:ListItem>
                    <asp:ListItem>Fija</asp:ListItem>
                    <asp:ListItem>Variable</asp:ListItem>
                    <asp:ListItem>Honorarios</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style11">
                <asp:ListBox ID="ListBox1" runat="server">
                    <asp:ListItem Value="0">Menor a 3 años</asp:ListItem>
                    <asp:ListItem Value="1">Entre 4 y 8 años</asp:ListItem>
                    <asp:ListItem Value="2">Sobre 8</asp:ListItem>
                </asp:ListBox>
            </td>
        </tr>
        <tr>
            <td class="style10">
                <asp:CheckBoxList ID="CheckBoxList2" runat="server">
                    <asp:ListItem>Hijos</asp:ListItem>
                </asp:CheckBoxList>
            </td>
            <td class="style14">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td colspan="3" style="text-align: center">
                CLASIFICACION CLIENTE</td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Calcular" />
            </td>
            <td class="style7">
                Puntaje :
                <asp:Label ID="Label2" runat="server" Text="Esperando Puntaje"></asp:Label>
            </td>
            <td class="style4">
                Clasificacion:
                <asp:Label ID="Label3" runat="server" Text="Esperando Clasificacion"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style4">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    PostBackUrl="~/creaSolicitud.aspx" Text="Siguiente Paso" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
