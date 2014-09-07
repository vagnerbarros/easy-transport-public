package reclame.repositorio;

import java.util.List;

import reclame.dao.Dao;
import reclame.entidades.Empresa;
import reclame.entidades.Usuario;
import reclame.util.Constants;

public class RepositorioEmpresa {

	private Dao dao;
	
	public RepositorioEmpresa(){
		if(dao == null){
			dao = Dao.getInstance();
		}
	}
	
	public void inserir(Empresa nova){
		nova.setStatus(Constants.ATIVO);
		dao.salvarObjeto(nova);
	}
	
	public void atualizar(Empresa atual){
		dao.atualizarObjeto(atual);
	}
	
	public List<Empresa> listar(){
		return (List<Empresa>) dao.criarQuery("FROM empresa WHERE status <> '" + Constants.INATIVO + "'");
	}
	
	public Empresa buscarPorId(long id){
		List<Empresa> lista = (List<Empresa>) dao.criarQuery("FROM empresa WHERE id = " + id);
		if(lista != null){
			return lista.get(0);
		}
		else{
			return null;
		} 
	}
	
	public Empresa logar(String email, String senha) {
		List<Empresa> lista = (List<Empresa>)dao.criarQuery("FROM empresa where email LIKE '"+ email +"' AND senha LIKE '"+ senha +"'  AND status <> '" + Constants.INATIVO + "'");
		if(!lista.isEmpty()){
			return lista.get(0);
		}
		else{
			return null;
		}
	}
	
	public void remover(Empresa del){
		del.setStatus(Constants.INATIVO);
		dao.atualizarObjeto(del);
	}
}
