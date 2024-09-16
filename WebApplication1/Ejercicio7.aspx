<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio7.aspx.cs" Inherits="WebApplication1.Ejercicio7" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Multiplicación del 1 al 100</title>
    <style>
        table {
            width: 50%;
            margin: auto;
        }
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
            text-align: center;
            padding: 10px;
        }
        button {
            width: 40px;
            height: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Seleccione un número para ver su tabla de multiplicar</h2>
            <table>
                <asp:Repeater ID="repeaterNumeros" runat="server">
                    <ItemTemplate>
                        <td>
                            <asp:Button ID="btnNumero" runat="server" Text='<%# Container.DataItem %>' OnClick="MostrarTabla_Click" CommandArgument='<%# Container.DataItem %>' />
                        </td>
                        <%# ((int)Container.DataItem % 10 == 0) ? "</tr><tr>" : "" %> <!-- tr es para abrir y cerrar la fila cada 10 elementos -->
                    </ItemTemplate>
                </asp:Repeater>
            </table>
            <br />
            <asp:Label ID="lblTabla" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>