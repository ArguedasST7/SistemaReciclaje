using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SistemaReciclaje.modelo
{
    public class cls_reciclaje
    {
        public int id { get; set; }
        public int usuarioId { get; set; }
        public int tipoMaterialId { get; set; }
        public decimal cantidad { get; set; }
        public DateTime fecha { get; set; }
    }
}