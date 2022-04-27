using MusicaCliente.Utilidades.Artista;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MusicaCliente.Views.Artista
{
    public partial class GetArtistaWebForm : System.Web.UI.Page
    {
        Artista_Datos operaciones;
        protected void Page_Load(object sender, EventArgs e)
        {
            cargarGridView();
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(txtBuscar.Text))
            {
                cargarGridView(txtBuscar.Text);
            }
            else
            {
                cargarGridView();
            }
        }

        private void cargarGridView()
        {
            operaciones = new Artista_Datos();
            GridView1.DataSource = operaciones.cargarArtista();
            GridView1.DataBind();
        }

        private void cargarGridView(string id)
        {
            operaciones = new Artista_Datos();
            List<ARTISTA> datos = new List<ARTISTA>();
            datos.Add(operaciones.cargarArtistaPorId(id));
            GridView1.DataSource = datos;
            GridView1.DataBind();
        }
    }
}