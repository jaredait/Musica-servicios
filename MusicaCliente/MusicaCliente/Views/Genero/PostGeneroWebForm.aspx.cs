using Musica;
using MusicaCliente.Models;
using MusicaCliente.Utilidades.Genero;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace MusicaCliente.Views.Genero
{

    public partial class PostGeneroWebForm : System.Web.UI.Page
    {
        Genero_Datos operaciones;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCrearGenero_Click(object sender, EventArgs e)
        {
            operaciones = new Genero_Datos();


            GENERO nuevoGenero = new GENERO();
            nuevoGenero.GEN_ID = txtIDGenero.Text;
            nuevoGenero.GEN_NOMBRE = txtIDNombreGenero.Text;

            operaciones.crearGenero(nuevoGenero);
            limpiarCampos();
        }
        private void limpiarCampos()
        {
            txtIDGenero.Text = "";
            txtIDNombreGenero.Text = "";
        }
    }
}