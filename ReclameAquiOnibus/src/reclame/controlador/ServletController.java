package reclame.controlador;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reclame.model.Acao;
import reclame.model.CadastrarEmpresa;
import reclame.model.CadastrarOnibus;
import reclame.model.CadastrarRepresentante;
import reclame.model.CadastrarRota;
import reclame.model.CadastrarUsuario;
import reclame.model.EditarEmpresa;
import reclame.model.EditarOnibus;
import reclame.model.EditarRota;
import reclame.model.EfetuarReclamacao;
import reclame.model.LocalizarOnibus;
import reclame.model.Logar;
import reclame.model.LogarEmpresa;
import reclame.model.Logout;
import reclame.model.RemoverEmpresa;
import reclame.model.RemoverOnibus;
import reclame.model.RemoverRota;


/**
 * Servlet implementation class Servlet
 */
@WebServlet("/controlador")
public class ServletController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private Map<String, Acao> mapa;

	public ServletController() {
		super();
		mapa = new HashMap<String, Acao>();
	}
	
	@Override
	public void init() throws ServletException {
		super.init();
		mapa.put("logar", new Logar());
		mapa.put("cadastrar", new CadastrarUsuario());
		mapa.put("cadastrar_representante", new CadastrarRepresentante());
		mapa.put("cadastrar_empresa", new CadastrarEmpresa());
		mapa.put("cadastrar_rota", new CadastrarRota());
		mapa.put("cadastrar_onibus", new CadastrarOnibus());
		mapa.put("logout", new Logout());
		mapa.put("efetuar_reclamacao", new EfetuarReclamacao());
		mapa.put("logar_empresa", new LogarEmpresa());
		mapa.put("editar_onibus", new EditarOnibus());
		mapa.put("deletar_onibus", new RemoverOnibus());
		mapa.put("editar_empresa", new EditarEmpresa());
		mapa.put("deletar_empresa", new RemoverEmpresa());
		mapa.put("editar_rota", new EditarRota());
		mapa.put("deletar_rota", new RemoverRota());
		mapa.put("localizar_onibus", new LocalizarOnibus());
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String acao = request.getParameter("acao");
		Acao classeAcao = buscarAcao(acao);
		String proximaPagina = classeAcao.executar(request, response);
		if(!proximaPagina.equals("")){
			RequestDispatcher dispatcher = request.getRequestDispatcher(proximaPagina);
			dispatcher.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	private Acao buscarAcao(String acao) {
		Acao resultado = mapa.get(acao);
		if (resultado == null) {
			resultado = mapa.get("erro");
		}
		return resultado;
	}
}
