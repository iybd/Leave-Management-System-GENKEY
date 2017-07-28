/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leavesystem.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
/**
 *
 * @author GEN-NTB-410
 */
@Entity
@Table(name = "employee")
public class User implements Serializable {

    private String username;
    private String password;
    private String confirmpassword;
    private String firstname;
    private String lastname;
    private String email;
  
    private String employee_id;
    //private String department;
    private String gender;

    private int phone;
  

    @Column(name = "employee_id", nullable = false, insertable = true, unique = true)
    public String getEmployee_id() {
        return employee_id;
    }

    public void setEmployee_id(String employee_id) {
        this.employee_id = employee_id;
    }

    @Column(name = "username", nullable = false, insertable = true, updatable = true, unique = true)
    public String getUsername() {

        return username;

    }

    public void setUsername(String username) {

        this.username = username;

    }

    @Column(name = "password", nullable = false, insertable = true, updatable = true, unique = true)
    public String getPassword() {

        return password;

    }

    public void setPassword(String password) {

        this.password = password;

    }

    @Transient
    @Column(name = "password", nullable = false, insertable = true, updatable = true, unique = true)
    public String getConfirmPassword() {

        return confirmpassword;

    }

    public void setConfirmPassword(String confirmpassword) {

        this.confirmpassword = confirmpassword;

    }

    @Column(name = "firstname", nullable = false, insertable = true, updatable = true, unique = true)
    public String getFirstname() {

        return firstname;

    }

    public void setFirstname(String firstname) {

        this.firstname = firstname;

    }

    @Column(name = "lastname", nullable = false, insertable = true, updatable = true, unique = true)
    public String getLastname() {

        return lastname;

    }

    public void setLastname(String lastname) {

        this.lastname = lastname;

    }
    @Column(name = "email", nullable = false, insertable = true, updatable = true, unique = true)
    @Email
    public String getEmail() {

        return email;

    }

    public void setEmail(String email) {

        this.email = email;

    }

    @Column(name = "phone_number", nullable = true, insertable = true, updatable = true)
    public int getPhone() {

        return phone;

    }

    public void setPhone(int phone) {

        this.phone = phone;

    }
    @Column(name = "gender", nullable = true, insertable = true, updatable = true, unique = true)
    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
    
    @NotEmpty
    private Set<Department> department = new HashSet<Department>();
    
   @ManyToMany(fetch = FetchType.LAZY)
   @JoinTable(name = "employee_department",
           joinColumns = { @JoinColumn(name = "employee_id") },
           inverseJoinColumns = { @JoinColumn(name = "department_id") })
      public Set<Department> getDepartment() {
        return department;
    }
 
    public void setDepartment(Set<Department> department) {
        this.department = department;
    }
//    @Column(name = "department", nullable = false, insertable = true, updatable = true, unique = true)
//    public String getDepartmentName() {
//        return department;
//    }
//
//    public void setDepartmentName(String department) {
//        this.department = department;
//    }

@NotEmpty
    private Set<UserProfile> userProfiles = new HashSet<UserProfile>();
 @NotEmpty
    private String ssoId;
 
@Column(name="SSO_ID", unique=true, nullable=false)
  public String getSsoId() {
        return ssoId;
    }
   public void setSsoId(String ssoId) {
        this.ssoId = ssoId;
    }
@ManyToMany(fetch = FetchType.LAZY)
   @JoinTable(name = "employee_role",
           joinColumns = { @JoinColumn(name = "employee_id") },
           inverseJoinColumns = { @JoinColumn(name = "role_id") })
      public Set<UserProfile> getUserProfiles() {
        return userProfiles;
    }
 
    public void setUserProfiles(Set<UserProfile> userProfiles) {
        this.userProfiles = userProfiles;
    }
 
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((employee_id == null) ? 0 : employee_id.hashCode());
        result = prime * result + ((ssoId == null) ? 0 : ssoId.hashCode());
        return result;
    }
 
    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (!(obj instanceof User))
            return false;
        User other = (User) obj;
        if (employee_id == null) {
            if (other.employee_id != null)
                return false;
        } else if (!employee_id.equals(other.employee_id))
            return false;
        if (ssoId == null) {
            if (other.ssoId != null)
                return false;
        } else if (!ssoId.equals(other.ssoId))
            return false;
        return true;
    }
 
    
    @Override
    public String toString() {
        return "User [employee_id=" + employee_id + ", ssoId=" + ssoId 
                + ", firstname=" + firstname + ", lastname=" + lastname
                + ", email=" + email + "]";
    }
 
 
     
}





