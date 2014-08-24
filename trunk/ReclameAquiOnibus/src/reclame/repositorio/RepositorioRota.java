package reclame.repositorio;

import java.util.List;
import reclame.util.Constants;
import reclame.dao.Dao;
import reclame.entidades.Rota;



public class RepositorioRota {

	private Dao dao;
	
	public RepositorioRota(){
		if(dao == null){
			dao = Dao.getInstance();
		}
	}
	
	public void inserir(Rota nova){
		nova.setStatus(Constants.ATIVO);
		dao.salvarObjeto(nova);
	}
	
	public void atualizar(Rota atual){
		dao.atualizarObjeto(atual);
	}
	
	public List<Rota> listar(){
		return (List<Rota>) dao.criarQuery("FROM rota WHERE status <> '" + Constants.INATIVO + "'");
	}
	
	public Rota buscarPorId(long id){
		List<Rota> lista = (List<Rota>) dao.criarQuery("FROM rota WHERE id = " + id);
		if(lista != null){
			return lista.get(0);
		}
		else{
			return null;
		} 
	}
	
	public void remover(Rota del){
		del.setStatus(Constants.INATIVO);
		dao.atualizarObjeto(del);
	}
}