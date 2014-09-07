package reclame.repositorio;

import java.util.List;

import reclame.dao.Dao;
import reclame.dominio.TipoUsuario;
import reclame.entidades.Usuario;
import reclame.util.Constants;

public class RepositorioUsuario {

	private Dao dao;
	
	public RepositorioUsuario(){
		if(dao == null){
			dao = Dao.getInstance();
		}
	}
	
	public void inserir(Usuario novo){
		novo.setStatus(Constants.ATIVO);
		dao.salvarObjeto(novo);
	}
	
	public void atualizar(Usuario atual){
		dao.atualizarObjeto(atual);
	}
	
	public List<Usuario> listar(){
		return (List<Usuario>) dao.criarQuery("FROM usuario WHERE status <> '" + Constants.INATIVO + "'");
	}
	
	public Usuario buscarPorId(long id){
		List<Usuario> lista = (List<Usuario>) dao.criarQuery("FROM usuario WHERE id = " + id);
		if(lista != null){
			return lista.get(0);
		}
		else{
			return null;
		} 
	}
	
	public void remover(Usuario del){
		del.setStatus(Constants.INATIVO);
		dao.atualizarObjeto(del);
	}

	public Usuario logar(String email, String senha) {
		List<Usuario> lista = (List<Usuario>)dao.criarQuery("FROM usuario where email LIKE '"+ email +"' AND senha LIKE '"+ senha +"'  AND status <> '" + Constants.INATIVO + "'");
		if(!lista.isEmpty()){
			return lista.get(0);
		}
		else{
			return null;
		}
	}

	public Usuario buscarPorLogin(String login) {
		List<Usuario> lista = (List<Usuario>) dao.criarQuery("FROM usuario WHERE login LIKE '" + login + "' AND status <> '" + Constants.INATIVO + "'");
		if(lista != null){
			return lista.get(0);
		}
		else{
			return null;
		}
	}
}
