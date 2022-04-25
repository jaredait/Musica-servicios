using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Musica.Models
{
    public class ArtistaModelo : IArtista
    {
        MusicaEntities _contexto;

        public ArtistaModelo()
        {
            _contexto = new MusicaEntities();
        }

        public bool addArtista(ARTISTA newArtista)
        {
            throw new NotImplementedException();
        }

        public ARTISTA getArtista(string id)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<ARTISTA> getArtistas()
        {
            throw new NotImplementedException();
        }

        public bool removeArtista(string id)
        {
            throw new NotImplementedException();
        }

        public ARTISTA updateArtista(string id, ARTISTA updatedArtista)
        {
            throw new NotImplementedException();
        }
    }
}