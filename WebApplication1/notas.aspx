<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="notas.aspx.cs" Inherits="WebApplication1.notas" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Notas del Alumno</title>
    <style>
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
            <h2>Resultados de las Evaluaciones</h2>
            <table>
                <tr>
                    <th>Evaluación</th>
                    <th>Nota</th>
                    <th>Porcentaje</th>
                    <th>Puntos Ganados</th>
                </tr>
                <tr>
                    <td>E1</td>
                    <td><asp:Label ID="lblE1" runat="server"></asp:Label></td>
                    <td>20%</td>
                    <td><asp:Label ID="lblPuntosE1" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>E2</td>
                    <td><asp:Label ID="lblE2" runat="server"></asp:Label></td>
                    <td>20%</td>
                    <td><asp:Label ID="lblPuntosE2" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>E3</td>
                    <td><asp:Label ID="lblE3" runat="server"></asp:Label></td>
                    <td>20%</td>
                    <td><asp:Label ID="lblPuntosE3" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>E4</td>
                    <td><asp:Label ID="lblE4" runat="server"></asp:Label></td>
                    <td>20%</td>
                    <td><asp:Label ID="lblPuntosE4" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>E5</td>
                    <td><asp:Label ID="lblE5" runat="server"></asp:Label></td>
                    <td>20%</td>
                    <td><asp:Label ID="lblPuntosE5" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="3">Nota Final</td>
                    <td><asp:Label ID="lblNotaFinal" runat="server"></asp:Label></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
