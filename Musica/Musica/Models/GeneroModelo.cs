using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Musica.Models
{
    public class GeneroModelo : IGenero
    {
        MusicaEntities _contexto;

        public GeneroModelo()
        {
            _contexto = new MusicaEntities();
        }
        
        public bool addGenero(GENERO newGenero)
        {
            throw new NotImplementedException();
        }

        public GENERO getGenero(string id)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<GENERO> getGeneros()
        {
            throw new NotImplementedException();
        }

        public bool removeGenero(string id)
        {
            throw new NotImplementedException();
        }

        public GENERO updateGenero(string id, GENERO updatedGenero)
        {
            throw new NotImplementedException();
        }
    }
}