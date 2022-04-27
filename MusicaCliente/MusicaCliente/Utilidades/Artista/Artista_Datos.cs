using Musica;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;

namespace MusicaCliente.Utilidades.Artista
{
    public class Artista_Datos
    {
        public string uri { get; set; }
        WebClient webClient;
        string recibir;
        string verbo;

        public Artista_Datos()
        {
            uri = "https://localhost:9070/api/artista";
            webClient = new WebClient();
        }

        // GET
        public List<ARTISTA> cargarArtista()
        {
            recibir = webClient.DownloadString(new Uri(uri));
            List<ARTISTA> datos = JsonConvert.DeserializeObject<List<ARTISTA>>(recibir);

            return datos;
        }

        // GET por id
        public ARTISTA cargarArtistaPorId(string id)
        {
            recibir = webClient.DownloadString(new Uri(uri + "/" + id));
            ARTISTA cancionTemp = JsonConvert.DeserializeObject<ARTISTA>(recibir);
            return cancionTemp;
        }

        // POST
        public void crearArtista (ARTISTA nuevoArtista)
        {
            verbo = "POST";
            string objetoJson = JsonConvert.SerializeObject(nuevoArtista);
            UTF8Encoding utf8 = new UTF8Encoding();
            Byte[] cadenaBytes = utf8.GetBytes(objetoJson);

            webClient.Headers.Add("content-type", "application/json");
            webClient.UploadData(uri, verbo, cadenaBytes);
        }

        public void actualizarArtista(ARTISTA cancionActualizada)
        {
            string uri = this.uri + $"/{cancionActualizada.ART_ID}";
            verbo = "PUT";

            string objetoJson = JsonConvert.SerializeObject(cancionActualizada);
            UTF8Encoding utf8 = new UTF8Encoding();
            Byte[] cadenaBytes = utf8.GetBytes(objetoJson);

            webClient.Headers.Add("content-type", "application/json");
            webClient.UploadData(uri, verbo, cadenaBytes);
        }

        public void eliminarArtista(string id)
        {
            string uri = this.uri + "/" + id;
            verbo = "DELETE";

            webClient.Headers.Add("content-type", "application/json");
            webClient.UploadString(uri, verbo, "");
        }
    }
}