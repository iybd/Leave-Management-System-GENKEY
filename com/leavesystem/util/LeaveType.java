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
public enum LeaveType implements Serializable {
    CASUAL("CASUAL/VACATION"),
    MATERNITY("MATERNITY"),
    DAYOFF("A DAY OFF"),
    PATERNITY("PATERNITY"),
    HALFDAY("HALF DAY"),
    SICKLEAVE("SICK LEAVE");

    String leaveType;

    private LeaveType(String leaveType) {
        this.leaveType = leaveType;
    }

    public String getLeaveType() {
        return leaveType;
    }
}
