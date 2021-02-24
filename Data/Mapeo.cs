﻿using System.Data.Entity;
using Utilitarios;

namespace Data
{
    public class Mapeo : DbContext//Hereda de DbContext (contiene referencias a entityFramework)
    {
        static Mapeo()
        {
            Database.SetInitializer<Mapeo>(null);
        }

        public Mapeo() : base("name=Occibana")//name=(nombre DB de la cadena de coneccion en el web config)
        {

        }

        public DbSet<URegistro> usuario { get; set; }
        public DbSet<UHotel> hotel { get; set; }
        public DbSet<UHotelMunicipio> hotelmunicipio { get; set; }
        public DbSet<UHotelZona> hotelzona { get; set; }
        //public DbSet<Token> token { get; set; }
        //public DbSet<Acceso> acceso { get; set; }
        //public DbSet<Membresia> membresia { get; set; }
        public DbSet<UReserva> reserva { get; set; }
        public DbSet<UHabitacion> habitacion { get; set; }
        //public DbSet<Comentarios> comentario { get; set; }

    }
}

