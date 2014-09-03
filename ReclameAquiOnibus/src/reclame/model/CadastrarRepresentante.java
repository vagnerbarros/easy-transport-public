package reclame.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reclame.entidades.Usuario;
import reclame.fachada.Fachada;

public class CadastrarRepresentante implements Acao{

	@Override
	public String executar(HttpServletRequest request, HttpServletResponse response) {
		
String pagina = "";
		
		String email = request.getParameter("email");
		String nome = request.getParameter("nome");
		String cpf= request.getParameter("cpf");
		String senha = request.getParameter("senha");
		
		Usuario u = new Usuario();
		u.setEmail(email);
		u.setNome(nome);
		u.setCpf(cpf);
		u.setSenha(senha);
		
		try{
		
			Fachada.getInstance().cadastroUsuario().cadastrarRepresentante(u);
			pagina = "adm_usuario.jsp?msg=sucesso";
		}
		catch(Exception e){
			pagina = "adm_usuario.jsp?msg=Erro no cadastro.";
		}
		return pagina;
	}
	

}
