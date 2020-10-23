package admin.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import utility.Paging;

@Component("myProductDao")
public class ProductDao {

	final String namespace = "admin.model.Product";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	public void insertProduct(Product product) {
		
		int cnt = sqlSessionTemplate.insert(namespace+".InsertProduct", product);
		System.out.println("Product insert cnt : "+cnt);
		
	}

	public int getTotalCount(Map<String, String> map) { 
		int cnt = sqlSessionTemplate.selectOne(namespace+".GetTotalCount",map);
		return cnt;
	}

	public List<Product> selectProductAll(Paging pageInfo, Map<String, String> map) {
			List<Product> lists = new ArrayList<Product>();
			RowBounds rowBounds = new RowBounds(pageInfo.getOffset(), pageInfo.getLimit());
			lists = sqlSessionTemplate.selectList(namespace+".GetProductList",map,rowBounds);
			System.out.println("listcontroller lists.size():"+lists.size());
			return lists;
		}

	public Product getOneProduct(int pnum) {
		Product product = sqlSessionTemplate.selectOne(namespace+".GetOneProduct",pnum);
		return product;
	}

	public void deleteProduct(int pnum) {
		sqlSessionTemplate.delete(namespace+".DeleteProduct", pnum);
		
	}

	public int updateProduct(Product product) {
		int cnt = sqlSessionTemplate.update(namespace+".UpdateProduct", product);
		
		return cnt;
	}
	
	public List<Product> selectNewProduct(){
		List<Product> lists = new ArrayList<Product>();
		lists= sqlSessionTemplate.selectList(namespace+".GetNewProduct" );
		System.out.println("listcontroller lists.size():"+lists.size());
		return lists;
	}
	
	
}	


