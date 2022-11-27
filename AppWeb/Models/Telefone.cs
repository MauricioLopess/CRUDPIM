namespace AppWeb.Models
{
    public class Telefone
    {
        protected int IdTelefone { get; set; }
        public int NumTelefone { get; set; }
        public int DDD { get; set; }
        public TipoTelefone TpTelefone { get; set; }
    }
}