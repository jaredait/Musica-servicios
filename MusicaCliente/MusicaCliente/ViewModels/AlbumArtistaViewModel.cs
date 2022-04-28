using MusicaCliente.Models;
using MusicaCliente.Utilidades;
using MusicaCliente.Utilidades.Artista;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MusicaCliente.ViewModels
{
    public class AlbumArtistaViewModel
    {
        ALBUM_FULL albumArtista;
        Artista_Datos artistaDatos;
        Album_Datos albumDatos;

        public AlbumArtistaViewModel()
        {
            albumArtista = new ALBUM_FULL();
            artistaDatos = new Artista_Datos();
            albumDatos = new Album_Datos();
        }

        public IEnumerable<ALBUM_FULL> getAlbum_Artistas()
        {
            List<ALBUM_FULL> listaAlbumArtista = new List<ALBUM_FULL>();
            List<ARTISTA> listaArtistas = artistaDatos.cargarArtista();
            List<ALBUM> listaAlbumes = albumDatos.cargarAlbumes();

            foreach (ALBUM album in listaAlbumes)
            {
                ALBUM_FULL temp = new ALBUM_FULL();
                temp.ALB_ID = album.ALB_ID;
                temp.ART_NOMBRE = listaArtistas.Where(art => art.ART_ID == album.ART_ID).FirstOrDefault().ART_NOMBRE;
                temp.ALB_NOMBRE = album.ALB_NOMBRE;
                temp.ALB_FECHA_LANZAMIENTO = album.ALB_FECHA_LANZAMIENTO;

                listaAlbumArtista.Add(temp);
            }

            return (listaAlbumArtista);
        }

        public ALBUM_FULL cargarAlbumArtistaPorId(string id)
        {
            ALBUM albumTemp = albumDatos.cargarAlbumPorId(id);

            albumArtista.ALB_ID = id;
            albumArtista.ART_NOMBRE = artistaDatos.cargarArtistaPorId(albumTemp.ALB_ID).ART_NOMBRE;
            albumArtista.ALB_NOMBRE = albumTemp.ALB_NOMBRE;
            albumArtista.ALB_FECHA_LANZAMIENTO = albumTemp.ALB_FECHA_LANZAMIENTO;

            return albumArtista;            
        }


    }
}