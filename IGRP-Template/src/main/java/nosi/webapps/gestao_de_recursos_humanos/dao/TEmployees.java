package nosi.webapps.gestao_de_recursos_humanos.dao;

import javax.persistence.Id;
import java.time.LocalDate;
import javax.persistence.NamedQuery;
import javax.persistence.Entity;
import javax.persistence.CascadeType;
import javax.persistence.JoinColumn;
import javax.persistence.Table;
import javax.persistence.ForeignKey;
import javax.persistence.GenerationType;
import javax.validation.constraints.NotBlank;
import javax.persistence.GeneratedValue;
import javax.validation.constraints.Size;
import javax.persistence.OneToMany;
import javax.xml.bind.annotation.XmlTransient;
import javax.validation.constraints.NotNull;
import java.util.List;
import nosi.base.ActiveRecord.BaseActiveRecord;
import javax.persistence.ManyToOne;
import javax.persistence.Column;

/**
 * @author: Nositeste 22-06-2022
*/

@Entity
@Table(name = "t_employees", schema = "public")
@NamedQuery(name = "TEmployees.findAll", query = "SELECT t FROM TEmployees t")
public class TEmployees extends BaseActiveRecord<TEmployees> {

	private static final long serialVersionUID = 1L;

	// Change Integer type to BigDecimal if the number is very large!

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "employee_id", nullable = false, updatable = false)
 	private Integer employeeId;
	@Size(max = 20)
	@Column(name = "first_name")
	private String firstName;
	@NotBlank
	@Size(min = 1, max = 25)
	@Column(name = "last_name")
	private String lastName;
	@NotBlank
	@Size(min = 1, max = 100)
	@Column(name = "email")
	private String email;
	@Size(max = 20)
	@Column(name = "phone_number")
	private String phoneNumber;
	@NotNull
	@Column(name = "hire_date")
	private LocalDate hireDate;
	@ManyToOne
	@JoinColumn(name = "job_id", foreignKey = @ForeignKey(name = "t_employees_job_id_fkey"))
	private TJobs jobId;
	@NotNull
	@Column(name = "salary")
	private Long salary;
	@ManyToOne
	@JoinColumn(name = "manager_id", foreignKey = @ForeignKey(name = "t_employees_manager_id_fkey"))
	private TEmployees managerId;
	@ManyToOne
	@JoinColumn(name = "department_id", foreignKey = @ForeignKey(name = "t_employees_department_id_fkey"))
	private TDepartments departmentId;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "managerId")
	private List<TEmployees> temployeesList;

	public Integer getEmployeeId() { 
		return this.employeeId;
	}

	public void setEmployeeId(Integer employeeId) {
		 this.employeeId = employeeId;
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

	public String getEmail() { 
		return this.email;
	}

	public void setEmail(String email) {
		 this.email = email;
	}

	public String getPhoneNumber() { 
		return this.phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		 this.phoneNumber = phoneNumber;
	}

	public LocalDate getHireDate() { 
		return this.hireDate;
	}

	public void setHireDate(LocalDate hireDate) {
		 this.hireDate = hireDate;
	}

	public TJobs getJobId() { 
		return this.jobId;
	}

	public void setJobId(TJobs jobId) {
		 this.jobId = jobId;
	}

	public Long getSalary() { 
		return this.salary;
	}

	public void setSalary(Long salary) {
		 this.salary = salary;
	}

	public TEmployees getManagerId() { 
		return this.managerId;
	}

	public void setManagerId(TEmployees managerId) {
		 this.managerId = managerId;
	}

	public TDepartments getDepartmentId() { 
		return this.departmentId;
	}

	public void setDepartmentId(TDepartments departmentId) {
		 this.departmentId = departmentId;
	}

	@XmlTransient
	public List<TEmployees> gettemployeesList() {
		return temployeesList;
	}
	public void settemployeesList(List<TEmployees> temployeesList) {
		this.temployeesList = temployeesList;
	}

}