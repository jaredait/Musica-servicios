using MusicaCliente.Utilidades.Artista;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MusicaCliente.Views.Artista
{
    public partial class PutArtistaWebForm : System.Web.UI.Page
    {
        Artista_Datos operaciones;
        protected void Page_Load(object sender, EventArgs e)
        {
            cargarGridView();
        }

        protected void brnActualizarArt_Click(object sender, EventArgs e)
        {
            operaciones = new Artista_Datos();

            ARTISTA nuevoAlbum = new ARTISTA();
            nuevoAlbum.ART_ID = txtIdArtista.Text;
            nuevoAlbum.ART_NOMBRE = txtNombreArt.Text;
            nuevoAlbum.ART_EMAIL = txtEmailArt.Text;
            nuevoAlbum.ART_FECHA_CREACION = calPutArtista.SelectedDate;
            nuevoAlbum.ART_CANT_INTEGRANTES = int.Parse(txtIntegrantesArt.Text);

            operaciones.actualizarArtista(nuevoAlbum);

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
            txtIdArtista.Text = "";
            txtNombreArt.Text = "";
            txtEmailArt.Text = "";
            txtIntegrantesArt.Text = "";
        }
    }
}