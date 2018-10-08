package com.niit.dao;

import java.util.List;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import com.niit.configuration.DBConfig;
import com.niit.model.Product;
import junit.framework.TestCase;

public class ProductDaoImplTest extends TestCase {
	
	 ApplicationContext context=new AnnotationConfigApplicationContext(DBConfig.class,ProductDaoImpl.class);       
    	 ProductDao productDao=(ProductDao)context.getBean("productDao");

	public void testSaveProduct() {
		List<Product> prod= productDao.getAllProducts();
		for(Product product:prod)
			System.out.println(product.getId()+""+product.getPrice());
	
	}

	public void testGetProduct() {
		
		Product product1=productDao.getProduct(1);
		Product product2=productDao.getProduct(4);
		assertNotNull(product1);
		assertNotNull(product2);
		
		double expectedPrice=300;
		double actualPrice=product1.getPrice();
		assertTrue(expectedPrice==actualPrice);
		}
	public void testUpdateProduct() {
		Product product1=productDao.getProduct(1);
		product1.setPrice(300);
		product1.setQuantity(30);
		productDao.updateProduct(product1);
		assertTrue(product1.getPrice()==300);
		assertTrue(product1.getQuantity()==30);
	}	
}
