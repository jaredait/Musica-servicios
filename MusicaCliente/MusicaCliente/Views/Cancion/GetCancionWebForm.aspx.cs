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
    public partial class GetCancionWebForm : System.Web.UI.Page
    {
        Cancion_Datos operaciones;

        protected void Page_Load(object sender, EventArgs e)
        {
            cargarGridView();
            limpiarBusqueda();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(TxtGetBuscar.Text))
            {
                cargarGridView(TxtGetBuscar.Text);
            }
            else
            {
                cargarGridView();
            }
        }

        private void cargarGridView()
        {
            operaciones = new Cancion_Datos();
            GVGet.DataSource = operaciones.cargarCanciones();
            GVGet.DataBind();
        }

        private void cargarGridView(string id)
        {
            operaciones = new Cancion_Datos();
            List<CANCION> datos = new List<CANCION>();
            datos.Add(operaciones.cargarCancionPorId(id));
            GVGet.DataSource = datos;
            GVGet.DataBind();
        }

        protected void BtnLimpiar_Click(object sender, EventArgs e)
        {
            limpiarBusqueda();
        }

        public void limpiarBusqueda()
        {
            TxtGetBuscar.Text = "";
            TxtGetBuscar.Focus();
        }
    }
}