<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio6.aspx.cs" Inherits="WebApplication1.Ejercicio6" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tablas de Multiplicar</title>
    <style>
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
            text-align: center;
            padding: 10px;
        }
        img {
            width: 50px;
            height: 50px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Seleccione un número para ver su tabla de multiplicar (<a href="https://www.freepik.es/vector-gratis/numeros-vinetas-circulares-al-doce_12572952.htm#fromView=search&page=1&position=5&uuid=1acc0c21-bb22-4ccd-aecc-de656eabf4a0">Imagen de starline en Freepik</a>)</h2>
            <table>
                <tr>
                    <td><asp:ImageButton ID="imgBtn1" runat="server" ImageUrl="~/Images/1.png" OnClick="MostrarTabla_Click" CommandArgument="1" /></td>
                    <td><asp:ImageButton ID="imgBtn2" runat="server" ImageUrl="~/Images/2.png" OnClick="MostrarTabla_Click" CommandArgument="2" /></td>
                    <td><asp:ImageButton ID="imgBtn3" runat="server" ImageUrl="~/Images/3.png" OnClick="MostrarTabla_Click" CommandArgument="3" /></td>
                </tr>
                <tr>
                    <td><asp:ImageButton ID="imgBtn4" runat="server" ImageUrl="~/Images/4.png" OnClick="MostrarTabla_Click" CommandArgument="4" /></td>
                    <td><asp:ImageButton ID="imgBtn5" runat="server" ImageUrl="~/Images/5.png" OnClick="MostrarTabla_Click" CommandArgument="5" /></td>
                    <td><asp:ImageButton ID="imgBtn6" runat="server" ImageUrl="~/Images/6.png" OnClick="MostrarTabla_Click" CommandArgument="6" /></td>
                </tr>
                <tr>
                    <td><asp:ImageButton ID="imgBtn7" runat="server" ImageUrl="~/Images/7.png" OnClick="MostrarTabla_Click" CommandArgument="7" /></td>
                    <td><asp:ImageButton ID="imgBtn8" runat="server" ImageUrl="~/Images/8.png" OnClick="MostrarTabla_Click" CommandArgument="8" /></td>
                    <td><asp:ImageButton ID="imgBtn9" runat="server" ImageUrl="~/Images/9.png" OnClick="MostrarTabla_Click" CommandArgument="9" /></td>
                </tr>
            </table>
            <br />
            <asp:Label ID="lblTabla" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
