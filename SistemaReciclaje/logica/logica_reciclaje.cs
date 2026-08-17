using System.Data;
using System.Data.SqlClient;
using SistemaReciclaje.modelo;

namespace SistemaReciclaje.logica
{
    public class logica_reciclaje
    {
        public DataTable ObtenerReciclajes()
        {
            DataTable tabla = new DataTable();

            using (SqlConnection conexion = DBconn.obtenerConexion())
            {
                using (SqlCommand comando = new SqlCommand("sp_Reciclaje_Consultar", conexion))
                {
                    comando.CommandType = CommandType.StoredProcedure;

                    SqlDataAdapter adaptador = new SqlDataAdapter(comando);
                    adaptador.Fill(tabla);
                }
            }

            return tabla;
        }

        public void AgregarReciclaje(int usuarioId, int tipoMaterialId, decimal cantidad)
        {
            using (SqlConnection conexion = DBconn.obtenerConexion())
            {
                using (SqlCommand comando = new SqlCommand("sp_Reciclaje_Insertar", conexion))
                {
                    comando.CommandType = CommandType.StoredProcedure;

                    comando.Parameters.AddWithValue("@usuarioId", usuarioId);
                    comando.Parameters.AddWithValue("@tipoMaterialId", tipoMaterialId);
                    comando.Parameters.AddWithValue("@cantidad", cantidad);

                    comando.ExecuteNonQuery();
                }
            }
        }
    }
}