using Musica;
using MusicaCliente.Utilidades.Cancion;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MusicaCliente.Views.Cancion
{
    public partial class PostCancionWebForm : System.Web.UI.Page
    {
        Cancion_Datos operaciones;

        protected void Page_Load(object sender, EventArgs e)
        {
            limpiarCampos();
        }

        protected void btnCrear_Click(object sender, EventArgs e)
        {
            operaciones = new Cancion_Datos();

            CANCION nuevaCancion = new CANCION();
            nuevaCancion.CAN_ID = txtId.Text;
            nuevaCancion.ALB_ID = txtAlbumId.Text;
            nuevaCancion.GEN_ID = txtGeneroId.Text;
            nuevaCancion.CAN_NOMBRE = txtNombre.Text;
            nuevaCancion.CAN_DURACION = Convert.ToDecimal(txtDuracion.Text);

            operaciones.crearCancion(nuevaCancion);
            limpiarCampos();
        }

        private void limpiarCampos()
        {
            txtId.Text = "";
            txtAlbumId.Text = "";
            txtGeneroId.Text = "";
            txtNombre.Text = "";
            txtDuracion.Text = "";
            txtId.Focus();
        }
    }
}