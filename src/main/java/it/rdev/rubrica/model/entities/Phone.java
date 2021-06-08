package it.rdev.rubrica.model.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table( name = "num_telefono" )
public class Phone {
	
	@Id
	@Column( name = "telefono", nullable = false, length = 15 )
	private String phone;
	@ManyToOne()
	@JoinColumn(name = "ID_contatto", referencedColumnName="id")
	private Contact contact;

	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Contact getContact() {
		return contact;
	}
	public void setContact(Contact contact) {
		this.contact = contact;
	}

}
