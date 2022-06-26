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
@Table(name = "t_locations", schema = "public")
@NamedQuery(name = "TLocations.findAll", query = "SELECT t FROM TLocations t")
public class TLocations extends BaseActiveRecord<TLocations> {

	private static final long serialVersionUID = 1L;

	// Change Integer type to BigDecimal if the number is very large!

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "location_id", nullable = false, updatable = false)
 	private Integer locationId;
	@Size(max = 40)
	@Column(name = "street_address")
	private String streetAddress;
	@Size(max = 12)
	@Column(name = "postal_code")
	private String postalCode;
	@NotBlank
	@Size(min = 1, max = 30)
	@Column(name = "city")
	private String city;
	@Size(max = 25)
	@Column(name = "state_province")
	private String stateProvince;
	@ManyToOne
	@JoinColumn(name = "country_id", foreignKey = @ForeignKey(name = "t_locations_country_id_fkey"))
	private TCountries countryId;

	public Integer getLocationId() { 
		return this.locationId;
	}

	public void setLocationId(Integer locationId) {
		 this.locationId = locationId;
	}

	public String getStreetAddress() { 
		return this.streetAddress;
	}

	public void setStreetAddress(String streetAddress) {
		 this.streetAddress = streetAddress;
	}

	public String getPostalCode() { 
		return this.postalCode;
	}

	public void setPostalCode(String postalCode) {
		 this.postalCode = postalCode;
	}

	public String getCity() { 
		return this.city;
	}

	public void setCity(String city) {
		 this.city = city;
	}

	public String getStateProvince() { 
		return this.stateProvince;
	}

	public void setStateProvince(String stateProvince) {
		 this.stateProvince = stateProvince;
	}

	public TCountries getCountryId() { 
		return this.countryId;
	}

	public void setCountryId(TCountries countryId) {
		 this.countryId = countryId;
	}

}