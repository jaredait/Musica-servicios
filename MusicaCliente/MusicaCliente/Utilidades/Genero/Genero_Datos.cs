using System;
using System.Collections.Generic;
using Musica;
using Newtonsoft.Json;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;

namespace MusicaCliente.Utilidades.Genero
{
    public class Genero_Datos
    {
        public string uri { get; set; }
        WebClient webClient;
        string recibir;
        string verbo;

        public Genero_Datos()
        {
            uri = "http://localhost:9070/api/genero";
            webClient = new WebClient();
        }

        // GET
        public List<GENERO> cargarGenero()
        {
            recibir = webClient.DownloadString(new Uri(uri));
            List<GENERO> datos = JsonConvert.DeserializeObject<List<GENERO>>(recibir);

            return datos;
        }

        // GET por id
        public GENERO cargarGeneroPorId(string id)
        {
            recibir = webClient.DownloadString(new Uri(uri + "/" + id));
            GENERO cancionTemp = JsonConvert.DeserializeObject<GENERO>(recibir);
            return cancionTemp;
        }

        // POST
        public void crearGenero(GENERO nuevoGenero)
        {
            verbo = "POST";
            string objetoJson = JsonConvert.SerializeObject(nuevoGenero);
            UTF8Encoding utf8 = new UTF8Encoding();
            Byte[] cadenaBytes = utf8.GetBytes(objetoJson);

            webClient.Headers.Add("content-type", "application/json");
            webClient.UploadData(uri, verbo, cadenaBytes);
        }

        public void actualizarGenero(GENERO cancionActualizada)
        {
            string uri = this.uri + $"/{cancionActualizada.GEN_ID}";
            verbo = "PUT";

            string objetoJson = JsonConvert.SerializeObject(cancionActualizada);
            UTF8Encoding utf8 = new UTF8Encoding();
            Byte[] cadenaBytes = utf8.GetBytes(objetoJson);

            webClient.Headers.Add("content-type", "application/json");
            webClient.UploadData(uri, verbo, cadenaBytes);
        }

        public void eliminarGenero(string id)
        {
            string uri = this.uri +"/" + id;
            verbo = "DELETE";

            webClient.Headers.Add("content-type", "application/json");
            webClient.UploadString(uri, verbo, "");
        }
    }
}