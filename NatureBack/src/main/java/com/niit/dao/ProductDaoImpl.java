package com.niit.dao;

import java.util.List;



import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Category;
import com.niit.model.Product;

@Repository("productDao")
@Transactional
public class ProductDaoImpl implements ProductDao {
	
@Autowired
 private SessionFactory sessionFactory;

public ProductDaoImpl(){
	
	System.out.println(" ProductDaoImpl bean is created");

}

	public Product saveProduct(Product product){
		Session session=sessionFactory.openSession();
		System.out.println("Id of the product before persisting" + product.getId());
		session.save(product);
		System.out.println("Id of the product after persistion" + product.getId());
		session.close();
		return product;
}

	public Product getProduct(int id) {
		Session session=sessionFactory.openSession();
		Product product=(Product)session.get(Product.class, id);
		session.close();
		return product;
	}
	@Transactional
	public void updateProduct(Product product) {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		System.out.println(product.toString());
		session.update(product);
		tx.commit();
		System.out.print("successfully updated");
		session.close();
	}
	@Transactional
	public Product deleteProduct(int id) {
		Session session=sessionFactory.openSession();
		Product product=(Product)session.get(Product.class,id);
		Transaction tx=session.beginTransaction();
		System.out.println(product.toString());
		session.delete(product);
		tx.commit();
		System.out.print("successfully deleted");
		session.close();
		return product;
		
	}
	public List<Product> getAllProducts() {
		Session session=sessionFactory.openSession();
		Query query=(Query) session.createQuery("from Product");
		List<Product>products=query.list();
		session.close();
		return products;
	}

	public List<Category> getAllCategories() {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Category");
		List<Category> categories=query.list();
		session.close();
		return categories;
	}
	
}
