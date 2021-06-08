package it.rdev.rubrica.model.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "email")
public class Email {
	
	@Id
	@Column(name = "email", nullable = false, length = 100)
	private String email;
	@ManyToOne()
	@JoinColumn(name = "ID_contatto", referencedColumnName="id")
	private Contact contact;

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Contact getContact() {
		return contact;
	}
	public void setContact(Contact contact) {
		this.contact = contact;
	}

}
