<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio3.aspx.cs" Inherits="WebApplication1.Ejercicio3" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calcular Descuento</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Calculadora de Descuento por Cantidad de Artículos</h2>

            <label for="txtCantidadArticulos">Cantidad de Artículos:</label>
            <asp:TextBox ID="txtCantidadArticulos" runat="server"></asp:TextBox><br /><br />

            <label for="txtTotalCompra">Total de la Compra (en $):</label>
            <asp:TextBox ID="txtTotalCompra" runat="server"></asp:TextBox><br /><br />

            <asp:Button ID="btnCalcular" Text="Calcular Descuento" runat="server" OnClick="btnCalcular_Click" /><br /><br />

            <asp:Label ID="lblDescuento" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="lblTotalPagar" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
