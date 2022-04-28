using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MusicaCliente.Models
{
    public class ALBUM_FULL
    {
        public string ALB_ID { get; set; }
        public string ART_NOMBRE { get; set; }
        public string ALB_NOMBRE { get; set; }
        public Nullable<System.DateTime> ALB_FECHA_LANZAMIENTO { get; set; }
    }
}