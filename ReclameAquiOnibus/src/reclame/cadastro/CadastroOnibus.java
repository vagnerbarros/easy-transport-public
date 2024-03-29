package reclame.cadastro;

import java.util.List;

import reclame.entidades.Empresa;
import reclame.entidades.Onibus;
import reclame.entidades.Usuario;
import reclame.repositorio.RepositorioEmpresa;
import reclame.repositorio.RepositorioOnibus;
import reclame.util.Criptografia;

public class CadastroOnibus {

	private RepositorioOnibus rep;
	
	public CadastroOnibus(RepositorioOnibus rep){
		this.rep = rep;
	}
	
	public void cadastrar(Onibus nova){
		rep.inserir(nova);
	}
	
	public Onibus buscarId(int id){
		return rep.buscarPorId(id);
	}
	
	public void atualizar(Onibus atual){
		rep.atualizar(atual);
	}
	
	public void remover(Onibus deletado){
		rep.remover(deletado);
	}
	
	public List<Onibus> listar(){
		return rep.listar();
	}
	
	public List<Onibus> listarOnibusRota(int idRota){
		return rep.listarOnibusRota(idRota);
	}
}
