package model;

public class PayModel {
	private String m_id;
	private int r_no;
	private String depplacenm;
	private String arrplacenm;
	private String rdate;
	private String depplandtime;
	private String gradenm;
	private int cnt;
	private String seatnum;
	private int price;
	private String r_yn;

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public int getR_no() {
		return r_no;
	}

	public void setR_no(int r_no) {
		this.r_no = r_no;
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

	public String getRdate() {
		return rdate;
	}

	public void setRdate(String rdate) {
		this.rdate = rdate;
	}

	public String getDepplandtime() {
		return depplandtime;
	}

	public void setDepplandtime(String depplandtime) {
		this.depplandtime = depplandtime;
	}

	public String getGradenm() {
		return gradenm;
	}

	public void setGradenm(String gradenm) {
		this.gradenm = gradenm;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public String getSeatnum() {
		return seatnum;
	}

	public void setSeatnum(String seatnum) {
		this.seatnum = seatnum;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getR_yn() {
		return r_yn;
	}

	public void setR_yn(String r_yn) {
		this.r_yn = r_yn;
	}
}