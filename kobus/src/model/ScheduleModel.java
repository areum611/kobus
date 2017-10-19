package model;

public class ScheduleModel {
	private int s_id;
	private int b_id;
	private String depplandtime;
	private String arrplandtime;
	private String depplacenm;
	private String arrplacenm;
	private int charge;
	
	public ScheduleModel() {
		
	}
	public int getS_id() {
		return s_id;
	}
	public void setS_id(int s_id) {
		this.s_id = s_id;
	}
	public int getB_id() {
		return b_id;
	}
	public void setB_id(int b_id) {
		this.b_id = b_id;
	}
	public String getDepplandtime() {
		return depplandtime;
	}
	public void setDepplandtime(String depplandtime) {
		this.depplandtime = depplandtime;
	}
	public String getArrplandtime() {
		return arrplandtime;
	}
	public void setArrplandtime(String arrplandtime) {
		this.arrplandtime = arrplandtime;
	}
	public String getDepplacenm() {
		return depplacenm;
	}
	public void setDepplacenm(String depplacenm) {
		this.depplacenm = depplacenm;
	}
	public String getArrplacenm() {
		return arrplacenm;
	}
	public void setArrplacenm(String arrplacenm) {
		this.arrplacenm = arrplacenm;
	}
	public int getCharge() {
		return charge;
	}
	public void setCharge(int charge) {
		this.charge = charge;
	}
	
}
