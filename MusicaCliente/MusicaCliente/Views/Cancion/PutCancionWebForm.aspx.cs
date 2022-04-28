using Musica;
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
    public partial class PutCancionWebForm : System.Web.UI.Page
    {
        Cancion_Datos operaciones;
        private CancionAlbumGeneroViewModel cancionAG;

        protected void Page_Load(object sender, EventArgs e)
        {
            cargarGridView();
            //limpiarCampos();
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            CANCION cancionActualizada = new CANCION();
            operaciones = new Cancion_Datos();

            cancionActualizada.CAN_ID = txtIdActualizar.Text;
            cancionActualizada.ALB_ID = dropAlbumPut.SelectedValue;
            cancionActualizada.GEN_ID = dropGeneroPut.SelectedValue;
            cancionActualizada.CAN_NOMBRE = txtNombreActualizar.Text;
            cancionActualizada.CAN_DURACION = Convert.ToDecimal(txtDuracionActualizar.Text);

            operaciones.actualizarCancion(cancionActualizada);

            cargarGridView();
            limpiarCampos();
        }

        private void limpiarCampos()
        {
            txtIdActualizar.Text = "";
            txtNombreActualizar.Text = "";
            txtDuracionActualizar.Text = "";
            txtIdActualizar.Focus();
        }

        private void cargarGridView()
        {
            //operaciones = new Cancion_Datos();
            //GVPut.DataSource = operaciones.cargarCanciones();
            cancionAG = new CancionAlbumGeneroViewModel();
            GVPut.DataSource = cancionAG.CargarCancionAlbumGenero();
            GVPut.DataBind();
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            limpiarCampos();
            txtIdActualizar.Focus();
        }
    }
}