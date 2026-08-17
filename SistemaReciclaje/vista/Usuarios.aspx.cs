using System;
using System.Collections.Generic;
using System.Web.UI;
using SistemaReciclaje.modelo;

namespace SistemaReciclaje.vista
{
    public partial class Usuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LlenarGrid();
            }
        }

        private void LlenarGrid()
        {
            List<cls_usuario> usuarios = logica.logica_usuario.ObtenerUsuarios();

            GridView1.DataSource = usuarios;
            GridView1.DataBind();
        }

        protected void bagregar_Click(object sender, EventArgs e)
        {
            logica.logica_usuario.AgregarUsuario(txtnombre.Text, txtcorreo.Text);

            txtnombre.Text = "";
            txtcorreo.Text = "";

            LlenarGrid();
        }
    }
}