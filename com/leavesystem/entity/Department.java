/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leavesystem.entity;

import com.leavesystem.util.DepartmentName;
import java.io.Serializable;
import javax.persistence.*;

/**
 *
 * @author GEN-NTB-410
 */
@Entity
@Table(name = "department")
public class Department implements Serializable {
   
    private Integer department_id;
    
     @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="department_id",nullable =false, insertable = true)
    public Integer getDepartment_id(){
    return department_id;
    }
     
    public void setDepartment_id(Integer department_id){
    this.department_id=department_id;
    }
    private DepartmentName department;
//     private String department = DepartmentName.SALES.getDepartmentName();
     
    @Column(name = "department", nullable = false, insertable = true, updatable = true)
    public DepartmentName getDepartment() {
        return department;
    }

    public void setDepartment(DepartmentName department) {
        this.department  = department;
    }
   
    
    
   @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((department_id == null) ? 0 : department_id.hashCode());
        result = prime * result + ((department== null) ? 0 : department.hashCode());
        return result;
    }
 
    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (!(obj instanceof Department))
            return false;
        Department other = (Department) obj;
        if (department_id == null) {
            if (other.department_id != null)
                return false;
        } else if (!department_id.equals(other.department_id))
            return false;
        if (department == null) {
            if (other.department != null)
                return false;
        } else if (!department.equals(other.department))
            return false;
        return true;
    }
 
    @Override
    public String toString() {
        return "Department [department_id=" +department_id + ", department=" + department + "]";
    }
 
       
}
