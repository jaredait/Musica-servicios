using Musica;
using MusicaCliente.Models;
using MusicaCliente.Utilidades;
using MusicaCliente.Utilidades.Artista;
using MusicaCliente.Utilidades.Cancion;
using MusicaCliente.Utilidades.Genero;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MusicaCliente.ViewModels
{
    public class CancionAlbumGeneroViewModel
    {
        Cancion_Datos cancionDatos;
        Album_Datos albumDatos;
        Genero_Datos generoDatos;
        CANCION_FULL cancionFull;

        public CancionAlbumGeneroViewModel()
        {
            cancionDatos = new Cancion_Datos();
            albumDatos = new Album_Datos();
            generoDatos = new Genero_Datos();
        }

        public List<CANCION_FULL> CargarCancionAlbumGenero()
        {
            List<CANCION_FULL> listaCancionesFull = new List<CANCION_FULL>();
            IEnumerable<CANCION> listaCanciones = cancionDatos.cargarCanciones();
            IEnumerable<ALBUM> listaAlbumes = albumDatos.cargarAlbumes();
            IEnumerable<GENERO> listaGeneros = generoDatos.cargarGenero();

            foreach(CANCION cancion in listaCanciones)
            {
                CANCION_FULL temp = new CANCION_FULL();

                temp.CAN_ID = cancion.CAN_ID;
                temp.ALB_NOMBRE = listaAlbumes.Where(a => a.ALB_ID == cancion.ALB_ID).FirstOrDefault().ALB_NOMBRE;
                temp.GEN_NOMBRE = listaGeneros.Where(g => g.GEN_ID == cancion.GEN_ID).FirstOrDefault().GEN_NOMBRE;
                temp.CAN_NOMBRE = cancion.CAN_NOMBRE;
                temp.CAN_DURACION = cancion.CAN_DURACION;

                listaCancionesFull.Add(temp);
            }

            return listaCancionesFull;            
        }

        public CANCION_FULL CargarCancionAlbumGeneroPorId(string id)
        {
            CANCION_FULL cancionFull = new CANCION_FULL();
            CANCION temp = cancionDatos.cargarCancionPorId(id);

            cancionFull.CAN_ID = id;
            cancionFull.ALB_NOMBRE = albumDatos.cargarAlbumPorId(id).ALB_NOMBRE;
            cancionFull.GEN_NOMBRE = generoDatos.cargarGeneroPorId(id).GEN_NOMBRE;
            cancionFull.CAN_NOMBRE = temp.CAN_NOMBRE;
            cancionFull.CAN_DURACION = temp.CAN_DURACION;

            return cancionFull;
        }
    }
}