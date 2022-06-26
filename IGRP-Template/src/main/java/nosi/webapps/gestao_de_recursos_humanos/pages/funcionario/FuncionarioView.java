package nosi.webapps.gestao_de_recursos_humanos.pages.funcionario;

import nosi.core.webapp.Model;
import nosi.core.webapp.View;
import nosi.core.gui.components.*;
import nosi.core.gui.fields.*;
import static nosi.core.i18n.Translator.gt;

public class FuncionarioView extends View {

	public Field nome;
	public Field apelido;
	public Field email;
	public Field salario;
	public Field data_contratacao;
	public Field telefone;
	public Field funcao_id;
	public Field departamento_id;
	public Field coordenador_id;
	public Field id;
	public IGRPForm form_1;

	public IGRPToolsBar toolsbar_1;
	public IGRPButton btn_gravar;

	public FuncionarioView(){

		this.setPageTitle("Funcionário");
			
		form_1 = new IGRPForm("form_1","Funcionário");

		nome = new TextField(model,"nome");
		nome.setLabel(gt("Nome"));
		nome.propertie().add("name","p_nome").add("type","text").add("maxlength","20").add("required","true").add("readonly","false").add("disabled","false").add("disablehtml","true").add("placeholder",gt("")).add("desclabel","false").add("inputmask","").add("tooltip","false").add("disable_copy_paste","false");
		
		apelido = new TextField(model,"apelido");
		apelido.setLabel(gt("Apelido"));
		apelido.propertie().add("name","p_apelido").add("type","text").add("maxlength","25").add("required","true").add("readonly","false").add("disabled","false").add("disablehtml","true").add("placeholder",gt("")).add("desclabel","false").add("inputmask","").add("tooltip","false").add("disable_copy_paste","false");
		
		email = new EmailField(model,"email");
		email.setLabel(gt("Email"));
		email.propertie().add("name","p_email").add("type","email").add("maxlength","100").add("required","false").add("readonly","false").add("disabled","false").add("placeholder",gt("")).add("desclabel","false").add("tooltip","false").add("disable_copy_paste","false");
		
		salario = new NumberField(model,"salario");
		salario.setLabel(gt("Salário"));
		salario.propertie().add("name","p_salario").add("type","number").add("min","").add("max","").add("calculation","false").add("mathcal","").add("numberformat","").add("maxlength","8").add("required","true").add("readonly","false").add("disabled","false").add("placeholder",gt("")).add("desclabel","false").add("java-type","long").add("tooltip","false").add("disable_copy_paste","false");
		
		data_contratacao = new DateField(model,"data_contratacao");
		data_contratacao.setLabel(gt("Data Contratação"));
		data_contratacao.propertie().add("name","p_data_contratacao").add("type","date").add("range","false").add("disableWeekends","false").add("disabledBeforetoday","false").add("daysoff","false").add("maxlength","250").add("required","true").add("readonly","true").add("disabled","false").add("placeholder",gt("")).add("desclabel","false").add("tooltip","false").add("disable_copy_paste","false").add("class","primary");
		
		telefone = new TextField(model,"telefone");
		telefone.setLabel(gt("Telefone"));
		telefone.propertie().add("name","p_telefone").add("type","text").add("maxlength","20").add("required","true").add("readonly","false").add("disabled","false").add("disablehtml","true").add("placeholder",gt("")).add("desclabel","false").add("inputmask","").add("tooltip","false").add("disable_copy_paste","false");
		
		funcao_id = new ListField(model,"funcao_id");
		funcao_id.setLabel(gt("Função"));
		funcao_id.propertie().add("name","p_funcao_id").add("type","select").add("multiple","false").add("tags","false").add("load_service_data","false").add("domain","").add("maxlength","250").add("required","true").add("disabled","false").add("java-type","Integer").add("tooltip","false").add("disable_copy_paste","false");
		
		departamento_id = new ListField(model,"departamento_id");
		departamento_id.setLabel(gt("Departamento"));
		departamento_id.propertie().add("name","p_departamento_id").add("type","select").add("multiple","false").add("tags","false").add("load_service_data","false").add("domain","").add("maxlength","250").add("required","true").add("disabled","false").add("java-type","Integer").add("tooltip","false").add("disable_copy_paste","false");
		
		coordenador_id = new ListField(model,"coordenador_id");
		coordenador_id.setLabel(gt("Coordenador"));
		coordenador_id.propertie().add("name","p_coordenador_id").add("type","select").add("multiple","false").add("tags","false").add("load_service_data","false").add("domain","").add("maxlength","250").add("required","false").add("disabled","false").add("java-type","Integer").add("tooltip","false").add("disable_copy_paste","false");
		
		id = new HiddenField(model,"id");
		id.setLabel(gt(""));
		id.propertie().add("name","p_id").add("type","hidden").add("maxlength","250").add("java-type","Integer").add("tooltip","false").add("disable_copy_paste","false").add("tag","id");
		

		toolsbar_1 = new IGRPToolsBar("toolsbar_1");

		btn_gravar = new IGRPButton("Gravar","gestao_de_recursos_humanos","Funcionario","gravar","submit","primary|fa-save","","");
		btn_gravar.propertie.add("type","specific").add("rel","gravar").add("refresh_components","");

		
	}
		
	@Override
	public void render(){
		
		form_1.addField(nome);
		form_1.addField(apelido);
		form_1.addField(email);
		form_1.addField(salario);
		form_1.addField(data_contratacao);
		form_1.addField(telefone);
		form_1.addField(funcao_id);
		form_1.addField(departamento_id);
		form_1.addField(coordenador_id);
		form_1.addField(id);


		toolsbar_1.addButton(btn_gravar);
		this.addToPage(form_1);
		this.addToPage(toolsbar_1);
	}
		
	@Override
	public void setModel(Model model) {
		
		nome.setValue(model);
		apelido.setValue(model);
		email.setValue(model);
		salario.setValue(model);
		data_contratacao.setValue(model);
		telefone.setValue(model);
		funcao_id.setValue(model);
		departamento_id.setValue(model);
		coordenador_id.setValue(model);
		id.setValue(model);	

		}
}
