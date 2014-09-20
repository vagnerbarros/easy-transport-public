package reclame.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reclame.entidades.Rota;
import reclame.fachada.Fachada;

public class RemoverRota implements Acao{

	@Override
	public String executar(HttpServletRequest request, HttpServletResponse response) {
		
		String idRota = request.getParameter("id");
		
		String paginaRetorno = "";
		try{
			
			Rota r = Fachada.getInstance().cadastroRota().buscarId(Integer.parseInt(idRota));
			
			Fachada.getInstance().cadastroRota().remover(r);
			
			paginaRetorno = "adm_rota.jsp?msg=sucesso";
		}
		catch(Exception e){
			paginaRetorno = "adm_rota.jsp?msg=erro";
		}
		
		return paginaRetorno;
	}

}
