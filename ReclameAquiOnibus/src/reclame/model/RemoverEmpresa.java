package reclame.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reclame.entidades.Empresa;
import reclame.fachada.Fachada;

public class RemoverEmpresa implements Acao{

	@Override
	public String executar(HttpServletRequest request, HttpServletResponse response) {
		
		String idEmpresa = request.getParameter("id");
		
		String paginaRetorno = "";
		try{
			
			Empresa e = Fachada.getInstance().cadastroEmpresa().buscarId(Integer.parseInt(idEmpresa));
			
			Fachada.getInstance().cadastroEmpresa().remover(e);
			
			paginaRetorno = "adm_empresa.jsp?msg=sucesso";
		}
		catch(Exception e){
			paginaRetorno = "adm_empresa.jsp?msg=erro";
		}
		
		return paginaRetorno;
	}

}
