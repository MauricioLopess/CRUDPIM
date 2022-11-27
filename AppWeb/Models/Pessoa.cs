namespace AppWeb.Models
{
    public class Pessoa
    {
        protected int IdPessoa { get; set; }
        public string NomePessoa { get; set; }
        public long Cpf { get; set; }
        public Endereco Endereco { get; set; }
        public Telefone Telefone { get; set; }
    }

   
}