using System.Data.SqlClient;

namespace AppWeb.Models
{
    public class DataAcess
    {
        SqlConnection cnt = new SqlConnection();

        //Construtor
        public DataAcess()
        {
            cnt.ConnectionString = @"Data Source=HP\SQLEXPRESS;Initial Catalog=PIMDB;Integrated Security=True";
        }

        //Método conectar
        public SqlConnection Conect()
        {
            if (cnt.State == System.Data.ConnectionState.Closed)
            {
                cnt.Open();
            }
            return cnt;
        }

        //Método desconectar
        public void Desconect()
        {
            if (cnt.State == System.Data.ConnectionState.Open)
            {
                cnt.Close();
            }
        }

    }
}