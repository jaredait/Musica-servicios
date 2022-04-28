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
            //limpiarCampos();
        }

        private void limpiarCampos()
        {
            TextBox1.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox1.Focus();
        }

        protected void btnCrear_Click(object sender, EventArgs e)
        {
            CANCION cancionTemp = new CANCION();
            operaciones = new Cancion_Datos();

            // los nombres de los siguientes textbox no se cambiaron porque el código da problemas cada vez que se los cambia
            // esto sucedió varias veces, incluso con nuevos textbox.

            cancionTemp.CAN_ID = TextBox1.Text;
            cancionTemp.ALB_ID = dropPostAlbum.SelectedValue;
            cancionTemp.GEN_ID = dropPostGenero.SelectedValue;
            cancionTemp.CAN_NOMBRE = TextBox4.Text;
            cancionTemp.CAN_DURACION = Convert.ToDecimal(TextBox5.Text);

            operaciones.crearCancion(cancionTemp);
            limpiarCampos();
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            limpiarCampos();
            TextBox1.Focus();
        }
    }
}