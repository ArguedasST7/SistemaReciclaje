using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaReciclaje.vista
{
    public partial class Reciclaje : System.Web.UI.Page
    {
        logica.logica_reciclaje logica = new logica.logica_reciclaje();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LlenarGrid();
            }
        }

        private void LlenarGrid()
        {
            GridView1.DataSource = logica.ObtenerReciclajes();
            GridView1.DataBind();
        }

        protected void bagregar_Click(object sender, EventArgs e)
        {
            logica.AgregarReciclaje(
                Convert.ToInt32(txtusuarioId.Text),
                Convert.ToInt32(txttipoMaterialId.Text),
                Convert.ToDecimal(txtcantidad.Text)
            );

            txtusuarioId.Text = "";
            txttipoMaterialId.Text = "";
            txtcantidad.Text = "";

            LlenarGrid();
        }
    }
}