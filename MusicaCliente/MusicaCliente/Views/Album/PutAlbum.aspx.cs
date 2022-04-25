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
    public partial class PutAlbum : System.Web.UI.Page
    {
        Album_Datos operaciones;

        protected void Page_Load(object sender, EventArgs e)
        {
            cargarGridView();
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            operaciones = new Album_Datos();

            DateTime fecha = Convert.ToDateTime(txtFecha.Text);

            ALBUM nuevoAlbum = new ALBUM();
            nuevoAlbum.ALB_ID = txtId.Text;
            nuevoAlbum.ART_ID = txtArtistaId.Text;
            nuevoAlbum.ALB_NOMBRE = txtNombre.Text;
            nuevoAlbum.ALB_FECHA_LANZAMIENTO = fecha.Date;

            operaciones.actualizarAlbum(nuevoAlbum);

            cargarGridView();
            limpiarCampos();
        }

        private void cargarGridView()
        {
            operaciones = new Album_Datos();
            GridView1.DataSource = operaciones.cargarAlbumes();
            GridView1.DataBind();
        }

        private void limpiarCampos()
        {
            txtId.Text = "";
            txtArtistaId.Text = "";
            txtNombre.Text = "";
            txtFecha.Text = "";
        }
    }
}