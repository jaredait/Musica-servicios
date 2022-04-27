using MusicaCliente.Utilidades.Artista;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MusicaCliente.Views.Artista
{
    public partial class PostArtistaWebForm : System.Web.UI.Page
    {
        Artista_Datos operaciones;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCrearArtista_Click(object sender, EventArgs e)
        {
            operaciones = new Artista_Datos();

            ARTISTA nuevoAlbum = new ARTISTA();
            nuevoAlbum.ART_ID = txtId.Text;
            nuevoAlbum.ART_NOMBRE = txtNombre.Text;
            nuevoAlbum.ART_EMAIL = txtEmail.Text;
            nuevoAlbum.ART_FECHA_CREACION = calPostArtista.SelectedDate;
            nuevoAlbum.ART_CANT_INTEGRANTES = int.Parse(txtCantIntegrantes.Text);

            operaciones.crearArtista(nuevoAlbum);
            limpiarCampos();
        }
        private void limpiarCampos()
        {
            txtId.Text = "";
            txtNombre.Text = "";
            txtEmail.Text = "";

            txtCantIntegrantes.Text = "";
        }
    }
}