/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leavesystem.service;

/**
 *
 * @author GEN-NTB-410
 */
import java.util.List;
 
import com.leavesystem.entity.User;
 
public interface  UserService {
     
    User findById(String id);
     
    User findBySSO(String sso);
     
    void saveUser(User user);
     
    void updateUser(User user);
     
    void deleteUserBySSO(String sso);
 
    List<User> findAllUsers(); 
     
    boolean isUserSSOUnique(String id, String sso);
 
}