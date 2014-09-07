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
	
	public void cadastrarAdmin(Usuario novo){
		String senha = Criptografia.encryptPassword(novo.getSenha());
		novo.setTipo(TipoUsuario.ADMIN);
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

	public Usuario logar(String email, String senha) {
		senha = Criptografia.encryptPassword(senha);
		return rep.logar(email, senha);
	}

	public Usuario buscarLogin(String login) {
		return rep.buscarPorLogin(login);
	}
	
	public Usuario buscarId(int id){
		return rep.buscarPorId(id);
	}
}
// Buscar usuário por CPF
