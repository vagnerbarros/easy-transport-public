package reclame.entidades;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity(name = "empresa")
public class Empresa {

	@Id
	@GeneratedValue
	private int id;
	
	@Column(name = "cnpj", length = 14, nullable = false)
	private String cnpj;
	
	@Column(name = "razao", length = 200, nullable = false)
	private String razao;
	
	@Column(name = "email", length = 50, nullable = false)
	private String email;
	
	@Column(name = "senha", length = 50, nullable = false)
	private String senha;
	
	@Column(name = "status", length = 10, nullable = false)
	private String status;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCnpj() {
		return cnpj;
	}
	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}
	public String getRazao() {
		return razao;
	}
	public void setRazao(String razao) {
		this.razao = razao;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
