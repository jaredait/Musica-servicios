using MusicaCliente.Utilidades.Artista;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MusicaCliente.Views.Artista
{
    public partial class DeleteArtistaWebForm : System.Web.UI.Page
    {
        Artista_Datos operaciones;
        protected void Page_Load(object sender, EventArgs e)
        {
            cargarGridView();
            txtID.Focus();
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            operaciones = new Artista_Datos();
            operaciones.eliminarArtista(txtID.Text);

            cargarGridView();
            limpiarCampos();
        }
        private void cargarGridView()
        {
            operaciones = new Artista_Datos();
            GridView1.DataSource = operaciones.cargarArtista();
            GridView1.DataBind();
        }
        private void limpiarCampos()
        {
            txtID.Text = "";
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtID.Text = "";
            txtID.Focus();
        }
    }
}