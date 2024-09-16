using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class notas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Obtener los valores desde la URL
                string alumno = Request.QueryString["alumno"];
                decimal e1 = Convert.ToDecimal(Request.QueryString["e1"]);
                decimal e2 = Convert.ToDecimal(Request.QueryString["e2"]);
                decimal e3 = Convert.ToDecimal(Request.QueryString["e3"]);
                decimal e4 = Convert.ToDecimal(Request.QueryString["e4"]);
                decimal e5 = Convert.ToDecimal(Request.QueryString["e5"]);

                // Mostrar las notas
                lblE1.Text = e1.ToString();
                lblE2.Text = e2.ToString();
                lblE3.Text = e3.ToString();
                lblE4.Text = e4.ToString();
                lblE5.Text = e5.ToString();

                // Calcular los puntos ganados para cada evaluación (20% de cada nota)
                decimal puntosE1 = e1 * 0.20M;
                decimal puntosE2 = e2 * 0.20M;
                decimal puntosE3 = e3 * 0.20M;
                decimal puntosE4 = e4 * 0.20M;
                decimal puntosE5 = e5 * 0.20M;

                // Mostrar los puntos ganados
                lblPuntosE1.Text = puntosE1.ToString("F2");
                lblPuntosE2.Text = puntosE2.ToString("F2");
                lblPuntosE3.Text = puntosE3.ToString("F2");
                lblPuntosE4.Text = puntosE4.ToString("F2");
                lblPuntosE5.Text = puntosE5.ToString("F2");

                // Calcular la nota final
                decimal notaFinal = puntosE1 + puntosE2 + puntosE3 + puntosE4 + puntosE5;
                lblNotaFinal.Text = notaFinal.ToString("F2");
            }
        }
    }
}