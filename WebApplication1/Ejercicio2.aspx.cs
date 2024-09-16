using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Ejercicio2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            // Obtener el salario bruto ingresado
            decimal salarioBruto = 0;
            if (decimal.TryParse(txtSalario.Text, out salarioBruto))
            {
                // Inicializar variables para los descuentos
                decimal isss = 0;
                decimal renta = 0;
                decimal afp = 0;
                decimal seguro = 0;
                decimal salarioNeto = salarioBruto;

                // Calcular ISSS
                if (salarioBruto > 657.25M)
                {
                    isss = salarioBruto * 0.03M;
                }

                // Calcular Renta
                if (salarioBruto > 857.15M)
                {
                    renta = salarioBruto * 0.10M;
                }

                // Calcular AFP
                if (salarioBruto > 450.00M)
                {
                    afp = salarioBruto * 0.05M;
                }

                // Calcular Seguro
                if (salarioBruto < 1000.00M)
                {
                    seguro = salarioBruto * 0.04M;
                }
                else
                {
                    seguro = salarioBruto * 0.06M;
                }

                // Calcular salario neto restando todos los descuentos
                salarioNeto = salarioBruto - (isss + renta + afp + seguro);

                // Mostrar los resultados en las etiquetas
                lblIsss.Text = "ISSS: $" + isss.ToString("F2");
                lblRenta.Text = "Renta: $" + renta.ToString("F2");
                lblAfp.Text = "AFP: $" + afp.ToString("F2");
                lblSeguro.Text = "Seguro: $" + seguro.ToString("F2");
                lblSalarioNeto.Text = "Salario Neto: $" + salarioNeto.ToString("F2");
            }
            else
            {
                lblSalarioNeto.Text = "Por favor, ingrese un salario válido.";
            }
        }
    }
}