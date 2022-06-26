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
@Table(name = "t_departments", schema = "public")
@NamedQuery(name = "TDepartments.findAll", query = "SELECT t FROM TDepartments t")
public class TDepartments extends BaseActiveRecord<TDepartments> {

	private static final long serialVersionUID = 1L;

	// Change Integer type to BigDecimal if the number is very large!

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "department_id", nullable = false, updatable = false)
 	private Integer departmentId;
	@NotBlank
	@Size(min = 1, max = 30)
	@Column(name = "department_name")
	private String departmentName;
	@ManyToOne
	@JoinColumn(name = "location_id", foreignKey = @ForeignKey(name = "t_departments_location_id_fkey"))
	private TLocations locationId;

	public Integer getDepartmentId() { 
		return this.departmentId;
	}

	public void setDepartmentId(Integer departmentId) {
		 this.departmentId = departmentId;
	}

	public String getDepartmentName() { 
		return this.departmentName;
	}

	public void setDepartmentName(String departmentName) {
		 this.departmentName = departmentName;
	}

	public TLocations getLocationId() { 
		return this.locationId;
	}

	public void setLocationId(TLocations locationId) {
		 this.locationId = locationId;
	}

}