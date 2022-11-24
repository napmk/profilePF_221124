package com.napmkmk.home.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.yaml.snakeyaml.tokens.DocumentEndToken;

import com.napmkmk.home.dao.IDao;

@Controller
public class HomeController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping (value ="/")
	public String home () {
		
		return "index";
	}

	@RequestMapping (value ="index")
	public String index () {
		
		return "index";
	}
	
	@RequestMapping (value ="test")
	public String test () {
		
		return "test";
	}
	
	@RequestMapping (value ="profile")
	public String profile () {
		
		return "profile";
	}
	@RequestMapping (value ="contact")
	public String contact () {
		
		return "contact";
	}
	
	@RequestMapping (value ="login")
	public String login () {
		
		return "login";
	}
	
	@RequestMapping (value ="join")
	public String join () {
		
		return "join";
	}
	
	@RequestMapping (value ="joinOk")
	public String joinOk (HttpServletRequest request, HttpSession session, Model model) {
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		String mname = request.getParameter("mname");
		String memail = request.getParameter("memail");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		int joinFlag = dao.memberJoin(mid, mpw, mname, mid);
		// joinFlag 가 1 이면 회원가입 성공, 아니면 실패
		//System.out.println("가입성공여부"+ joinFlag);
		
		if(joinFlag == 1 ) { //회원가입 성공시 바로 로그인 진행
			session.setAttribute("memberId", mid);
			session.setAttribute("memberName", mname);
		
			model.addAttribute("mid", mid);
			model.addAttribute("mname",mname );
			
			return "joinOk";
		} else { //회원가입 실패
				return "joinFail";
			}
	
	
	}

	@RequestMapping (value ="question")
	public String question () {
		
		return "question";
	}
	
}
