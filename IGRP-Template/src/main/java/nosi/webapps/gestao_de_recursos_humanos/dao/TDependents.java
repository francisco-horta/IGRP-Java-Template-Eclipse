package nosi.webapps.gestao_de_recursos_humanos.dao;

import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.Table;
import javax.persistence.ForeignKey;
import javax.persistence.GenerationType;
import javax.validation.constraints.NotBlank;
import javax.persistence.GeneratedValue;
import javax.validation.constraints.Size;
import nosi.base.ActiveRecord.BaseActiveRecord;
import javax.persistence.ManyToOne;
import javax.persistence.Column;

/**
 * @author: Nositeste 22-06-2022
*/

@Entity
@Table(name = "t_dependents", schema = "public")
@NamedQuery(name = "TDependents.findAll", query = "SELECT t FROM TDependents t")
public class TDependents extends BaseActiveRecord<TDependents> {

	private static final long serialVersionUID = 1L;

	// Change Integer type to BigDecimal if the number is very large!

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "dependent_id", nullable = false, updatable = false)
 	private Integer dependentId;
	@NotBlank
	@Size(min = 1, max = 50)
	@Column(name = "first_name")
	private String firstName;
	@NotBlank
	@Size(min = 1, max = 50)
	@Column(name = "last_name")
	private String lastName;
	@NotBlank
	@Size(min = 1, max = 25)
	@Column(name = "relationship")
	private String relationship;
	@ManyToOne
	@JoinColumn(name = "employee_id", foreignKey = @ForeignKey(name = "t_dependents_employee_id_fkey"))
	private TEmployees employeeId;

	public Integer getDependentId() { 
		return this.dependentId;
	}

	public void setDependentId(Integer dependentId) {
		 this.dependentId = dependentId;
	}

	public String getFirstName() { 
		return this.firstName;
	}

	public void setFirstName(String firstName) {
		 this.firstName = firstName;
	}

	public String getLastName() { 
		return this.lastName;
	}

	public void setLastName(String lastName) {
		 this.lastName = lastName;
	}

	public String getRelationship() { 
		return this.relationship;
	}

	public void setRelationship(String relationship) {
		 this.relationship = relationship;
	}

	public TEmployees getEmployeeId() { 
		return this.employeeId;
	}

	public void setEmployeeId(TEmployees employeeId) {
		 this.employeeId = employeeId;
	}

}