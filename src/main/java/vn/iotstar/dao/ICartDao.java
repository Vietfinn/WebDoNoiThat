package vn.iotstar.dao;

import vn.iotstar.entity.Cart;

public interface ICartDao {
	
	Cart findByUser(int user_id);
	
	void delete(int id) throws Exception;

}
