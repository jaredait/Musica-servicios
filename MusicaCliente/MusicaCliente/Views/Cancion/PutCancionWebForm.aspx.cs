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
    public partial class PutCancionWebForm : System.Web.UI.Page
    {
        Cancion_Datos operaciones;

        protected void Page_Load(object sender, EventArgs e)
        {
            cargarGridView();
            limpiarCampos();
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            CANCION cancionActualizada = new CANCION();

            cancionActualizada.CAN_ID = txtId.Text;
            cancionActualizada.ALB_ID = txtAlbumId.Text;
            cancionActualizada.GEN_ID = txtGeneroId.Text;
            cancionActualizada.CAN_NOMBRE = txtNombre.Text;
            cancionActualizada.CAN_DURACION = Convert.ToDecimal(txtDuracion.Text);

            operaciones.actualizarCancion(cancionActualizada);

            cargarGridView();
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

        private void cargarGridView()
        {
            operaciones = new Cancion_Datos();
            GVPut.DataSource = operaciones.cargarCanciones();
            GVPut.DataBind();
        }
    }
}