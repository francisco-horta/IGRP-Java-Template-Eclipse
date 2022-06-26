package nosi.webapps.gestao_de_recursos_humanos.dao;

import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Entity;
import nosi.base.ActiveRecord.BaseActiveRecord;
import javax.persistence.JoinColumn;
import javax.persistence.Table;
import javax.persistence.ManyToOne;
import javax.persistence.ForeignKey;
import javax.persistence.GenerationType;
import javax.persistence.GeneratedValue;
import javax.persistence.Column;
import javax.validation.constraints.Size;

/**
 * @author: Nositeste 22-06-2022
*/

@Entity
@Table(name = "t_countries", schema = "public")
@NamedQuery(name = "TCountries.findAll", query = "SELECT t FROM TCountries t")
public class TCountries extends BaseActiveRecord<TCountries> {

	private static final long serialVersionUID = 1L;

	// Change Integer type to BigDecimal if the number is very large!

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "country_id", nullable = false, updatable = false)
 	private String countryId;
	@Size(max = 40)
	@Column(name = "country_name")
	private String countryName;
	@ManyToOne
	@JoinColumn(name = "region_id", foreignKey = @ForeignKey(name = "t_countries_region_id_fkey"))
	private TRegions regionId;

	public String getCountryId() { 
		return this.countryId;
	}

	public void setCountryId(String countryId) {
		 this.countryId = countryId;
	}

	public String getCountryName() { 
		return this.countryName;
	}

	public void setCountryName(String countryName) {
		 this.countryName = countryName;
	}

	public TRegions getRegionId() { 
		return this.regionId;
	}

	public void setRegionId(TRegions regionId) {
		 this.regionId = regionId;
	}

}