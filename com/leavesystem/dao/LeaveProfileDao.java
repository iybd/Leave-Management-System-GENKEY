/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leavesystem.dao;

import com.leavesystem.entity.LeaveProfile;
import java.util.List;

/**
 *
 * @author GEN-NTB-410
 */
public interface LeaveProfileDao {
List<LeaveProfile> findAll();
     
   LeaveProfile findByLeave(String leave);
     
    LeaveProfile findById(int leave_type_id);    
}
