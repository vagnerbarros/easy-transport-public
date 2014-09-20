package reclame.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reclame.entidades.Onibus;
import reclame.fachada.Fachada;

public class RemoverOnibus implements Acao{

	@Override
	public String executar(HttpServletRequest request, HttpServletResponse response) {
		
		String idOnibus = request.getParameter("id");
		
		String paginaRetorno = "";
		try{
			
			Onibus o = Fachada.getInstance().cadastroOnibus().buscarId(Integer.parseInt(idOnibus));
			
			Fachada.getInstance().cadastroOnibus().remover(o);
			
			paginaRetorno = "adm_onibus.jsp?msg=sucesso";
		}
		catch(Exception e){
			paginaRetorno = "adm_onibus.jsp?msg=erro";
		}
		
		return paginaRetorno;
	}

}
