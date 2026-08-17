using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaReciclaje.vista
{
    public partial class Recompensa : System.Web.UI.Page
    {
        logica.logica_recompensa logica = new logica.logica_recompensa();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LlenarGrid();
            }
        }

        private void LlenarGrid()
        {
            GridView1.DataSource = logica.ObtenerRecompensas();
            GridView1.DataBind();
        }

        protected void bcanjear_Click(object sender, EventArgs e)
        {
            logica.CanjearRecompensa(
                Convert.ToInt32(txtusuarioId.Text),
                Convert.ToInt32(txtrecompensaId.Text)
            );

            txtusuarioId.Text = "";
            txtrecompensaId.Text = "";

            LlenarGrid();
        }
    }
}