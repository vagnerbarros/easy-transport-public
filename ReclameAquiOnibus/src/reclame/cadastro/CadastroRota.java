package reclame.cadastro;

import java.util.List;

import reclame.entidades.Rota;
import reclame.repositorio.RepositorioRota;

public class CadastroRota {

	private RepositorioRota rep;
	
	public CadastroRota(RepositorioRota rep){
		this.rep = rep;
	}
	
	public Rota buscarId(long id){
		return rep.buscarPorId(id);
	}
	
	public void cadastrar(Rota nova){
		rep.inserir(nova);
	}
	
	public void atualizar(Rota atual){
		rep.atualizar(atual);
	}
	
	public void remover(Rota deletado){
		rep.remover(deletado);
	}
	
	public List<Rota> listar(){
		return rep.listar();
	}
}
