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
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
 
import com.leavesystem.dao.UserProfileDao;
import com.leavesystem.entity.UserProfile;
 
 
@Service("userProfileService")
@Transactional
public class UserProfileServiceImpl  implements UserProfileService {
     @Autowired
    UserProfileDao dao;
     
    public UserProfile findById(int role_id) {
        return dao.findById(role_id);
    }
 
    public UserProfile findByType(String role){
        return dao.findByType(role);
    }
 
    public List<UserProfile> findAll() {
        return dao.findAll();
    }
}
