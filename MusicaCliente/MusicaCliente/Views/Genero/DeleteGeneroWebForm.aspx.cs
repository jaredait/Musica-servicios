using MusicaCliente.Utilidades.Genero;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MusicaCliente.Views.Genero
{
    public partial class DeleteGeneroWebForm : System.Web.UI.Page
    {
        Genero_Datos operaciones;
        protected void Page_Load(object sender, EventArgs e)
        {
            cargarGridView();
            txtEliminarGenero.Focus();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }


        private void cargarGridView()
        {
            operaciones = new Genero_Datos();
            GridView1.DataSource = operaciones.cargarGenero();
            GridView1.DataBind();
        }

        private void limpiarCampos()
        {
            txtEliminarGenero.Text = "";
        }

        protected void btnEliminarGenero_Click(object sender, EventArgs e)
        {
            operaciones = new Genero_Datos();
            operaciones.eliminarGenero(txtEliminarGenero.Text);

            cargarGridView();
            limpiarCampos();
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtEliminarGenero.Text = "";
            txtEliminarGenero.Focus();
        }
    }
}