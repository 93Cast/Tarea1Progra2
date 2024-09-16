using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class leernotas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            // Redirigir a la página de resultados y pasar los valores como parámetros en la URL
            string url = "notas.aspx?alumno=" + txtAlumno.Text +
                         "&e1=" + txtE1.Text +
                         "&e2=" + txtE2.Text +
                         "&e3=" + txtE3.Text +
                         "&e4=" + txtE4.Text +
                         "&e5=" + txtE5.Text;
            Response.Redirect(url);
        }
    }
}