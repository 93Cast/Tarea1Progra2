<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="WebApplication1.Ejercicio1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calcular Descuento</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Calculadora de Descuento</h2>

            <label for="txtMonto">Monto de Compra:</label>
            <asp:TextBox ID="txtMonto" runat="server"></asp:TextBox><br /><br />

            <asp:Button ID="btnCalcular" Text="Calcular Descuento" runat="server" OnClick="btnCalcular_Click" /><br /><br />

            <asp:Label ID="lblResultado" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="lblPorcentaje" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="lblDescuento" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="lblTotalPagar" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>