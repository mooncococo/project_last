package admin.model;

import java.util.List;
import java.util.Map;

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
		
		return 0;
	}

	public List<Product> selectProductAll(Paging pageInfo, Map<String, String> map) {
		// TODO Auto-generated method stub
		return null;
	}

}
