package reclame.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reclame.entidades.Usuario;
import reclame.fachada.Fachada;

public class CadastrarUsuario implements Acao{

	@Override
	public String executar(HttpServletRequest request, HttpServletResponse response) {
		
		String pagina = "";
		
		String email = request.getParameter("email");
		String nome = request.getParameter("nome");
		String cpf= request.getParameter("cpf");
		String senha = request.getParameter("senha");
		String sexo  = request.getParameter("sexo");
		String idade = request.getParameter("idade");
		String endereco = request.getParameter("endereco");
		
		Usuario u = new Usuario();
		u.setEmail(email);
		u.setNome(nome);
		u.setCpf(cpf);
		u.setSenha(senha);
		u.setSexo(sexo);
		u.setIdade(idade);
		u.setEndereco(endereco);
		
		
		try{
		
			Fachada.getInstance().cadastroUsuario().cadastrar(u);
			pagina = "Index.jsp?msg=sucesso";
		}
		catch(Exception e){
			pagina = "cadastro.jsp?msg=Erro no cadastro.";
		}
		return pagina;
	}
}
