using System.Data;
using System.Data.SqlClient;
using SistemaReciclaje.modelo;

namespace SistemaReciclaje.logica
{
    public class logica_tipo
    {
        public DataTable ObtenerTipos()
        {
            DataTable tabla = new DataTable();

            using (SqlConnection conexion = DBconn.obtenerConexion())
            {
                using (SqlCommand comando = new SqlCommand("sp_TipoMaterial_Consultar", conexion))
                {
                    comando.CommandType = CommandType.StoredProcedure;

                    SqlDataAdapter adaptador = new SqlDataAdapter(comando);
                    adaptador.Fill(tabla);
                }
            }

            return tabla;
        }
        public void AgregarTipo(string nombre, string descripcion)
        {
            using (SqlConnection conexion = DBconn.obtenerConexion())
            {
                using (SqlCommand comando = new SqlCommand("sp_TipoMaterial_Insertar", conexion))
                {
                    comando.CommandType = CommandType.StoredProcedure;

                    comando.Parameters.AddWithValue("@nombre", nombre);
                    comando.Parameters.AddWithValue("@descripcion", descripcion);

                    comando.ExecuteNonQuery();
                }
            }
        }
    }
}
    