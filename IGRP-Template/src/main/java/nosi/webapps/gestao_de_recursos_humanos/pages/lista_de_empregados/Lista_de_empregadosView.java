package nosi.webapps.gestao_de_recursos_humanos.pages.lista_de_empregados;

import nosi.core.webapp.Model;
import nosi.core.webapp.View;
import nosi.core.gui.components.*;
import nosi.core.gui.fields.*;
import static nosi.core.i18n.Translator.gt;

public class Lista_de_empregadosView extends View {

	public Field departamento_id;
	public Field funcao_id;
	public Field departamento;
	public Field funcao;
	public Field nome;
	public Field apelido;
	public Field email;
	public Field salario;
	public Field id;
	public IGRPForm form_1;
	public IGRPTable table_1;

	public IGRPToolsBar toolsbar_1;
	public IGRPButton btn_novo;
	public IGRPButton btn_filtrar;
	public IGRPButton btn_editar;
	public IGRPButton btn_eliminar;

	public Lista_de_empregadosView(){

		this.setPageTitle("Lista de Empregados");
			
		form_1 = new IGRPForm("form_1","Filtrar por...");

		table_1 = new IGRPTable("table_1","Empregados");

		departamento_id = new ListField(model,"departamento_id");
		departamento_id.setLabel(gt("Departamento"));
		departamento_id.propertie().add("name","p_departamento_id").add("type","select").add("multiple","false").add("tags","false").add("load_service_data","false").add("domain","").add("maxlength","250").add("required","false").add("disabled","false").add("java-type","Integer").add("tooltip","false").add("disable_copy_paste","false");
		
		funcao_id = new ListField(model,"funcao_id");
		funcao_id.setLabel(gt("Função"));
		funcao_id.propertie().add("name","p_funcao_id").add("type","select").add("multiple","false").add("tags","false").add("load_service_data","false").add("domain","").add("maxlength","250").add("required","false").add("disabled","false").add("java-type","Integer").add("tooltip","false").add("disable_copy_paste","false");
		
		departamento = new TextField(model,"departamento");
		departamento.setLabel(gt("Departamento"));
		departamento.propertie().add("name","p_departamento").add("type","text").add("maxlength","30").add("showLabel","true").add("group_in","");
		
		funcao = new TextField(model,"funcao");
		funcao.setLabel(gt("Função"));
		funcao.propertie().add("name","p_funcao").add("type","text").add("maxlength","35").add("showLabel","true").add("group_in","");
		
		nome = new TextField(model,"nome");
		nome.setLabel(gt("Nome"));
		nome.propertie().add("name","p_nome").add("type","text").add("maxlength","30").add("showLabel","true").add("group_in","");
		
		apelido = new TextField(model,"apelido");
		apelido.setLabel(gt("Apelido"));
		apelido.propertie().add("name","p_apelido").add("type","text").add("maxlength","30").add("showLabel","true").add("group_in","");
		
		email = new TextField(model,"email");
		email.setLabel(gt("Email"));
		email.propertie().add("name","p_email").add("type","text").add("maxlength","100").add("showLabel","true").add("group_in","");
		
		salario = new NumberField(model,"salario");
		salario.setLabel(gt("Salário"));
		salario.propertie().add("name","p_salario").add("type","number").add("min","").add("max","").add("calculation","false").add("mathcal","").add("numberformat","").add("maxlength","30").add("showLabel","true").add("total_footer","false").add("group_in","").add("java-type","long");
		
		id = new HiddenField(model,"id");
		id.setLabel(gt(""));
		id.propertie().add("name","p_id").add("type","hidden").add("maxlength","30").add("showLabel","true").add("group_in","").add("java-type","Integer").add("tag","id");
		

		toolsbar_1 = new IGRPToolsBar("toolsbar_1");

		btn_novo = new IGRPButton("Novo","gestao_de_recursos_humanos","Lista_de_empregados","novo","modal|refresh","primary|fa-user-plus","","");
		btn_novo.propertie.add("type","specific").add("rel","novo").add("refresh_components","");

		btn_filtrar = new IGRPButton("Filtrar","gestao_de_recursos_humanos","Lista_de_empregados","filtrar","submit","grey|fa-filter","","");
		btn_filtrar.propertie.add("id","button_2bf2_d7c8").add("type","form").add("class","grey").add("rel","filtrar").add("refresh_components","");

		btn_editar = new IGRPButton("Editar","gestao_de_recursos_humanos","Lista_de_empregados","editar","modal|refresh","warning|fa-edit","","");
		btn_editar.propertie.add("id","button_ab06_cb21").add("type","specific").add("class","warning").add("rel","editar").add("refresh_components","");

		btn_eliminar = new IGRPButton("Eliminar","gestao_de_recursos_humanos","Lista_de_empregados","eliminar","confirm","danger|fa-times","","");
		btn_eliminar.propertie.add("id","button_f46b_cf66").add("type","specific").add("flg_transaction","true").add("class","danger").add("rel","eliminar").add("refresh_components","").add("labelConfirm","Deseja realmente realizar esta operação?");

		
	}
		
	@Override
	public void render(){
		
		form_1.addField(departamento_id);
		form_1.addField(funcao_id);


		table_1.addField(departamento);
		table_1.addField(funcao);
		table_1.addField(nome);
		table_1.addField(apelido);
		table_1.addField(email);
		table_1.addField(salario);
		table_1.addField(id);

		toolsbar_1.addButton(btn_novo);
		form_1.addButton(btn_filtrar);
		table_1.addButton(btn_editar);
		table_1.addButton(btn_eliminar);
		this.addToPage(form_1);
		this.addToPage(table_1);
		this.addToPage(toolsbar_1);
	}
		
	@Override
	public void setModel(Model model) {
		
		departamento_id.setValue(model);
		funcao_id.setValue(model);
		departamento.setValue(model);
		funcao.setValue(model);
		nome.setValue(model);
		apelido.setValue(model);
		email.setValue(model);
		salario.setValue(model);
		id.setValue(model);	

		table_1.loadModel(((Lista_de_empregados) model).getTable_1());
		}
}
