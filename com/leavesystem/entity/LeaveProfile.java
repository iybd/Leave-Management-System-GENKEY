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
import com.leavesystem.util.LeaveType;
import java.io.Serializable;
 
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="leave_type")
public class LeaveProfile implements Serializable {
  
 @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Integer leave_type_id; 
 
    @Column(name="leave", unique=true, nullable=false)
    private String leave = LeaveType.CASUAL.getLeaveType();
     
    public Integer getId() {
        return leave_type_id;
    }
 
    public void setId(Integer leave_type_id) {
        this.leave_type_id = leave_type_id;
    }
 
    public String getType() {
        return leave;
    }
 
    public void setType(String leave) {
        this.leave = leave;
    }
 
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((leave_type_id == null) ? 0 : leave_type_id.hashCode());
        result = prime * result + ((leave == null) ? 0 : leave.hashCode());
        return result;
    }
 
    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (!(obj instanceof LeaveProfile))
            return false;
       LeaveProfile other = (LeaveProfile) obj;
        if (leave_type_id == null) {
            if (other.leave_type_id != null)
                return false;
        } else if (!leave_type_id.equals(other.leave_type_id))
            return false;
        if (leave == null) {
            if (other.leave != null)
                return false;
        } else if (!leave.equals(other.leave))
            return false;
        return true;
    }
 
    @Override
    public String toString() {
        return "LeaveProfile [leave_type_id=" +leave_type_id + ", leave=" + leave + "]";
    }
 
 
 }
