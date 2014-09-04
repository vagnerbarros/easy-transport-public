package reclame.cadastro;

import java.util.List;

import reclame.entidades.Empresa;
import reclame.repositorio.RepositorioEmpresa;
import reclame.util.Criptografia;

public class CadastroEmpresa {

	private RepositorioEmpresa rep;
	
	public CadastroEmpresa(RepositorioEmpresa rep){
		this.rep = rep;
	}
	
	public void cadastrar(Empresa nova){
		String senha = Criptografia.encryptPassword(nova.getSenha());
		nova.setSenha(senha);
		rep.inserir(nova);
	}
	
	public Empresa buscarId(int id){
		return rep.buscarPorId(id);
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
