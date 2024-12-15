package vn.iotstar.dao;

import java.util.List;

import vn.iotstar.entity.Category;

public interface ICategoryDao {

	List<Category> findAll();
	
	Category findById(int id);
	
	void insert (Category cate);
	void delete (int category_id);
	void update (Category cate);
}
