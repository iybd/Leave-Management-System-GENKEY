/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leavesystem.entity;

/**
 *
 * @author GEN-NTB-410
 */
import com.leavesystem.util.UserProfileType;
import java.io.Serializable;
 
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
 
@Entity
@Table(name="role")
public class UserProfile implements Serializable {
    
 @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Integer role_id; 
 
    @Column(name="role", length=15, unique=true, nullable=false)
    private String role = UserProfileType.USER.getUserProfileType();
     
    public Integer getId() {
        return role_id;
    }
 
    public void setId(Integer role_id) {
        this.role_id = role_id;
    }
 
    public String getType() {
        return role;
    }
 
    public void setType(String role) {
        this.role = role;
    }
 
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((role_id == null) ? 0 : role_id.hashCode());
        result = prime * result + ((role == null) ? 0 : role.hashCode());
        return result;
    }
 
    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (!(obj instanceof UserProfile))
            return false;
        UserProfile other = (UserProfile) obj;
        if (role_id == null) {
            if (other.role_id != null)
                return false;
        } else if (!role_id.equals(other.role_id))
            return false;
        if (role == null) {
            if (other.role != null)
                return false;
        } else if (!role.equals(other.role))
            return false;
        return true;
    }
 
    @Override
    public String toString() {
        return "UserProfile [role_id=" +role_id + ", role=" + role + "]";
    }
 
 
 
 
}
