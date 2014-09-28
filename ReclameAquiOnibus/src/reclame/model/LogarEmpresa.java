package reclame.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reclame.entidades.Empresa;
import reclame.fachada.Fachada;

public class LogarEmpresa implements Acao{

	public String executar(HttpServletRequest request, HttpServletResponse response) {
		
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		Fachada fachada = Fachada.getInstance();
		
		Empresa empresa = fachada.cadastroEmpresa().logar(email, senha);
		if(empresa != null){
			request.getSession().setAttribute("empresa_logada", empresa);
				
			return "/emp_responder.jsp";
		}else{
			return "/emp_index.jsp";
		}
	}
}
