using Musica;
using MusicaCliente.Utilidades.Genero;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MusicaCliente.Views.Genero
{
    public partial class GetGeneroWebForm : System.Web.UI.Page
    {
        Genero_Datos operaciones;
        protected void Page_Load(object sender, EventArgs e)
        {
            cargarGridView();
            txtBuscarGenero.Focus();
        }

        protected void btnBuscarGenero_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(txtBuscarGenero.Text))
            {
                cargarGridView(txtBuscarGenero.Text);
                limpiarCampos();
            }
            else
            {
                cargarGridView();
                limpiarCampos();
            }
        }

        private void cargarGridView()
        {
            operaciones = new Genero_Datos();
            GVGenero.DataSource = operaciones.cargarGenero();
            GVGenero.DataBind();
        }

        private void cargarGridView(string id)
        {
            operaciones = new Genero_Datos();
            List<GENERO> datos = new List<GENERO>();
            datos.Add(operaciones.cargarGeneroPorId(id));
            GVGenero.DataSource = datos;
            GVGenero.DataBind();
        }
        private void limpiarCampos()
        {
            txtBuscarGenero.Text = "";
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtBuscarGenero.Text = "";
            txtBuscarGenero.Focus();
        }
    }
}