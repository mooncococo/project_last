package orderdetail.model;

public class OrderDetail {
    private int olnum;
    private String mname;  
    private String mid;  
    private String pname;  
    private String pimage;  
    private int price;
    private int qty;
    public int getOlnum() {
        return olnum;
    }
    public void setOlnum(int olnum) {
        this.olnum = olnum;
    }
    public String getMname() {
        return mname;
    }
    public void setMname(String mname) {
        this.mname = mname;
    }
    public String getMid() {
        return mid;
    }
    public void setMid(String mid) {
        this.mid = mid;
    }
    public String getPname() {
        return pname;
    }
    public void setPname(String pname) {
        this.pname = pname;
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
    public int getQty() {
        return qty;
    }
    public void setQty(int qty) {
        this.qty = qty;
    }

    
}
