package reclame.entidades;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity(name = "usuario")
public class Usuario {

	@Id
	@GeneratedValue
	private int id;
	
	@Column(name = "email", length = 100, nullable = false)
	private String email;
	
	@Column(name = "nome", length = 200, nullable = false)
	private String nome;
	
	@Column(name = "cpf", length = 11, nullable = false)
	private String cpf;
	
	@Column(name = "sexo", length = 1, nullable = true)
	private String sexo;
	
	@Column(name = "idade", length = 3, nullable = true)
	private String idade;
	
	@Column(name = "endereco", length = 200, nullable = true)
	private String endereco;
	
	@Column(name = "senha", length = 50, nullable = false)
	private String senha;
	
	@Column(name = "tipo", length = 1, nullable = false)
	private String tipo;
	
	@Column(name = "status", length = 10, nullable = false)
	private String status;
	
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	public String getIdade() {
		return idade;
	}
	public void setIdade(String idade) {
		this.idade = idade;
	}
	public String getEndereco() {
		return endereco;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}	
	public String getCpf() {
			return cpf;
	}
	public void setCpf(String cpf) {
			this.cpf = cpf;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}
