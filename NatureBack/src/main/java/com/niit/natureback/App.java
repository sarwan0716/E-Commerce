package com.niit.natureback;


import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.configuration.DBConfig;
import com.niit.dao.ProductDao;
import com.niit.dao.ProductDaoImpl;
import com.niit.model.Product;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        System.out.println( "Hello World!" );
        AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext(DBConfig.class,ProductDaoImpl.class); 
        context.scan("com.niit");
        context.refresh();
        ProductDao productDao=(ProductDao)context.getBean("productDao");
        
       /* Product product=new Product();
       	product.setProductname("Castor Oil");
       	product.setProductdesc("Pure Castor is available");
		product.setPrice(185);
		product.setQuantity(30);
		productDao.saveProduct(product);*/
        
       Product product=productDao.getProduct(1);
       product.setProductname("soap for Face");
       product.setPrice(350);
       productDao.updateProduct(product);
       System.out.println(product.getProductname());
       System.out.println(product.getPrice());
        
    }
}
