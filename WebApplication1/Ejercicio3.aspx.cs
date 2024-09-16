using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Ejercicio3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            // Variables para cantidad de artículos y total de la compra
            int cantidadArticulos = 0;
            decimal totalCompra = 0;
            decimal descuento = 0;
            decimal totalPagar = 0;

            // Validar entrada
            if (int.TryParse(txtCantidadArticulos.Text, out cantidadArticulos) && decimal.TryParse(txtTotalCompra.Text, out totalCompra))
            {
                // Determinar el porcentaje de descuento según la cantidad de artículos
                if (cantidadArticulos >= 1 && cantidadArticulos <= 5)
                {
                    descuento = 0.10M; // 10% de descuento
                }
                else if (cantidadArticulos >= 6 && cantidadArticulos <= 10)
                {
                    descuento = 0.20M; // 20% de descuento
                }
                else if (cantidadArticulos >= 11 && cantidadArticulos <= 15)
                {
                    descuento = 0.30M; // 30% de descuento
                }
                else if (cantidadArticulos >= 16 && cantidadArticulos <= 20)
                {
                    descuento = 0.40M; // 40% de descuento
                }
                else if (cantidadArticulos >= 21)
                {
                    descuento = 0.50M; // 50% de descuento
                }

                // Calcular el monto del descuento
                decimal montoDescuento = totalCompra * descuento;

                // Calcular el total a pagar
                totalPagar = totalCompra - montoDescuento;

                // Mostrar los resultados en las etiquetas
                lblDescuento.Text = "Descuento Aplicado: $" + montoDescuento.ToString("F2");
                lblTotalPagar.Text = "Total a Pagar: $" + totalPagar.ToString("F2");
            }
            else
            {
                lblDescuento.Text = "Por favor, ingrese valores válidos.";
            }
        }
    }
}