package reclame.fachada;

import reclame.cadastro.CadastroEmpresa;
import reclame.cadastro.CadastroOnibus;
import reclame.cadastro.CadastroRota;
import reclame.cadastro.CadastroUsuario;
import reclame.repositorio.RepositorioEmpresa;
import reclame.repositorio.RepositorioOnibus;
import reclame.repositorio.RepositorioRota;
import reclame.repositorio.RepositorioUsuario;

public class Fachada {

	private static Fachada instancia;
	private CadastroUsuario cadUsuario;
	private CadastroEmpresa cadEmpresa;
	private CadastroRota cadRota;
	private CadastroOnibus cadOnibus;
	
	
	private Fachada(){
		inicializar();
	}
	
	private void inicializar(){
		
		RepositorioUsuario repUsuario = new RepositorioUsuario();
		cadUsuario = new CadastroUsuario(repUsuario);
		
		RepositorioEmpresa repEmpresa = new RepositorioEmpresa();
		cadEmpresa = new CadastroEmpresa(repEmpresa);
		
		RepositorioRota repRota = new RepositorioRota();
		cadRota = new CadastroRota(repRota);

		RepositorioOnibus repOnibus = new RepositorioOnibus();
		cadOnibus = new CadastroOnibus(repOnibus);
	}
	
	public static Fachada getInstance(){
		
		if(instancia == null){
			instancia = new Fachada();
		}
		return instancia;
	}
	
	public CadastroUsuario cadastroUsuario(){
		return cadUsuario;
	}
	
	public CadastroEmpresa cadastroEmpresa(){
		return cadEmpresa;
	}
	
	public CadastroRota cadastroRota(){
		return cadRota;
	}
	
	public CadastroOnibus cadastroOnibus(){
		return cadOnibus;
	}
}