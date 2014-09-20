package reclame.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reclame.entidades.Rota;
import reclame.fachada.Fachada;

public class EditarRota implements Acao {

	@Override
	public String executar(HttpServletRequest request, HttpServletResponse response) {
		
		String idRota = request.getParameter("id");
		String nome = request.getParameter("nome");
		
		String paginaRetorno = "";
		try{
			
			Rota r = Fachada.getInstance().cadastroRota().buscarId(Integer.parseInt(idRota));
			r.setNome(nome);
			
			Fachada.getInstance().cadastroRota().atualizar(r);
			
			paginaRetorno = "adm_rota.jsp?msg=sucesso";
		}
		catch(Exception e){
			paginaRetorno = "adm_rota.jsp?msg=erro";
		}
		
		return paginaRetorno;
	}

}
