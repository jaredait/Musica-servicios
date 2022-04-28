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
    public partial class GetAlbum : System.Web.UI.Page
    {
        Album_Datos operaciones;
        AlbumArtistaViewModel albumArtista;

        protected void Page_Load(object sender, EventArgs e)
        {
            cargarGridView();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(txtId.Text))
            {
                cargarGridView(txtId.Text);
            }
            else
            {
                cargarGridView();
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void cargarGridView()
        {
            //operaciones = new Album_Datos();
            //GVGet.DataSource = operaciones.cargarAlbumes();
            albumArtista = new AlbumArtistaViewModel();
            GVGet.DataSource = albumArtista.getAlbum_Artistas();
            GVGet.DataBind();
        }

        private void cargarGridView(string id)
        {
            //operaciones = new Album_Datos();
            //List<ALBUM> datos = new List<ALBUM>();
            //datos.Add(operaciones.cargarAlbumPorId(id));
            List<ALBUM_FULL> datos = new List<ALBUM_FULL>()
            {
                albumArtista.cargarAlbumArtistaPorId(id)
            };
            GVGet.DataSource = datos;
            GVGet.DataBind();
        }
    }
}