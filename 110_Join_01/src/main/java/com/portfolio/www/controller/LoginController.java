package com.portfolio.www.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.portfolio.www.service.JoinService;

@Controller
public class LoginController {
	
	@RequestMapping("/loginPage.do")
	public String loginPage() {
		return "login";
	}

	@Autowired
	private JoinService joinService;
	
	
	@RequestMapping("/join.do")
	public ModelAndView join(@RequestParam HashMap<String,String> params) {
		
		int result = joinService.join(params);

		ModelAndView mv = new ModelAndView();
		
		mv.addObject("result", result);
//		System.out.println("=======params"+params);
		
		mv.addObject("msg", result==1? "회원가입 되었습니다." : "실패");
		
		mv.setViewName("login");

		
		return mv;
	}

	
}
