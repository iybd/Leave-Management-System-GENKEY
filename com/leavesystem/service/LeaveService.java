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
 
import com.leavesystem.entity.Leave;

public interface  LeaveService {
 Leave findById(Integer leave_id);
     void saveLeave(Leave leave);
     void updateLeave(Leave leave);
     
    void deleteUserById(int leave_id);

 List<Leave> findAllLeave(); 
     
    boolean isLeaveUnique(Integer leave_id);}
