package reclame.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reclame.entidades.Empresa;
import reclame.entidades.Rota;
import reclame.fachada.Fachada;

public class CadastrarRota implements Acao{

	@Override
	public String executar(HttpServletRequest request, HttpServletResponse response) {
		
		String pagina = "";
		
		String nome = request.getParameter("rota");
		String id_empresa = request.getParameter("empresa");
		
		Empresa emp = Fachada.getInstance().cadastroEmpresa().buscarId(Integer.parseInt(id_empresa));
		
		Rota rota = new Rota();
		rota.setEmpresa(emp);
		rota.setNome(nome);
		
		
		try{
		
			Fachada.getInstance().cadastroRota().cadastrar(rota);
			pagina = "adm_rota.jsp?msg=sucesso";
		}
		catch(Exception e){
			pagina = "adm_rota.jsp?msg=Erro no cadastro.";
		}
		return pagina;
	}
}
