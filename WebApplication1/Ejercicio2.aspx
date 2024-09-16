<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio2.aspx.cs" Inherits="WebApplication1.Ejercicio2" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculadora de Salario Neto</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Calculadora de Salario Neto</h2>

            <label for="txtSalario">Salario Bruto:</label>
            <asp:TextBox ID="txtSalario" runat="server"></asp:TextBox><br /><br />

            <asp:Button ID="btnCalcular" Text="Calcular Salario Neto" runat="server" OnClick="btnCalcular_Click" /><br /><br />

            <asp:Label ID="lblIsss" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="lblRenta" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="lblAfp" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="lblSeguro" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="lblSalarioNeto" runat="server" Text=""></asp:Label><br />
        </div>
    </form>
</body>
</html>
