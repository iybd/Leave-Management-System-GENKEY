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
 
import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
 
import com.leavesystem.entity.UserProfile;
 
 
 
@Repository("userProfileDao")
public class UserProfileDaoImpl extends AbstractDao<Integer, UserProfile>implements UserProfileDao{
    public UserProfile findById(int role_id) {
        return getByKey(role_id);
    }
 
    public UserProfile findByType(String role) {
        Criteria crit = createEntityCriteria();
        crit.add(Restrictions.eq("role", role));
        return (UserProfile) crit.uniqueResult();
    }
     
    @SuppressWarnings("unchecked")
    public List<UserProfile> findAll(){
        Criteria crit = createEntityCriteria();
        crit.addOrder(Order.asc("role"));
        return (List<UserProfile>)crit.list();
    }
       
}
