package reclame.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reclame.entidades.Onibus;
import reclame.entidades.Rota;
import reclame.fachada.Fachada;

public class CadastrarOnibus implements Acao{

	@Override
	public String executar(HttpServletRequest request, HttpServletResponse response) {
		
		String pagina = "";
		
		String numero = request.getParameter("numero");
		String id_rota = request.getParameter("rota");
		
		Rota rota = Fachada.getInstance().cadastroRota().buscarId(Long.parseLong(id_rota));
		
		Onibus onibus = new Onibus();
		onibus.setNumero(numero);
		onibus.setRota(rota);
		
		
		try{
		
			Fachada.getInstance().cadastroOnibus().cadastrar(onibus);
			pagina = "adm_onibus.jsp?msg=sucesso";
		}
		catch(Exception e){
			pagina = "adm_onibus.jsp?msg=Erro no cadastro.";
		}
		return pagina;
	}
}
