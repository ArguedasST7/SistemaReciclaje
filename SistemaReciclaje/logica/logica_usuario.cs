using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using SistemaReciclaje.modelo;

namespace SistemaReciclaje.logica
{
    public class logica_usuario
    {
        public static List<cls_usuario> ObtenerUsuarios()
        {
            List<cls_usuario> lista = new List<cls_usuario>();

            SqlConnection conexion = DBconn.obtenerConexion();

            SqlCommand comando = new SqlCommand("sp_Usuario_Consultar", conexion);
            comando.CommandType = System.Data.CommandType.StoredProcedure;

            SqlDataReader lector = comando.ExecuteReader();

            while (lector.Read())
            {
                cls_usuario usuario = new cls_usuario();

                usuario.id = Convert.ToInt32(lector["id"]);
                usuario.nombre = lector["nombre"].ToString();
                usuario.correo = lector["correo"].ToString();
                usuario.puntos = Convert.ToInt32(lector["puntos"]);

                lista.Add(usuario);
            }

            conexion.Close();

            return lista;
        }

        public static int AgregarUsuario(string nombre, string correo)
        {
            SqlConnection conexion = DBconn.obtenerConexion();

            SqlCommand comando = new SqlCommand("sp_Usuario_Insertar", conexion);
            comando.CommandType = System.Data.CommandType.StoredProcedure;

            comando.Parameters.AddWithValue("@nombre", nombre);
            comando.Parameters.AddWithValue("@correo", correo);

            int resultado = comando.ExecuteNonQuery();

            conexion.Close();

            return resultado;
        }
    }
}