/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leavesystem.dao;

import com.leavesystem.entity.LeaveProfile;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

/**
 *
 * @author GEN-NTB-410
 */
@Repository("leaveProfileDao")
public class LeaveProfileDaoImpl extends AbstractDao<Integer, LeaveProfile>implements LeaveProfileDao{
   public LeaveProfile findById(int leave_type_id) {
        return getByKey(leave_type_id);
    }
 
    public LeaveProfile findByLeave(String leave) {
        Criteria crit = createEntityCriteria();
        crit.add(Restrictions.eq("leave", leave));
        return (LeaveProfile) crit.uniqueResult();
    }
     
    @SuppressWarnings("unchecked")
    public List<LeaveProfile> findAll(){
        Criteria crit = createEntityCriteria();
        crit.addOrder(Order.asc("leave"));
        return (List<LeaveProfile>)crit.list();
    }
          
}
