
package one.project.bhoomi_webapp_01.dao;

import java.io.IOException;

import one.project.bhoomi_webapp_01.model.Cart;

public interface CartDao {


    Cart getCartById(int cartId);

    Cart validate(int cartId) throws IOException;

    void update(Cart cart);
   
    


}
