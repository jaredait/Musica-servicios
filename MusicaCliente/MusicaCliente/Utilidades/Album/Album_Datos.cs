using MusicaCliente.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;

namespace MusicaCliente.Utilidades
{
    public class Album_Datos
    {
        public string uri { get; set; }

        public Album_Datos()
        {
            uri = "http://localhost:9070/api/album";
        }

        public List<ALBUM> cargarAlbumes()
        {
            WebClient respuesta = new WebClient();
            string recibir = respuesta.DownloadString(new Uri(uri));
            List<ALBUM> datos = JsonConvert.DeserializeObject<List<ALBUM>>(recibir);

            return datos;
        }

        public ALBUM cargarAlbumPorId(string id)
        { 
            WebClient respuesta = new WebClient();
            string recibir = respuesta.DownloadString(new Uri(uri + "/" + id));
            ALBUM datos = JsonConvert.DeserializeObject<ALBUM>(recibir);
            return datos;
        }

        public void crearAlbum(ALBUM nuevoAlbum)
        {
            string uri = "http://localhost:9070/api/album";
            string verbo = "POST";

            WebClient accion = new WebClient();
            string objetoJson = JsonConvert.SerializeObject(nuevoAlbum);
            UTF8Encoding codificacion = new UTF8Encoding();
            Byte[] datos = codificacion.GetBytes(objetoJson);

            accion.Headers.Add("content-type", "application/json");
            accion.UploadData(uri, verbo, datos);

        }

        public void actualizarAlbum(ALBUM actualizadoAlbum)
        {
            string uri = "http://localhost:9070/api/album/" + actualizadoAlbum.ALB_ID;
            string verbo = "PUT";

            WebClient accion = new WebClient();
            string objetoJson = JsonConvert.SerializeObject(actualizadoAlbum);
            UTF8Encoding codificacion = new UTF8Encoding();
            Byte[] datos = codificacion.GetBytes(objetoJson);

            accion.Headers.Add("content-type", "application/json");
            accion.UploadData(uri, verbo, datos);
        }

        public void eliminarAlbum(string id)
        {
            string uri = "http://localhost:9070/api/album/" + id;
            string verbo = "DELETE";

            WebClient accion = new WebClient();
            accion.Headers.Add("content-type", "application/json");
            accion.UploadString(uri, verbo, "");
        }
    }
}