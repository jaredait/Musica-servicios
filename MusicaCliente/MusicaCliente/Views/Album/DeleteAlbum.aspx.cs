using MusicaCliente.Utilidades;
using MusicaCliente.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MusicaCliente.Views.Album
{
    public partial class DeleteAlbum : System.Web.UI.Page
    {
        Album_Datos operaciones;
        AlbumArtistaViewModel albumArtista;

        protected void Page_Load(object sender, EventArgs e)
        {
            cargarGridView();
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            operaciones = new Album_Datos();
            operaciones.eliminarAlbum(txtId.Text);

            cargarGridView();
            limpiarCampos();
        }

        private void cargarGridView()
        {
            //operaciones = new Album_Datos();
            //GridView1.DataSource = operaciones.cargarAlbumes();
            albumArtista = new AlbumArtistaViewModel();
            GridView1.DataSource = albumArtista.getAlbum_Artistas();
            GridView1.DataBind();
        }

        private void limpiarCampos()
        {
            txtId.Text = "";
        }


    }
}