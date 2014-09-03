package reclame.cadastro;

import java.util.List;

import reclame.dominio.TipoUsuario;
import reclame.entidades.Usuario;
import reclame.repositorio.RepositorioUsuario;
import reclame.util.Criptografia;

public class CadastroUsuario {

	private RepositorioUsuario rep;
	
	public CadastroUsuario(RepositorioUsuario rep){
		this.rep = rep;
	}
	
	public void cadastrar(Usuario novo){
		String senha = Criptografia.encryptPassword(novo.getSenha());
		novo.setTipo(TipoUsuario.COMUN);
		novo.setSenha(senha);
		rep.inserir(novo);
	}
	
	public void cadastrarRepresentante(Usuario novo){
		String senha = Criptografia.encryptPassword(novo.getSenha());
		novo.setTipo(TipoUsuario.REPRESENTANTE);
		novo.setSenha(senha);
		rep.inserir(novo);
	}
	
	public void atualizar(Usuario atual){
		rep.atualizar(atual);
	}
	
	public void remover(Usuario deletado){
		rep.remover(deletado);
	}
	
	public List<Usuario> listar(){
		return rep.listar();
	}
	
	public List<Usuario> listarRepresentantes(){
		return rep.listarRepresentantes();
	}
	

	public Usuario logar(String email, String senha) {
		senha = Criptografia.encryptPassword(senha);
		return rep.logar(email, senha);
	}

	public Usuario buscarLogin(String login) {
		return rep.buscarPorLogin(login);
	}
}
// Buscar usu�rio por CPF
