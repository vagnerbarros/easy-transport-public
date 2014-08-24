package reclame.repositorio;

import java.util.List;

import reclame.util.Constants;
import reclame.dao.Dao;
import reclame.entidades.Onibus;
import reclame.entidades.Rota;



public class RepositorioOnibus {

	private Dao dao;
	
	public RepositorioOnibus(){
		if(dao == null){
			dao = Dao.getInstance();
		}
	}
	
	public void inserir(Onibus nova){
		nova.setStatus(Constants.ATIVO);
		dao.salvarObjeto(nova);
	}
	
	public void atualizar(Onibus atual){
		dao.atualizarObjeto(atual);
	}
	
	public List<Onibus> listar(){
		return (List<Onibus>) dao.criarQuery("FROM onibus WHERE status <> '" + Constants.INATIVO + "'");
	}
	
	public Onibus buscarPorId(long id){
		List<Onibus> lista = (List<Onibus>) dao.criarQuery("FROM onibus WHERE id = " + id);
		if(lista != null){
			return lista.get(0);
		}
		else{
			return null;
		} 
	}
	
	public void remover(Onibus del){
		del.setStatus(Constants.INATIVO);
		dao.atualizarObjeto(del);
	}
}