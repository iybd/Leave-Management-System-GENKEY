/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leavesystem.dao;

/**
 *
 * @author GEN-NTB-410
 */
import java.util.List;
 
import com.leavesystem.entity.UserProfile;
 
public interface UserProfileDao {
    
List<UserProfile> findAll();
     
    UserProfile findByType(String role);
     
    UserProfile findById(int role_id);
}

