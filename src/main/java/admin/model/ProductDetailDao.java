package admin.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import utility.Paging;

@Component("myproductdetailDao")
public class ProductDetailDao {
	
	@Autowired 
	SqlSessionTemplate sqlSessionTemplate;
	final String namespace = "admin.model.ProductDetail";

	public void insertDetail(ProductDetail productDetail) {
		int cnt = sqlSessionTemplate.insert(namespace+".InsertDetail", productDetail);
		System.out.println("detail insert cnt :" +cnt);
	}

	public int getTotalCount(Map<String, String> map) {
		int cnt = sqlSessionTemplate.selectOne(namespace+".GetTotalCount",map);
		return cnt;
		
	}

	public List<ProductDetail> selectDetailAll(Paging pageInfo, Map<String, String> map) {
		List<ProductDetail> lists = new ArrayList<ProductDetail>();
		RowBounds rowBounds = new RowBounds(pageInfo.getOffset(), pageInfo.getLimit());
		lists = sqlSessionTemplate.selectList(namespace+".GetDetailList",map,rowBounds);
		System.out.println("listcontroller lists.size():"+lists.size());
		return lists;
	}

	public void deleteProductDetail(int dnum) {
		sqlSessionTemplate.delete(namespace+".DeleteProductDetail", dnum);
		
	}

	public ProductDetail getOneProductDetail(int dnum) {
		ProductDetail pd = new ProductDetail();
		pd = sqlSessionTemplate.selectOne(namespace+".GetOneProductDetail", dnum);
		return pd;
	}

	public int UpdateProductDetail(ProductDetail productDetail) {
		int cnt = sqlSessionTemplate.update(namespace+".UpdateProductDetail", productDetail);
		return cnt;
	}
	public List<ProductDetail> getProductsByPnum(int pnum) {
		List<ProductDetail> lists = new ArrayList<ProductDetail>();
		lists = sqlSessionTemplate.selectList(namespace+".GetProductsByPnum", pnum);
		System.out.println("listcontroller lists.size():"+lists.size());
		return lists;
		
	}

	public List<ProductDetail> getDistinctColor(int pnum) {
		List<ProductDetail> lists = new ArrayList<ProductDetail>();
		lists = sqlSessionTemplate.selectList(namespace+".GetDistinctColor",pnum);
		System.out.println("color size():"+lists.size());
		return lists;
	}
	
	public List<ProductDetail> getProductSize(int pnum,String pcolor){
	      List<ProductDetail> lists = new ArrayList<ProductDetail>();
	      ProductDetail pd = new ProductDetail();
	      pd.setPnum(pnum);
	      pd.setPcolor(pcolor);
	      lists = sqlSessionTemplate.selectList(namespace + ".GetProductSize",pd);
	      return lists;
}
	
	
}
