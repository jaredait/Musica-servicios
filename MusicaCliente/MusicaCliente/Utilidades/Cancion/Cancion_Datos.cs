using Musica;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;

namespace MusicaCliente.Utilidades.Cancion
{
    public class Cancion_Datos
    {
        public string uri { get; set; }
        WebClient webClient;
        string recibir;
        string verbo;

        public Cancion_Datos()
        {
            uri = "http://localhost:9070/api/cancion";
            webClient = new WebClient();
        }

        // GET
        public List<CANCION> cargarCanciones()
        {
            recibir = webClient.DownloadString(new Uri(uri));
            List<CANCION> datos = JsonConvert.DeserializeObject<List<CANCION>>(recibir);

            return datos;
        }

        // GET por id
        public CANCION cargarCancionPorId(string id)
        {
            recibir = webClient.DownloadString(new Uri(uri + "/" + id));
            CANCION cancionTemp = JsonConvert.DeserializeObject<CANCION>(recibir);
            return cancionTemp;
        }

        // POST
        public void crearCancion(CANCION nuevaCancion)
        {
            verbo = "POST";
            string objetoJson = JsonConvert.SerializeObject(nuevaCancion);
            UTF8Encoding utf8 = new UTF8Encoding();
            Byte[] cadenaBytes = utf8.GetBytes(objetoJson);

            webClient.Headers.Add("content-type", "application/json");
            webClient.UploadData(uri, verbo, cadenaBytes);
        }

        public void actualizarCancion(CANCION cancionActualizada)
        {
            string uri = this.uri + $"/{cancionActualizada.CAN_ID}";
            verbo = "PUT";

            string objetoJson = JsonConvert.SerializeObject(cancionActualizada);
            UTF8Encoding utf8 = new UTF8Encoding();
            Byte[] cadenaBytes = utf8.GetBytes(objetoJson);

            webClient.Headers.Add("content-type", "application/json");
            webClient.UploadData(uri, verbo, cadenaBytes);
        }

        public void eliminarCancion(string id)
        {
            string uri = this.uri + id;
            verbo = "DELETE";

            webClient.Headers.Add("content-type", "application/json");
            webClient.UploadString(uri, verbo, "");
        }
    }
}