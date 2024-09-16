using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Ejercicio4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            // Variable para el valor de la compra
            decimal valorCompra = 0;
            decimal descuento = 0;
            decimal totalPagar = 0;

            // Validar que el valor ingresado sea correcto
            if (decimal.TryParse(txtCompra.Text, out valorCompra))
            {
                // Determinar el porcentaje de descuento según el rango de compra
                if (valorCompra >= 0.01M && valorCompra <= 1000.00M)
                {
                    descuento = 0.10M; // 10% de descuento
                }
                else if (valorCompra >= 1000.01M && valorCompra <= 3000.00M)
                {
                    descuento = 0.20M; // 20% de descuento
                }
                else if (valorCompra >= 3000.01M)
                {
                    descuento = 0.30M; // 30% de descuento
                }

                // Calcular el monto del descuento
                decimal montoDescuento = valorCompra * descuento;

                // Calcular el total a pagar
                totalPagar = valorCompra - montoDescuento;

                // Mostrar los resultados en las etiquetas
                lblValorDescontar.Text = "Valor a Descontar: $" + montoDescuento.ToString("F2");
                lblTotalPagar.Text = "Total a Pagar: $" + totalPagar.ToString("F2");
            }
            else
            {
                lblValorDescontar.Text = "Por favor, ingrese un valor de compra válido.";
            }
        }
    }
}