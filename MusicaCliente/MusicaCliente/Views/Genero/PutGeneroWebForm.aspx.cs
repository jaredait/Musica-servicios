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
    public partial class PutGeneroWebForm : System.Web.UI.Page
    {
        Genero_Datos operaciones;
        protected void Page_Load(object sender, EventArgs e)
        {
            cargarGridView();
        }

        protected void btnActualizarGenero_Click(object sender, EventArgs e)
        {
            operaciones = new Genero_Datos();


            GENERO nuevoGenero = new GENERO();
            nuevoGenero.GEN_ID = txtIdGenero.Text;
            nuevoGenero.GEN_NOMBRE = txtNombreGenero.Text;


            operaciones.actualizarGenero(nuevoGenero);

            cargarGridView();
            limpiarCampos();
        }

        private void cargarGridView()
        {
            operaciones = new Genero_Datos();
            GVActualizarGen.DataSource = operaciones.cargarGenero();
            GVActualizarGen.DataBind();
        }
        private void limpiarCampos()
        {
            txtIdGenero.Text = "";
            txtNombreGenero.Text = "";
        }
    }
}