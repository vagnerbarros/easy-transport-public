package reclame.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reclame.dominio.TipoUsuario;
import reclame.entidades.Usuario;
import reclame.fachada.Fachada;

public class Logar implements Acao{

	public String executar(HttpServletRequest request, HttpServletResponse response) {
		String login = request.getParameter("email");
		String senha = request.getParameter("senha");
		Fachada fachada = Fachada.getInstance();
		
		Usuario usuario = fachada.cadastroUsuario().logar(login, senha);
		if(usuario != null){
			String pagina = "";
			if(usuario.getTipo().equals(TipoUsuario.ADMIN)){
				request.getSession().setAttribute("usuario", usuario);
				pagina = "/adm_home.jsp";
			}
			else{
				request.getSession().setAttribute("usuario", usuario);
				pagina = "/home.jsp";
			}
				
			return pagina;
		}else{
			return "/Index.jsp";
		}
	}
}
