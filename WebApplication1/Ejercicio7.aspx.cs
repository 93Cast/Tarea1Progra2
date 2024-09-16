using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Ejercicio7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Generar una lista de números del 1 al 100 para mostrar en los botones
                var numeros = new int[100];
                for (int i = 1; i <= 100; i++)
                {
                    numeros[i - 1] = i;
                }

                // Enlazar los números al Repeater
                repeaterNumeros.DataSource = numeros;
                repeaterNumeros.DataBind();
            }
        }

        protected void MostrarTabla_Click(object sender, EventArgs e)
        {
            // Obtener el número del CommandArgument del botón clicado
            string numeroStr = ((Button)sender).CommandArgument;
            int numero = int.Parse(numeroStr);

            // Crear la tabla de multiplicación
            StringBuilder tabla = new StringBuilder();
            tabla.AppendFormat("<h3>Tabla de multiplicar del {0}</h3>", numero);
            tabla.Append("<table>");

            for (int i = 1; i <= 10; i++)
            {
                tabla.AppendFormat("<tr><td>{0} x {1}</td><td>{2}</td></tr>", numero, i, numero * i);
            }

            tabla.Append("</table>");

            // Mostrar la tabla de multiplicar en la etiqueta lblTabla
            lblTabla.Text = tabla.ToString();
        }
    }
}