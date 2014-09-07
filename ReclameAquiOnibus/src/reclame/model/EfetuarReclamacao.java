package reclame.model;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reclame.entidades.Empresa;
import reclame.entidades.Reclamacao;
import reclame.entidades.Rota;
import reclame.entidades.Usuario;
import reclame.fachada.Fachada;

public class EfetuarReclamacao implements Acao{

	public String executar(HttpServletRequest request, HttpServletResponse response) {
		
		String id_usuario = request.getParameter("usuario");
		String id_empresa = request.getParameter("empresa");
		String id_rota = request.getParameter("linha");
		String horario = request.getParameter("hora");
		String detalhe = request.getParameter("detalhe");
		String sugestao = request.getParameter("sugestoes");
		
		Reclamacao nova = new Reclamacao();
		nova.setData_reclamacao(new Date());
		nova.setDescricao_reclamacao(detalhe);
		nova.setHora_reclamacao(horario);

		Empresa emp = Fachada.getInstance().cadastroEmpresa().buscarId(Integer.parseInt(id_empresa));
	    Rota rota = Fachada.getInstance().cadastroRota().buscarId(Integer.parseInt(id_rota));
	    Usuario usuario = Fachada.getInstance().cadastroUsuario().buscarId(Integer.parseInt(id_usuario));
	    
	    nova.setEmpresa(emp);
	    nova.setLinha(rota);
	    nova.setUsuario(usuario);

	    String pagina = "reclamacao.jsp";
	    
	    try{
	    	
	    	Fachada.getInstance().cadastroReclamacao().cadastrar(nova);
	    	pagina = "reclamacao.jsp?msg=sucesso";
	    }catch (Exception e) {
			// TODO: handle exception
	    	pagina = "reclamacao.jsp?msg=erro";
		}
	    
		return pagina;
	}
}
