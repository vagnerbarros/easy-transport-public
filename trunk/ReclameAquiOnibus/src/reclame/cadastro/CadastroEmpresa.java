package reclame.cadastro;

import java.util.List;

import reclame.entidades.Empresa;
import reclame.entidades.Usuario;
import reclame.repositorio.RepositorioEmpresa;
import reclame.util.Criptografia;

public class CadastroEmpresa {

	private RepositorioEmpresa rep;
	
	public CadastroEmpresa(RepositorioEmpresa rep){
		this.rep = rep;
	}
	
	public void cadastrar(Empresa nova){
		rep.inserir(nova);
	}
	
	public void atualizar(Empresa atual){
		rep.atualizar(atual);
	}
	
	public void remover(Empresa deletado){
		rep.remover(deletado);
	}
	
	public List<Empresa> listar(){
		return rep.listar();
	}
}
