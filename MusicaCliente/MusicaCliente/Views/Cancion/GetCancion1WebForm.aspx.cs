using Musica;
using MusicaCliente.Models;
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
    public partial class GetCancion1WebForm : System.Web.UI.Page
    {
        Cancion_Datos operaciones;
        CancionAlbumGeneroViewModel cancionAG;

        protected void Page_Load(object sender, EventArgs e)
        {
            cargarGridView();
            txtBuscarCancion.Focus();
        }

        protected void btnBuscarCancion_Click(object sender, EventArgs e)
        {
            string id = txtBuscarCancion.Text;
            if(!String.IsNullOrEmpty(id) && !String.IsNullOrWhiteSpace(id))
            {
                cargarGridView(id);
            }
            else
            {
                cargarGridView();
            }
        }

        private void cargarGridView()
        {
            //operaciones = new Cancion_Datos();
            //GVBuscarCancion.DataSource = operaciones.cargarCanciones();
            cancionAG = new CancionAlbumGeneroViewModel();
            GVBuscarCancion.DataSource = cancionAG.CargarCancionAlbumGenero();
            GVBuscarCancion.DataBind();
        }

        private void cargarGridView(string id)
        {
            /*
            operaciones = new Cancion_Datos();
            List<CANCION> listaTemp = new List<CANCION>()
            {
                operaciones.cargarCancionPorId(id)
            };
            */
            cancionAG = new CancionAlbumGeneroViewModel();
            List<CANCION_FULL> listaTemp = new List<CANCION_FULL>()
            {
                cancionAG.CargarCancionAlbumGeneroPorId(id)
            };
            GVBuscarCancion.DataSource = listaTemp;
            GVBuscarCancion.DataBind();
        }

        protected void btnLimpiarGet_Click(object sender, EventArgs e)
        {
            txtBuscarCancion.Text = "";
            txtBuscarCancion.Focus();
        }
    }
}