<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio4.aspx.cs" Inherits="WebApplication1.Ejercicio4" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calcular Descuento por Compra</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Calculadora de Descuento por Compra</h2>

            <label for="txtCompra">Valor de la Compra:</label>
            <asp:TextBox ID="txtCompra" runat="server"></asp:TextBox><br /><br />

            <asp:Button ID="btnCalcular" Text="Calcular Descuento" runat="server" OnClick="btnCalcular_Click" /><br /><br />

            <asp:Label ID="lblValorDescontar" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="lblTotalPagar" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>