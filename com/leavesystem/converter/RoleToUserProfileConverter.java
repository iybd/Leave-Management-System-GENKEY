/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leavesystem.converter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;
 
import com.leavesystem.entity.UserProfile;
import com.leavesystem.service.UserProfileService;
 
/**
 *This takes care of mapping the individual userProfile id's on views to the actual UserProfile Entities in database
 * @author GEN-NTB-410
 */
/**
 * A converter class used in views to map id's to actual userProfile objects.
 */
@Component
public class RoleToUserProfileConverter implements Converter<Object, UserProfile>{
 
    static final Logger logger = LoggerFactory.getLogger(RoleToUserProfileConverter.class);
     
    @Autowired
    UserProfileService userProfileService;
 
    /**
     * Gets UserProfile by Id
     * @see org.springframework.core.convert.converter.Converter#convert(java.lang.Object)
     */
    public UserProfile convert(Object element) {
        Integer role_id = Integer.parseInt((String)element);
        UserProfile profile= userProfileService.findById(role_id);
        logger.info("Profile : {}",profile);
        return profile;
    }
     
}

