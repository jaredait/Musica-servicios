using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MusicaCliente.Models
{
    public class ALBUM
    {
        public ALBUM()
        {

        }

        public ALBUM(string txtJson)
        {
            JObject objeto = JObject.Parse(txtJson);
            ALB_ID = (string)objeto["ALB_ID"];
            ALB_NOMBRE = (string)objeto["ALB_NOMBRE"];
            ALB_FECHA_LANZAMIENTO = (DateTime)objeto["ALB_FECHA_LANZAMIENTO"];

        }

        public string ALB_ID { get; set; }
        public string ART_ID { get; set; }
        public string ALB_NOMBRE { get; set; }
        public Nullable<System.DateTime> ALB_FECHA_LANZAMIENTO { get; set; }
    }
}