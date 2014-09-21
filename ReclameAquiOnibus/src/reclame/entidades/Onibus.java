package reclame.entidades;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity(name = "onibus")
public class Onibus {

	@Id
	@GeneratedValue
	private int id;
	
	@Column(name = "numero", length = 5, nullable = false)
	private String numero;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "id_rota")
	private Rota rota;
	
	@Column(name = "latitude", length = 30, nullable = true)
	private String latitude;
	
	@Column(name = "longitude", length = 30, nullable = true)
	private String longitude;
	
	@Column(name = "status", length = 10, nullable = false)
	private String status;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNumero() {
		return numero;
	}
	public void setNumero(String numero) {
		this.numero = numero;
	}
	public Rota getRota() {
		return rota;
	}
	public void setRota(Rota rota) {
		this.rota = rota;
	}
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
}
