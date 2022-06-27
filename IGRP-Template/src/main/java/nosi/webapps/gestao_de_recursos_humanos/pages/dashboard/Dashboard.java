package nosi.webapps.gestao_de_recursos_humanos.pages.dashboard;

import nosi.core.webapp.Model;
import nosi.core.webapp.RParam;
import nosi.core.webapp.databse.helpers.BaseQueryInterface;
import java.util.ArrayList;
import java.util.List;
import nosi.core.gui.components.IGRPChart2D;
import nosi.core.gui.components.IGRPChart3D;

public class Dashboard extends Model{		

	@RParam(rParamName = "p_statbox_1_title")
	private String statbox_1_title;

	@RParam(rParamName = "p_statbox_1_val")
	private String statbox_1_val;

	@RParam(rParamName = "p_statbox_1_txt")
	private String statbox_1_txt;

	@RParam(rParamName = "p_statbox_1_url")
	private String statbox_1_url;

	@RParam(rParamName = "p_statbox_1_bg")
	private String statbox_1_bg;

	@RParam(rParamName = "p_statbox_1_icn")
	private String statbox_1_icn;
	
	private List<Chart_1> chart_1 = new ArrayList<>();	
	public void setChart_1(List<Chart_1> chart_1){
		this.chart_1 = chart_1;
	}
	public List<Chart_1> getChart_1(){
		return this.chart_1;
	}

	
	private List<Chart_2> chart_2 = new ArrayList<>();	
	public void setChart_2(List<Chart_2> chart_2){
		this.chart_2 = chart_2;
	}
	public List<Chart_2> getChart_2(){
		return this.chart_2;
	}

	
	public void setStatbox_1_title(String statbox_1_title){
		this.statbox_1_title = statbox_1_title;
	}
	public String getStatbox_1_title(){
		return this.statbox_1_title;
	}
	
	public void setStatbox_1_val(String statbox_1_val){
		this.statbox_1_val = statbox_1_val;
	}
	public String getStatbox_1_val(){
		return this.statbox_1_val;
	}
	
	public void setStatbox_1_txt(String statbox_1_txt){
		this.statbox_1_txt = statbox_1_txt;
	}
	public String getStatbox_1_txt(){
		return this.statbox_1_txt;
	}
	
	public void setStatbox_1_url(String statbox_1_url){
		this.statbox_1_url = statbox_1_url;
	}
	public String getStatbox_1_url(){
		return this.statbox_1_url;
	}
	
	public void setStatbox_1_bg(String statbox_1_bg){
		this.statbox_1_bg = statbox_1_bg;
	}
	public String getStatbox_1_bg(){
		return this.statbox_1_bg;
	}
	
	public void setStatbox_1_icn(String statbox_1_icn){
		this.statbox_1_icn = statbox_1_icn;
	}
	public String getStatbox_1_icn(){
		return this.statbox_1_icn;
	}


	public static class Chart_1 extends IGRPChart2D{
		public Chart_1(String eixoX, Object eixoY) {
			super(eixoX, eixoY);
		}
		public Chart_1() {
		}
	}
	public static class Chart_2 extends IGRPChart3D{
		public Chart_2(String eixoX, String eixoY, Object eixoZ) {
			super(eixoX, eixoY,eixoZ);
		}
		public Chart_2() {
		}
	}

	public void loadChart_1(BaseQueryInterface query) {
		this.setChart_1(this.loadTable(query,Chart_1.class));
	}

	public void loadChart_2(BaseQueryInterface query) {
		this.setChart_2(this.loadTable(query,Chart_2.class));
	}

}
