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
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
 
import com.leavesystem.dao.LeaveProfileDao;

import com.leavesystem.entity.LeaveProfile;
 

@Service("leaveProfileService")
@Transactional
public class LeaveProfileServiceImpl implements LeaveProfileService {
     @Autowired
   LeaveProfileDao dao;
     
    public LeaveProfile findById(int leave_type_id) {
        return dao.findById(leave_type_id);
    }
 
    public LeaveProfile findByLeave(String leave){
        return dao.findByLeave(leave);
    }
 
    public List<LeaveProfile> findAll() {
        return dao.findAll();
    }
}
