/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leavesystem.util;

import java.io.Serializable;

/**
 *
 * @author Isabella Danso
 *DECLARATION OF  A FIXED TYPE OF DEPARTMENT CONSTANTS(enum),therefore only one out of the options can be picked. 
 
 */
public enum DepartmentName implements Serializable {
    SUPPORT("SUPPORT TEAM"),
    ADMINSTRATION("FINANCE & ADMINSTRATION"),
    PRODUCT("DEVELOPMENT&QUALITY ASSURANCE TEAM"),
    SALES("SALES");

    String departmentName;

    private DepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }

    public String getDepartmentName() {
        return departmentName;
    }
}
