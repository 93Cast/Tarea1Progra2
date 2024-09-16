using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Ejercicio1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            // Obtener el monto de compra ingresado por el usuario
            decimal monto = 0;
            if (decimal.TryParse(txtMonto.Text, out monto))
            {
                // Inicializar variables
                decimal porcentajeDescuento = 0;
                decimal montoDescuento = 0;
                decimal totalPagar = 0;

                // Aplicar la lógica de descuentos
                if (monto >= 1 && monto <= 100)
                {
                    porcentajeDescuento = 10;
                }
                else if (monto > 100 && monto <= 400)
                {
                    porcentajeDescuento = 15;
                }
                else if (monto > 400 && monto <= 600)
                {
                    porcentajeDescuento = 20;
                }
                else if (monto > 600)
                {
                    porcentajeDescuento = 25;
                }

                // Calcular el monto de descuento
                montoDescuento = (monto * porcentajeDescuento) / 100;

                // Calcular el total a pagar
                totalPagar = monto - montoDescuento;

                // Mostrar los resultados en los labels
                lblResultado.Text = "Monto Comprado: $" + monto.ToString("F2");
                lblPorcentaje.Text = "Porcentaje Ejercicio1: " + porcentajeDescuento.ToString() + "%";
                lblDescuento.Text = "Monto de Ejercicio1: $" + montoDescuento.ToString("F2");
                lblTotalPagar.Text = "Total a Pagar: $" + totalPagar.ToString("F2");
            }
            else
            {
                lblResultado.Text = "Por favor, ingrese un monto válido.";
            }
        }
    }
}