package nosi.webapps.gestao_de_recursos_humanos.pages.funcionario;

import nosi.core.webapp.Model;
import nosi.core.webapp.RParam;

import nosi.core.validator.constraints.*;

public class Funcionario extends Model{		

	@NotNull()
	@RParam(rParamName = "p_nome")
	private String nome;

	@NotNull()
	@RParam(rParamName = "p_apelido")
	private String apelido;

	@RParam(rParamName = "p_email")
	private String email;

	@NotNull()
	@RParam(rParamName = "p_salario")
	private long salario;

	@NotNull()
	@RParam(rParamName = "p_data_contratacao")
	private String data_contratacao;

	@NotNull()
	@RParam(rParamName = "p_telefone")
	private String telefone;

	@NotNull()
	@RParam(rParamName = "p_funcao_id")
	private Integer funcao_id;

	@NotNull()
	@RParam(rParamName = "p_departamento_id")
	private Integer departamento_id;

	@RParam(rParamName = "p_coordenador_id")
	private Integer coordenador_id;

	@RParam(rParamName = "p_id")
	private Integer id;
	
	public void setNome(String nome){
		this.nome = nome;
	}
	public String getNome(){
		return this.nome;
	}
	
	public void setApelido(String apelido){
		this.apelido = apelido;
	}
	public String getApelido(){
		return this.apelido;
	}
	
	public void setEmail(String email){
		this.email = email;
	}
	public String getEmail(){
		return this.email;
	}
	
	public void setSalario(long salario){
		this.salario = salario;
	}
	public long getSalario(){
		return this.salario;
	}
	
	public void setData_contratacao(String data_contratacao){
		this.data_contratacao = data_contratacao;
	}
	public String getData_contratacao(){
		return this.data_contratacao;
	}
	
	public void setTelefone(String telefone){
		this.telefone = telefone;
	}
	public String getTelefone(){
		return this.telefone;
	}
	
	public void setFuncao_id(Integer funcao_id){
		this.funcao_id = funcao_id;
	}
	public Integer getFuncao_id(){
		return this.funcao_id;
	}
	
	public void setDepartamento_id(Integer departamento_id){
		this.departamento_id = departamento_id;
	}
	public Integer getDepartamento_id(){
		return this.departamento_id;
	}
	
	public void setCoordenador_id(Integer coordenador_id){
		this.coordenador_id = coordenador_id;
	}
	public Integer getCoordenador_id(){
		return this.coordenador_id;
	}
	
	public void setId(Integer id){
		this.id = id;
	}
	public Integer getId(){
		return this.id;
	}



}
