using System.Data.SqlClient;

namespace AppWeb.Models
{
    public class PessoaDAO
    {
        //Método inserir
        public static bool Inserir(Pessoa p)
        {
            SqlConnection Connection = new SqlConnection(@"Data Source=MAURICIO\SQLEXPRESS;Initial Catalog=DBPIM;Integrated Security=True");
            SqlCommand Command = new SqlCommand();
            Command.Connection = Connection;
            Connection.Open();

            Command.CommandText = $"INSERT INTO tb_Endereco (logradouro, num_casa, cep, bairro, cidade, estado) " +
                $"VALUES ('{p.Endereco.Logradouro}', {p.Endereco.NumEndereco}, {p.Endereco.Cep}, '{p.Endereco.Bairro}', '{p.Endereco.Cidade}', '{p.Endereco.Estado}');";
            Command.ExecuteNonQuery();

            Command.CommandText = $"INSERT INTO tb_Pessoa (nome_pessoa, cpf) VALUES ('{p.NomePessoa}', {p.Cpf});";
            Command.ExecuteNonQuery();

            Command.CommandText = $"INSERT INTO tb_Telefone (numero, ddd) VALUES ({p.Telefone.NumTelefone}, {p.Telefone.DDD});";
            Command.ExecuteNonQuery();

            Command.CommandText = $"INSERT INTO tb_Telefone_tipo (tipo) VALUES ('{p.Telefone.TpTelefone.Tipo}');";
            Command.ExecuteNonQuery();
            Connection.Close();
            return true;
        }

        //Método alterar
        public static bool Altere(Pessoa p)
        {
            SqlConnection Connection = new SqlConnection(@"Data Source=MAURICIO\SQLEXPRESS;Initial Catalog=DBPIM;Integrated Security=True");
            SqlCommand Command = new SqlCommand();
            Command.Connection = Connection;
            Connection.Open();
            
            
            Command.CommandText = $"UPDATE tb_Endereco SET logradouro = '{p.Endereco.Logradouro}', num_casa = {p.Endereco.NumEndereco}, " +
                $"cep = {p.Endereco.Cep}, bairro = {p.Endereco.Bairro}, cidade = {p.Endereco.Cidade}, estado = {p.Endereco.Estado} WHERE cpf = {p.Cpf};";
            Command.ExecuteNonQuery();

            Command.CommandText = $"UPDATE tb_Pessoa SET nome_pessoa = '{p.NomePessoa}' WHERE cpf = {p.Cpf};";
            Command.ExecuteNonQuery();

            Command.CommandText = $"UPDATE tb_Telefone SET numero = {p.Telefone.NumTelefone}, ddd = {p.Telefone.DDD} WHERE cpf = {p.Cpf};";
            Command.ExecuteNonQuery();

            Command.CommandText = $"UPDATE tb_Telefone_tipo (tipo = '{p.Telefone.TpTelefone.Tipo}' WHERE cpf = {p.Cpf};";
            Command.ExecuteNonQuery();
            Connection.Close();
            return true;
            
        }

        //Método excluir
        public static bool Exclua(Pessoa p)
        {
            SqlConnection Connection = new SqlConnection(@"Data Source=MAURICIO\SQLEXPRESS;Initial Catalog=DBPIM;Integrated Security=True");
            SqlCommand Command = new SqlCommand();
            Command.Connection = Connection;
            Connection.Open();

            Command.CommandText = $"DELETE FROM tb_Pessoa WHERE cpf = {p.Cpf};";
            Command.ExecuteNonQuery();
            return true;
        }
    }
}



