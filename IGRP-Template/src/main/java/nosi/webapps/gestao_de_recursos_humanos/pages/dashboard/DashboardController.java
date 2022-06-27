package nosi.webapps.gestao_de_recursos_humanos.pages.dashboard;

import nosi.core.webapp.Controller;//
import nosi.core.webapp.databse.helpers.ResultSet;//
import nosi.core.webapp.databse.helpers.QueryInterface;//
import java.io.IOException;//
import nosi.core.webapp.Core;//
import nosi.core.webapp.Response;//
/* Start-Code-Block (import) */
import java.util.List; //block import
import java.util.stream.Collectors; //block import
import java.util.LongSummaryStatistics; //block import
import java.util.Map; //block import
import nosi.webapps.gestao_de_recursos_humanos.dao.TEmployees; //block import
/* End-Code-Block */
/*----#start-code(packages_import)----*/


/*----#end-code----*/
		
public class DashboardController extends Controller {
	public Response actionIndex() throws IOException, IllegalArgumentException, IllegalAccessException{
		Dashboard model = new Dashboard();
		model.load();
		model.setStatbox_1_title("Total de Funcionários");
		model.setStatbox_1_val("776");
		model.setStatbox_1_txt("Ver Funcionários");
		model.setStatbox_1_url("http://www.example.com");
		model.setStatbox_1_bg("cp-fresh");
		model.setStatbox_1_icn("fa-check");
		DashboardView view = new DashboardView();
		/*----#gen-example
		  EXAMPLES COPY/PASTE:
		  INFO: Core.query(null,... change 'null' to your db connection name, added in Application Builder.
		view.chart_1.loadQuery(Core.query(null,"SELECT 'X1' as EixoX, 'Y1' as EixoY, 15 as EixoZ"
                                      +" UNION SELECT 'X2' as EixoX, 'Y2' as EixoY, 10 as EixoZ"
                                      +" UNION SELECT 'X2' as EixoX, 'Y2' as EixoY, 23 as EixoZ"
                                      +" UNION SELECT 'X3' as EixoX, 'Y3' as EixoY, 40 as EixoZ"));
		view.chart_2.loadQuery(Core.query(null,"SELECT 'X1' as EixoX, 'Y1' as EixoY, 15 as EixoZ"
                                      +" UNION SELECT 'X2' as EixoX, 'Y2' as EixoY, 10 as EixoZ"
                                      +" UNION SELECT 'X2' as EixoX, 'Y2' as EixoY, 23 as EixoZ"
                                      +" UNION SELECT 'X3' as EixoX, 'Y3' as EixoY, 40 as EixoZ"));
		model.setStatbox_1_url(Core.getIGRPLink("your app","your page","your action"));
		  ----#gen-example */
		/* Start-Code-Block (index) */
	try{
	TEmployees temployeesfilter = new TEmployees().find();
	Object value  = temployeesfilter.getCount();
	if(Core.isNotNull(value)){
		model.setStatbox_1_url(Core.getIGRPLink("gestao_de_recursos_humanos", "Lista_de_empregados", "index"));
			model.setStatbox_1_val(String.valueOf(value));
	}
	}catch ( Exception e ) {
		e.printStackTrace();
	}
	/* End-Code-Block (index) */
		/*----#start-code(index)----*/
		view.chart_1.loadQuery(Core.query("select d.department_name, count(e.employee_id) from t_departments d "
				+ "join t_employees e "
				+ "on d.department_id = e.department_id "
				+ "group by d.department_name "));
		
		
		view.chart_2.loadQuery(Core.query("select d.job_title, count(e.employee_id) from t_jobs d "
				+ "join t_employees e "
				+ "on d.job_id = e.job_id "
				+ "group by d.job_title"));
		/*----#end-code----*/
		view.setModel(model);
		return this.renderView(view);	
	}
	/* Start-Code-Block (custom-actions)  *//* End-Code-Block  */
/*----#start-code(custom_actions)----*/


/*----#end-code----*/
}
