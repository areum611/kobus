package model;

public class ReserModel {
	private int r_id;
	private int r_no;
	private int r_seatNum;
	private String r_sel_list;
	private String r_yn;
	private String m_id;
	private int s_id;
	
	public ReserModel() {
		
	}

	public int getR_no() {
		return r_no;
	}

	public void setR_no(int r_no) {
		this.r_no = r_no;
	}

	public int getR_seatNum() {
		return r_seatNum;
	}

	public void setR_seatNum(int r_seatNum) {
		this.r_seatNum = r_seatNum;
	}

	public String getR_sel_list() {
		return r_sel_list;
	}

	public void setR_sel_list(String r_sel_list) {
		this.r_sel_list = r_sel_list;
	}

	public String getR_yn() {
		return r_yn;
	}

	public void setR_yn(String r_yn) {
		this.r_yn = r_yn;
	}

	public int getS_id() {
		return s_id;
	}

	public void setS_id(int s_id) {
		this.s_id = s_id;
	}
	
}
