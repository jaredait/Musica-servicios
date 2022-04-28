using MusicaCliente.Models;
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
    public partial class PutAlbum : System.Web.UI.Page
    {
        Album_Datos operaciones;
        AlbumArtistaViewModel albumArtista;

        protected void Page_Load(object sender, EventArgs e)
        {
            cargarGridView();
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            operaciones = new Album_Datos();

            ALBUM nuevoAlbum = new ALBUM();
            nuevoAlbum.ALB_ID = txtId.Text;
            nuevoAlbum.ART_ID = dropPutArtista.SelectedValue;
            nuevoAlbum.ALB_NOMBRE = txtNombre.Text;
            nuevoAlbum.ALB_FECHA_LANZAMIENTO = calFecha.SelectedDate;

            operaciones.actualizarAlbum(nuevoAlbum);

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
            txtNombre.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            txtId.Text = "";
            txtNombre.Text = "";
            txtId.Focus();
            txtNombre.Focus();
        }
    }
}