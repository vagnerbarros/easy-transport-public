package reclame.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reclame.entidades.Usuario;
import reclame.fachada.Fachada;

public class Logar implements Acao{

	public String executar(HttpServletRequest request, HttpServletResponse response) {
		String login = request.getParameter("email");
		String senha = request.getParameter("senha");
		Fachada fachada = Fachada.getInstance();
		
		Usuario usuario = fachada.cadastroUsuario().logar(login, senha);
		if(usuario != null){			
			request.getSession().setAttribute("usuario", usuario);
			return "/home.jsp";
		}else{
			return "/Index.jsp";
		}
	}
}
