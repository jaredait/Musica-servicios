using MusicaCliente.Utilidades;
using MusicaCliente.Utilidades.Cancion;
using MusicaCliente.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MusicaCliente.Views.Cancion
{
    public partial class DeleteCancionWebForm : System.Web.UI.Page
    {
        Cancion_Datos operaciones;
        private CancionAlbumGeneroViewModel cancionAG;

        protected void Page_Load(object sender, EventArgs e)
        {
            cargarGridView();
            txtIdEliminar.Focus();
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            operaciones = new Cancion_Datos();
            operaciones.eliminarCancion(txtIdEliminar.Text);

            cargarGridView();
            limpiarCampos();
        }

        private void cargarGridView()
        {
            //operaciones = new Cancion_Datos();
            //GVGet.DataSource = operaciones.cargarCanciones();
            cancionAG = new CancionAlbumGeneroViewModel();
            GVGet.DataSource = cancionAG.CargarCancionAlbumGenero();
            GVGet.DataBind();
        }

        private void limpiarCampos()
        {
            txtIdEliminar.Text = "";
            txtIdEliminar.Focus();
        }
    }
}