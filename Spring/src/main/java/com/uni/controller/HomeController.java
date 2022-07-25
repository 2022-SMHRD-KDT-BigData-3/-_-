package com.uni.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.uni.entity.MemberVO;
import com.uni.mapper.MemberMapper;

@Controller
@Service
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@Autowired
	private MemberMapper MemberMapper;
	
	@RequestMapping("/loginjsp.do")
	public String loginjsp() {
		return "login";
	}
	
	@RequestMapping("/joinjsp.do")
	public String joinjsp() {
		return "join";
	}
	
	@RequestMapping("/join.do")
	public String join(MemberVO member, HttpSession session) {
		System.out.println("controller");
		System.out.println(member.getUserid());
		MemberMapper.join(member);
		return "hi";
	}
}
