package reclame.cadastro;

import java.util.List;

import reclame.entidades.Empresa;
import reclame.entidades.Reclamacao;
import reclame.repositorio.RepositorioReclamacao;

public class CadastroReclamacao {

	private RepositorioReclamacao rep;
	
	public CadastroReclamacao(RepositorioReclamacao rep){
		this.rep = rep;
	}
	
	public void cadastrar(Reclamacao nova){
		rep.inserir(nova);
	}
	
	public Reclamacao buscarId(int id){
		return rep.buscarPorId(id);
	}
	
	public void atualizar(Reclamacao atual){
		rep.atualizar(atual);
	}
	
	public void remover(Reclamacao deletado){
		rep.remover(deletado);
	}
	
	public List<Reclamacao> listar(){
		return rep.listar();
	}
	
	public List<Reclamacao> listarReclamacoesEmpresa(int id_empresa){
		return rep.listarReclamacoesEmpresa(id_empresa);
	}
}
