package reclame.repositorio;

import java.util.List;

import reclame.dao.Dao;
import reclame.entidades.Reclamacao;
import reclame.entidades.Rota;
import reclame.util.Constants;

public class RepositorioReclamacao {

	private Dao dao;
	
	public RepositorioReclamacao(){
		if(dao == null){
			dao = Dao.getInstance();
		}
	}
	
	public void inserir(Reclamacao nova){
		nova.setStatus(Constants.ATIVO);
		dao.salvarObjeto(nova);
	}
	
	public void atualizar(Reclamacao atual){
		dao.atualizarObjeto(atual);
	}
	
	public List<Reclamacao> listar(){
		return (List<Reclamacao>) dao.criarQuery("FROM reclamacao WHERE status <> '" + Constants.INATIVO + "'");
	}
	
	public Reclamacao buscarPorId(long id){
		List<Reclamacao> lista = (List<Reclamacao>) dao.criarQuery("FROM reclamacao WHERE id = " + id);
		if(lista != null){
			return lista.get(0);
		}
		else{
			return null;
		} 
	}
	
	public void remover(Reclamacao del){
		del.setStatus(Constants.INATIVO);
		dao.atualizarObjeto(del);
	}
}