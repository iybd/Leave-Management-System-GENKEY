/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leavesystem.util;
import java.io.Serializable;
/**
 *
 * @author GEN-NTB-410
 */
public enum UserProfileType implements Serializable{
    ADMIN("ADMIN"),
    USER("USER"),
    TEAMLEADER("TEAMLEADER");
    
     String userProfileType;
     
    private UserProfileType(String userProfileType){
        this.userProfileType = userProfileType;
    }
     
    public String getUserProfileType(){
        return userProfileType;
}
}