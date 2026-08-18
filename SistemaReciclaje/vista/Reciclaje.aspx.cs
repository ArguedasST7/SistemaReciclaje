using System;
using System.Data;
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
                CargarEstadisticas();
            }
        }

        private void LlenarGrid()
        {
            GridView1.DataSource = logica.ObtenerReciclajes();
            GridView1.DataBind();
        }

        private void CargarEstadisticas()
        {
            DataTable tabla = logica.ObtenerEstadisticas();

            if (tabla.Rows.Count > 0)
            {
                lblTotalRegistros.Text = tabla.Rows[0]["totalRegistros"].ToString();
                lblTotalCantidad.Text = tabla.Rows[0]["totalCantidad"].ToString();
                lblTotalPuntos.Text = tabla.Rows[0]["totalPuntos"].ToString();
            }
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
            CargarEstadisticas();
        }
    }
}