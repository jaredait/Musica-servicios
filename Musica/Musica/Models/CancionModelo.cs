using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Musica.Models
{
    public class CancionModelo : ICancion
    {
        MusicaEntities _contexto;

        public CancionModelo()
        {
            _contexto = new MusicaEntities();
        }

        public bool addCancion(CANCION newCancion)
        {
            throw new NotImplementedException();
        }

        public CANCION getCancion(string id)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<CANCION> getCanciones()
        {
            throw new NotImplementedException();
        }

        public bool removeCancion(string id)
        {
            throw new NotImplementedException();
        }

        public CANCION updateCancion(string id, CANCION updatedCancion)
        {
            throw new NotImplementedException();
        }
    }
}