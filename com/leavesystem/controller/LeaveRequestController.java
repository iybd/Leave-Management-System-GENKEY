/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leavesystem.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author GEN-NTB-410
 */
@Controller
public class LeaveRequestController {
    
	@RequestMapping("/history.jsp")
	public ModelAndView showAllLeaveHistories() {
		
		ModelAndView model = new ModelAndView("history.jsp");
		
		return model;
	}
	
	@RequestMapping(value={"/reportAdmin.jsp","/reportEm.jsp","/reportTl.jsp"})
	public ModelAndView showOwnLeaveHistory() {
		
		ModelAndView model = new ModelAndView("/reportAdmin.jsp","/reportEm.jsp","/reportTl.jsp");
		
		return model;
	}
	
	@RequestMapping(value={"/requestPageEm.jsp","/requestPageAdmin.jsp","/requestPageTl.jsp"})
	public ModelAndView applyLeave() {
		
		ModelAndView model = new ModelAndView("/requestPageEm.jsp","/requestPageAdmin.jsp","/requestPageTl.jsp");
		
		return model;
	}

	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) {
		return new ModelAndView("history.jsp");
	}
}
