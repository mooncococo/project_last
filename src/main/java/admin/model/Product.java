package admin.model;

import java.util.Date;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

public class Product {
	
	private int pnum;
	
	private String pcode;
	public String getPcode() {
		return pcode;
	}
	public void setPcode(String pcode) {
		this.pcode = pcode;
	}
	//@NotEmpty(message = "상품 이름 입력은 필수입니다.")
	private String pname;
	
	private String pcate;
	
	//@NotEmpty(message = "이미지 선택은 필수입니다.")
	private String pimage;
	
	private int price;
	
	//@NotNull(message = "스펙을 한가지 선택하세요")
	private String pspec;
	
	private String pnote;
	
	private int point;
	private Date pinputdate;
	
	private String uploadOld;
	
	private MultipartFile upload; //선택한 화일의 정보가 여기로 먼저 들어온다
	public int getPnum() {
		return pnum;
	}
	public void setPnum(int pnum) {
		this.pnum = pnum;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPcate() {
		return pcate;
	}
	public void setPcate(String pcate) {
		this.pcate = pcate;
	}
	public String getPimage() {
		return pimage;
	}
	public void setPimage(String pimage) {
		this.pimage = pimage;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getPspec() {
		return pspec;
	}
	public void setPspec(String pspec) {
		this.pspec = pspec;
	}
	public String getPnote() {
		return pnote;
	}
	public void setPnote(String pnote) {
		this.pnote = pnote;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public Date getPinputdate() {
		return pinputdate;
	}
	public void setPinputdate(Date pinputdate) {
		this.pinputdate = pinputdate;
	}
	
	public String getUploadOld() {
		return uploadOld;
	}

	public void setUploadOld(String uploadOld) {
		this.uploadOld = uploadOld;
	}

	public MultipartFile getUpload() {
		return upload;
	}

	public void setUpload(MultipartFile upload) {
		this.upload = upload;
		System.out.println("upload : "+upload);// ~~.jpg (X)
		if(upload != null) {
			System.out.println(upload.getName()); // upload
			System.out.println(upload.getOriginalFilename()); // ~~.jpg  , 진짜 화일이름
			this.pimage = upload.getOriginalFilename();  
		}
	}
	public Product(int pnum, String pname, String pcate, String pimage, int price, String pspec, String pnote,
			int point, Date pinputdate) {
		super();
		this.pnum = pnum;
		this.pname = pname;
		this.pcate = pcate;
		this.pimage = pimage;
		this.price = price;
		this.pspec = pspec;
		this.pnote = pnote;
		this.point = point;
		this.pinputdate = pinputdate;
	}
	public Product() {
		super();
	}
	
	
}
