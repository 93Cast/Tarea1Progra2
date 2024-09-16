<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="leernotas.aspx.cs" Inherits="WebApplication1.leernotas" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Leer Notas</title>
    <style>
        /* Estilo para alinear los datos del formulario */
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }
        th, td {
            padding: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Ingreso de Notas</h2>
            <table>
                <tr>
                    <td>Alumno :</td>
                    <td><asp:TextBox ID="txtAlumno" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>E1 :</td>
                    <td><asp:TextBox ID="txtE1" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>E2 :</td>
                    <td><asp:TextBox ID="txtE2" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>E3 :</td>
                    <td><asp:TextBox ID="txtE3" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>E4 :</td>
                    <td><asp:TextBox ID="txtE4" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>E5 :</td>
                    <td><asp:TextBox ID="txtE5" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnCalcular" Text="Calcular" runat="server" OnClick="btnCalcular_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
