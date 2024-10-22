using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dominio
{
    public class Disco
    {
        private int codigo;
        private string nombre;
        private DateTime fechaLanzamiento;
        private int cantCanciones;
        private string urlImagen;
        private string estilo;
        //private TipoEdicion edicion;

        public int Codigo
        {
            get { return codigo; }
            set { codigo = value; }
        }

        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        public DateTime FechaLanzamiento
        {
            get { return fechaLanzamiento; }
            set { fechaLanzamiento = value; }
        }

        public int CantCanciones
        {
            get { return cantCanciones; }
            set { cantCanciones = value; }
        }

        public string UrlImagen
        { get { return urlImagen; } set { urlImagen = value; } }

        
        public string Estilo
        { get { return estilo; } set { estilo = value; } }

        /*
        public TipoEdicion Edicion
        { get { return edicion; } set { edicion = value; } }
        */

        public class DiscoNegocio
        {
            public List<Disco> listar()
            {
                List<Disco> lista = new List<Disco>();
                lista.Add(new Disco());
                lista.Add(new Disco());

                lista[0].Codigo = 1;
                lista[0].Nombre = "Oktubre";
                lista[0].FechaLanzamiento = DateTime.Now;
                lista[0].CantCanciones = 10;
                lista[0].UrlImagen = "";
                lista[0].Estilo = "Rock";


                lista[1].Codigo = 2;
                lista[1].Nombre = "Gulp!";
                lista[1].FechaLanzamiento = DateTime.Now;
                lista[1].CantCanciones = 8;
                lista[1].UrlImagen = "";
                lista[1].Estilo = "Punk";

                return lista;
            }

        }
    }
}
