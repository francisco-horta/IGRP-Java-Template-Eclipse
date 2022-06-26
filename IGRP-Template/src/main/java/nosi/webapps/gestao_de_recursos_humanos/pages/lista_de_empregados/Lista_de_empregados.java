package nosi.webapps.gestao_de_recursos_humanos.pages.lista_de_empregados;

import nosi.core.gui.components.IGRPTable;
import nosi.core.webapp.Model;
import nosi.core.webapp.RParam;
import nosi.core.webapp.databse.helpers.BaseQueryInterface;
import java.util.ArrayList;
import java.util.List;

public class Lista_de_empregados extends Model{		

	@RParam(rParamName = "p_departamento_id")
	private Integer departamento_id;

	@RParam(rParamName = "p_funcao_id")
	private Integer funcao_id;
	
	private List<Table_1> table_1 = new ArrayList<>();	
	public void setTable_1(List<Table_1> table_1){
		this.table_1 = table_1;
	}
	public List<Table_1> getTable_1(){
		return this.table_1;
	}

	
	public void setDepartamento_id(Integer departamento_id){
		this.departamento_id = departamento_id;
	}
	public Integer getDepartamento_id(){
		return this.departamento_id;
	}
	
	public void setFuncao_id(Integer funcao_id){
		this.funcao_id = funcao_id;
	}
	public Integer getFuncao_id(){
		return this.funcao_id;
	}


	public static class Table_1 extends IGRPTable.Table{
		private String departamento;
		private String funcao;
		private String nome;
		private String apelido;
		private String email;
		private long salario;
		private Integer id;
		public void setDepartamento(String departamento){
			this.departamento = departamento;
		}
		public String getDepartamento(){
			return this.departamento;
		}

		public void setFuncao(String funcao){
			this.funcao = funcao;
		}
		public String getFuncao(){
			return this.funcao;
		}

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

		public void setId(Integer id){
			this.id = id;
		}
		public Integer getId(){
			return this.id;
		}

	}

	public void loadTable_1(BaseQueryInterface query) {
		this.setTable_1(this.loadTable(query,Table_1.class));
	}

}
