/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leavesystem.entity;

import com.leavesystem.util.LeaveStatus;
import com.leavesystem.util.LeaveType;
import java.io.Serializable;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.*;
import static org.springframework.test.context.transaction.TestTransaction.end;
import static org.springframework.test.context.transaction.TestTransaction.start;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.hibernate.validator.constraints.NotEmpty;

/**
 *
 * @author GEN-NTB-410
 */
@Entity
@Table(name ="leave_request")
public class Leave  implements Serializable{
    private int leave_id;
   // private LeaveType leaveType;
    //private LeaveStatus leaveStatus;
   
    private int totalLeaveDays;
    private int numberOfDays;
    private String reason;
    private GregorianCalendar startDate;
    private GregorianCalendar endDate;
	

    
    public Leave(){}
@Column (name="leave_id",nullable=false,insertable=true) 
    public Integer getLeaveId() {
        return leave_id;
    }

    public void setLeaveId(int leave_id) {
        this.leave_id = leave_id;
    }

   
    @Temporal(javax.persistence.TemporalType.DATE)/**drops the time value and only preserves the date.*/
    public GregorianCalendar getStartDate() {
        return startDate;
    }
//
//    public void setStartDate(Date startDate) {
//        this.startDate = startDate;
//    }
@Column(name="end_date",nullable=false,insertable=true)
    @Temporal(javax.persistence.TemporalType.DATE)
    public GregorianCalendar getEndDate() {
        return endDate;
    }
//
//    public void setEndDate(Date endDate) {
//        this.endDate = endDate;
//    }
    
	
	public void setSchedule(GregorianCalendar start, GregorianCalendar end) throws Exception {
		checkIfEndDateIsEarlier(start, end);
		this.startDate = start;
		this.endDate = end;

	}
	
	

	private void checkIfEndDateIsEarlier(GregorianCalendar start, GregorianCalendar end) throws Exception {
		if (end.before(start))
			throw new Exception("The end date cannot be earlier that the start date");
	}
	
	public double computeDurationOfLeaves(GregorianCalendar start, boolean startIsHalfDay, GregorianCalendar end, boolean endIsHalfDay) {
		// TODO Auto-generated method
		double duration = 0;
		Date d1 = start.getTime();
		Date d2 = end.getTime();
		if (start.equals(end))
			duration = 1;
		else
			duration = (d2.getTime()-d1.getTime())/ (1000 * 60 * 60 * 24)+1;
		
		if (startIsHalfDay)
			duration-=0.5;
		if (endIsHalfDay)
			duration-=0.5;
		
		return duration;
	}
	
@NotEmpty
private Set<LeaveProfile> leaveProfiles = new HashSet<LeaveProfile>();
@ManyToMany(fetch = FetchType.LAZY)
   @JoinTable(name = "leave_leave_type",
           joinColumns = { @JoinColumn(name = "leave_id") },
           inverseJoinColumns = { @JoinColumn(name = "leave_type_id") })
      public Set<LeaveProfile> getLeaveProfiles() {
        return leaveProfiles;
    }
    public void setLeaveProfiles(Set<LeaveProfile> leaveProfiles) {
        this.leaveProfiles = leaveProfiles;
    }
 
    @Transient
@Column(name="total_leavedays")
    public int getTotalLeaveDays() {
        return totalLeaveDays;
    }

    public void setTotalLeaveDays(int totalLeaveDays) {
        this.totalLeaveDays = totalLeaveDays;
    }
    
@Column(name="number_of_days")
    public int getNumberOfDays() {
        return numberOfDays;
    }

    public void setNumberOfDays(int numberOfDays) {
        this.numberOfDays = numberOfDays;
    }
    
    @Column(name="reason",nullable=true,insertable=true)
    public String getReason(){
    return reason;}
    
 public void setReason(String reason) throws Exception{
		checkIfReasonIsValid(reason);
		this.reason = reason;
	}

	private void checkIfReasonIsValid(String reason) throws Exception {
		Pattern p = Pattern.compile("[^A-Za-z0-9 ]\\p{Graph}", Pattern.CASE_INSENSITIVE);
		Matcher m = p.matcher(reason);
		if(!m.find())
			throw new Exception("Text should not contain any numbers or special characters");		
	} 
}

    

