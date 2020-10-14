package admin.model;

import javax.validation.constraints.NotNull;

public class Category {
	private int cnum;
	@NotNull(message = "대분류를 선택하세요")
	private String code;
	@NotNull(message = "소분류를 선택하세요")
	private String cname;
	private String csum;
	
	public Category(int cnum, String code, String cname) {
		super();
		this.cnum = cnum;
		this.code = code;
		this.cname = cname;
	}
	public Category() {
		super();
	}
	public String getCsum() {
		return csum;
	}
	public void setCsum(String csum) {
		this.csum = csum;
	}
	public int getCnum() {
		return cnum;
	}
	public void setCnum(int cnum) {
		this.cnum = cnum;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	
	
	
}
