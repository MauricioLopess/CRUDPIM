using System;
using AppWeb.Models;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;

namespace AppWeb
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CarregarGrid();
            }
        }

        protected void btnInserir_Click(object sender, EventArgs e)
        {
            Pessoa p = new Pessoa();
            p.Endereco = new Endereco();
            p.Telefone = new Telefone();
            p.Telefone.TpTelefone = new TipoTelefone();

            p.NomePessoa = txtNome.Text;
            p.Cpf = long.Parse(txtCPF.Text);


            p.Endereco.Logradouro = txtLogradouro.Text;
            p.Endereco.NumEndereco = int.Parse(txtNumCasa.Text);
            p.Endereco.Cep = int.Parse(txtCEP.Text);
            p.Endereco.Bairro = txtBairro.Text;
            p.Endereco.Cidade = txtCidade.Text;
            p.Endereco.Estado = txtEstado.Text;

            p.Telefone.NumTelefone = int.Parse(txtTelefone.Text);
            p.Telefone.DDD = int.Parse(txtDDD.Text);
            p.Telefone.TpTelefone.Tipo = txtTpTelefone.Text;

            PessoaDAO.Inserir(p);
            CarregarGrid();
        }

        protected void btnDeletar_Click(object sender, EventArgs e)
        {
            Pessoa p = new Pessoa();
            p.Cpf = long.Parse(txtCPF.Text);
            PessoaDAO.Exclua(p);
            CarregarGrid();
        }

        protected void btnAlterar_Click(object sender, EventArgs e)
        {
            Pessoa p ; p = new Pessoa();
            
            PessoaDAO.Altere(p);
            CarregarGrid();
        }
        SqlConnection Connection = new SqlConnection(@"Data Source=MAURICIO\SQLEXPRESS;Initial Catalog=DBPIM;Integrated Security=True");

        void CarregarGrid()
        {
            SqlCommand Command = new SqlCommand();
            Command.CommandText = "SELECT tb_Pessoa.nome_pessoa, tb_Pessoa.cpf, tb_Telefone.ddd, tb_Telefone.numero, tb_Endereco.logradouro, " +
                "tb_Endereco.num_casa, tb_Endereco.cep, tb_Endereco.bairro, tb_Endereco.estado FROM tb_Pessoa " +
                "JOIN tb_Telefone ON tb_Pessoa.id_pessoa = tb_Telefone.id_telefone " +
                "JOIN tb_Endereco ON tb_Pessoa.id_pessoa = tb_Endereco.id_Endereco;";
            Command.Connection = Connection;
            SqlDataAdapter d = new SqlDataAdapter(Command);
            DataTable Datatb = new DataTable();
            d.Fill(Datatb);
            GridView1.DataSource = Datatb;
            GridView1.DataBind();
        }

    }
}