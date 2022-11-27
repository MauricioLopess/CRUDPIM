<%@ Page Title="Página inicial" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="AppWeb._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h2 align="center" style="height: 51px">Insira suas informações para realizar o cadastro</h2>
        <form>

            <table class="nav-justified" style="height: 377px">
                <tr>
                    <td class="modal-sm" style="width: 257px; height: 45px;"></td>
                    <td style="width: 99px; font-size: large; height: 45px; text-align: rigth;" dir="ltr">Nome:</td>
                    <td style="width: 226px; height: 45px;">
                        <asp:TextBox ID="txtNome" runat="server" Width="210px" CssClass="form-control" Height="30px"></asp:TextBox>
                    </td>
                    <td class="modal-sm" style="width: 74px; height: 45px; font-size: large;"></td>
                    <td style="height: 45px">&nbsp;</td>
                </tr>
                <tr>
                    <td class="modal-sm" style="width: 257px; height: 45px;"></td>
                    <td style="width: 99px; font-size: large; height: 45px; text-align: rigth;" dir="ltr">CPF:</td>
                    <td style="width: 226px; height: 45px;">
                        <asp:TextBox ID="txtCPF" runat="server" Width="121px" CssClass="form-control" Height="30px"></asp:TextBox>
                    </td>
                    <td class="modal-sm" style="width: 74px; height: 45px; font-size: large;"></td>
                    <td style="height: 45px"></td>
                </tr>
                <tr>
                    <td class="modal-sm" style="width: 257px; height: 45px;"></td>
                    <td style="width: 99px; font-size: large; height: 45px; text-align: rigth;" dir="ltr">DDD:</td>
                    <td style="width: 226px; height: 45px;">
                        <asp:TextBox ID="txtDDD" runat="server" Width="49px" CssClass="form-control" Height="30px"></asp:TextBox>
                    </td>
                    <td style="width: 74px; font-size: large; height: 45px; text-align: rigth;" dir="ltr">Telefone:</td>
                    <td style="height: 45px">
                        <asp:TextBox ID="txtTelefone" runat="server" Width="165px" CssClass="form-control" Height="30px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="modal-sm" style="width: 257px; height: 45px;"></td>
                    <td style="width: 99px; font-size: large; height: 45px; text-align: rigth;" dir="ltr">Tipo:</td>
                    <td style="width: 226px; height: 45px;">
                        <asp:TextBox ID="txtTpTelefone" runat="server" Width="140px" CssClass="form-control" Height="30px"></asp:TextBox>
                    </td>
                    <td class="modal-sm" style="width: 74px; height: 45px; font-size: large;"></td>
                    <td style="height: 45px"></td>
                </tr>
                <tr>
                    <td class="modal-sm" style="width: 257px; height: 45px;"></td>
                    <td style="width: 99px; font-size: large; height: 45px; text-align: rigth;" dir="ltr">Estado:</td>
                    <td style="width: 226px; height: 45px;">
                        <asp:TextBox ID="txtEstado" runat="server" Width="130px" CssClass="form-control" Height="30px"></asp:TextBox>
                    </td>
                    <td class="modal-sm" style="width: 74px; height: 45px; font-size: large;" align="right">CEP:</td>
                    <td style="height: 45px">
                        <asp:TextBox ID="txtCEP" runat="server" Width="165px" CssClass="form-control" Height="30px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="modal-sm" style="width: 257px; height: 45px;"></td>
                    <td style="width: 99px; font-size: large; height: 45px; text-align: rigth;" dir="ltr">Cidade:</td>
                    <td style="width: 226px; height: 45px;">
                        <asp:TextBox ID="txtCidade" runat="server" Width="200px" CssClass="form-control" Height="30px"></asp:TextBox>
                    </td>
                    <td class="modal-sm" style="width: 74px; height: 45px; font-size: large;"></td>
                    <td style="height: 45px"></td>
                </tr>
                <tr>
                    <td class="modal-sm" style="width: 257px; height: 45px;"></td>
                    <td style="width: 99px; font-size: large; height: 45px; text-align: rigth;" dir="ltr">Logradouro:</td>
                    <td style="width: 226px; height: 45px;">
                        <asp:TextBox ID="txtLogradouro" runat="server" Width="200px" CssClass="form-control" Height="30px"></asp:TextBox>
                    </td>
                    <td class="modal-sm" style="width: 74px; height: 45px; font-size: large;" align="right">N°:</td>
                    <td style="height: 45px">
                        <asp:TextBox ID="txtNumCasa" runat="server" Width="76px" CssClass="form-control" Height="30px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="modal-sm" style="width: 257px; height: 45px;">&nbsp;</td>
                    <td style="width: 99px; font-size: large; height: 45px; text-align: rigth;" dir="ltr">Bairro:</td>
                    <td style="width: 226px; height: 45px;">
                        <asp:TextBox ID="txtBairro" runat="server" Width="200px" CssClass="form-control" Height="30px"></asp:TextBox>
                    </td>
                    <td class="modal-sm" style="width: 74px; height: 45px; font-size: large;"></td>
                    <td style="height: 45px">&nbsp;</td>
                </tr>
                <tr>
                    <td class="modal-sm" style="width: 257px; height: 25px;"></td>
                    <td style="width: 99px; font-size: large; height: 25px; text-align: rigth;" dir="ltr"></td>
                    <td style="width: 226px; height: 25px;">&nbsp;&nbsp;</td>
                    <td class="modal-sm" style="width: 74px; height: 25px; font-size: large;"></td>
                    <td style="height: 25px"></td>
                </tr>
                <tr>
                    <td class="modal-sm" style="height: 45px; text-align: center;" colspan="5">
                        <asp:Button CssClass="btn btn-primary btn-lg" ID="btnInserir" runat="server" Text="Inserir" Width="127px" OnClick="btnInserir_Click" />
                        &nbsp;
                        <asp:Button CssClass="btn btn-primary btn-lg" ID="btnAlterar" runat="server" Text="Alterar" Width="127px" OnClick="btnAlterar_Click" />
                        &nbsp;
                        <asp:Button CssClass="btn btn-danger btn-lg" ID="btnDeletar" runat="server" Text="Deletar" Width="127px" OnClick="btnDeletar_Click" />
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="modal-sm" style="height: 45px; text-align: center;" colspan="5">
                        <asp:GridView ID="GridView1" runat="server" Width="705px" HorizontalAlign="Center" Height="192px">
                        </asp:GridView>
                    </td>
                </tr>
            </table>

        </form>
    </div>


</asp:Content>
