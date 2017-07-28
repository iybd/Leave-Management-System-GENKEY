/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leavesystem.entity;
import java.io.Serializable;
import java.util.Date;
 
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


/**
 *
 * @author Izzy
 */
@Entity
@Table(name = "logins")
public class Login implements Serializable {

    @Id
    private String series;
 
    @Column(name="USERNAME", unique=true, nullable=false)
    private String username;
     
    @Column(name="TOKEN", unique=true, nullable=false)
    private String token;
     
    @Temporal(TemporalType.TIMESTAMP)
    private Date last_used;
 
    public String getSeries() {
        return series;
    }
 
    public void setSeries(String series) {
        this.series = series;
    }
 
    public String getUsername() {
        return username;
    }
 
    public void setUsername(String username) {
        this.username = username;
    }
 
    public String getToken() {
        return token;
    }
 
    public void setToken(String token) {
        this.token = token;
    }
 
    public Date getLast_used() {
        return last_used;
    }
 
    public void setLast_used(Date last_used) {
        this.last_used = last_used;
    }
     
     
}