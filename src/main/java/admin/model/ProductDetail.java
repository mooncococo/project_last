package admin.model;

public class ProductDetail {
	private int dnum;
	private int pnum;
	private String pcode;
	private String pname;
	private String psize;
	private String pcolor;
	private String pstock;
	
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getDnum() {
		return dnum;
	}
	public void setDnum(int dnum) {
		this.dnum = dnum;
	}
	public int getPnum() {
		return pnum;
	}
	public void setPnum(int pnum) {
		this.pnum = pnum;
	}
	public String getPcode() {
		return pcode;
	}
	public void setPcode(String pcode) {
		this.pcode = pcode;
	}
	public String getPsize() {
		return psize;
	}
	public void setPsize(String psize) {
		this.psize = psize;
	}
	public String getPcolor() {
		return pcolor;
	}
	public void setPcolor(String pcolor) {
		this.pcolor = pcolor;
	}
	public String getPstock() {
		return pstock;
	}
	public void setPstock(String pstock) {
		this.pstock = pstock;
	}
	
	
}
