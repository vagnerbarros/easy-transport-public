package reclame.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reclame.entidades.Onibus;
import reclame.fachada.Fachada;

public class EditarOnibus implements Acao{

	@Override
	public String executar(HttpServletRequest request, HttpServletResponse response) {
		
		String idOnibus = request.getParameter("id");
		String novoNumero = request.getParameter("numero");
		
		String paginaRetorno = "";
		try{
			
			Onibus o = Fachada.getInstance().cadastroOnibus().buscarId(Integer.parseInt(idOnibus));
			o.setNumero(novoNumero);
			
			Fachada.getInstance().cadastroOnibus().atualizar(o);
			
			paginaRetorno = "adm_onibus.jsp?msg=sucesso";
		}
		catch(Exception e){
			paginaRetorno = "adm_onibus.jsp?msg=erro";
		}
		
		return paginaRetorno;
	}

}
