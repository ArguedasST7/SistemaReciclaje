using System.Data;
using System.Data.SqlClient;
using SistemaReciclaje.modelo;

namespace SistemaReciclaje.logica
{
    public class logica_recompensa
    {
        public DataTable ObtenerRecompensas()
        {
            DataTable tabla = new DataTable();

            using (SqlConnection conexion = DBconn.obtenerConexion())
            {
                using (SqlCommand comando = new SqlCommand("sp_Recompensa_Consultar", conexion))
                {
                    comando.CommandType = CommandType.StoredProcedure;

                    SqlDataAdapter adaptador = new SqlDataAdapter(comando);
                    adaptador.Fill(tabla);
                }
            }

            return tabla;
        }

        public void CanjearRecompensa(int usuarioId, int recompensaId)
        {
            using (SqlConnection conexion = DBconn.obtenerConexion())
            {
                using (SqlCommand comando = new SqlCommand("sp_Canje_Insertar", conexion))
                {
                    comando.CommandType = CommandType.StoredProcedure;

                    comando.Parameters.AddWithValue("@usuarioId", usuarioId);
                    comando.Parameters.AddWithValue("@recompensaId", recompensaId);

                    comando.ExecuteNonQuery();
                }
            }
        }
    }
}