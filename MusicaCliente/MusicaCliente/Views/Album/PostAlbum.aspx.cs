using MusicaCliente.Models;
using MusicaCliente.Utilidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MusicaCliente.Views.Album
{
    public partial class PostAlbum : System.Web.UI.Page
    {
        Album_Datos operaciones;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnCrear_Click(object sender, EventArgs e)
        {
            operaciones = new Album_Datos();

            ALBUM nuevoAlbum = new ALBUM();
            nuevoAlbum.ALB_ID = txtId.Text;
            nuevoAlbum.ART_ID = dropPostArtista.SelectedValue;
            nuevoAlbum.ALB_NOMBRE = txtNombre.Text;
            nuevoAlbum.ALB_FECHA_LANZAMIENTO = calFechaPost.SelectedDate;

            operaciones.crearAlbum(nuevoAlbum);
            limpiarCampos();
        }

        private void limpiarCampos()
        {
            txtId.Text = "";
            txtNombre.Text = "";
        }
    }
}