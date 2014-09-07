package reclame.entidades;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity(name = "reclamacao")
public class Reclamacao {

	@Id
	@GeneratedValue
	private int id;
	
	@Column(name = "situacao", length = 10, nullable = true)
	private String situacao;
	
	@Column(name = "resposta", length = 100, nullable = true)
	private String resposta;
	
	@Column(name = "descricao_reclamacao", length = 50, nullable = false)
	private String descricao_reclamacao;
	
	@Column(name = "tipo", length = 10, nullable = true)
	private String tipo;
	
	@Column(name="data_reclamacao")
	@Temporal(TemporalType.DATE)
	private Date data_reclamacao;
	
	@Column(name = "hora_reclamacao", length = 10, nullable = false)
	private String hora_reclamacao;
	
	@Column(name="data_resposta")
	@Temporal(TemporalType.DATE)
	private Date data_resposta;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "id_linha")
	private Rota linha;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "id_empresa")
	private Empresa empresa;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "id_usuario")
	private Usuario usuario;
	
	@Column(name = "status", length = 10, nullable = false)
	private String status;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSituacao() {
		return situacao;
	}
	public void setSituacao(String situacaos) {
		this.situacao = situacaos;
	}
	public String getResposta() {
		return resposta;
	}
	public void setResposta(String resposta) {
		this.resposta = resposta;
	}
	public String getDescricao_reclamacao() {
		return descricao_reclamacao;
	}
	public void setDescricao_reclamacao(String descricao_reclamacao) {
		this.descricao_reclamacao = descricao_reclamacao;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public Date getData_reclamacao() {
		return data_reclamacao;
	}
	public void setData_reclamacao(Date data_reclamacao) {
		this.data_reclamacao = data_reclamacao;
	}
	public String getHora_reclamacao() {
		return hora_reclamacao;
	}
	public void setHora_reclamacao(String hora_reclamacao) {
		this.hora_reclamacao = hora_reclamacao;
	}
	public Date getData_resposta() {
		return data_resposta;
	}
	public void setData_resposta(Date data_resposta) {
		this.data_resposta = data_resposta;
	}
	public Rota getLinha() {
		return linha;
	}
	public void setLinha(Rota linha) {
		this.linha = linha;
	}
	public Empresa getEmpresa() {
		return empresa;
	}
	public void setEmpresa(Empresa empresa) {
		this.empresa = empresa;
	}
	public Usuario getUsuario() {
		return usuario;
	}
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}
