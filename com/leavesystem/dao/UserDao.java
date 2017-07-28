/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leavesystem.dao;
import com.leavesystem.entity.User;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Isabella Danso
 */
@Repository
public interface UserDao {
   
    User findById(String id);
     
    User findBySSO(String sso);
     
    void save(User user);
     
    void deleteBySSO(String sso);
     
    List<User> findAllUsers();
}
