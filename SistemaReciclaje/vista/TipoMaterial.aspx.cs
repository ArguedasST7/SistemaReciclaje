using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaReciclaje.vista
{
    public partial class TipoMaterial : System.Web.UI.Page
    {
        logica.logica_tipo logica = new logica.logica_tipo();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LlenarGrid();
            }
        }

        private void LlenarGrid()
        {
            GridView1.DataSource = logica.ObtenerTipos();
            GridView1.DataBind();
        }

        protected void bagregar_Click(object sender, EventArgs e)
        {
            logica.AgregarTipo(txtnombre.Text, txtdescripcion.Text);

            txtnombre.Text = "";
            txtdescripcion.Text = "";

            LlenarGrid();
        }
    }
}
    
        