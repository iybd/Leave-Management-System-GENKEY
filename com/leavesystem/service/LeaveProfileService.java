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
 
import com.leavesystem.entity.LeaveProfile;

public interface  LeaveProfileService {
  LeaveProfile findById(int leave_type_id);
 
   LeaveProfile findByLeave(String leave);
     
    List<LeaveProfile> findAll();
}
