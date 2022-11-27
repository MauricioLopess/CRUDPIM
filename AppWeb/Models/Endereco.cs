namespace AppWeb.Models
{
    public class Endereco
    {
        protected int IdEndereco { get; set; }
        public string Logradouro { get; set; }
        public int NumEndereco { get; set; }
        public int Cep { get; set; }
        public string Bairro { get; set; }
        public string Cidade { get; set; }
        public string Estado { get; set; }
    }

}