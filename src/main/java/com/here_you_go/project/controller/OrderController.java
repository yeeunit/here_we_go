package com.here_you_go.project.controller;

import javax.annotation.processing.SupportedSourceVersion;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.here_you_go.project.service.OrderService;
import com.here_you_go.project.model.ProductVO;
import com.here_you_go.project.model.MemberVO;
import com.here_you_go.project.model.OrderInfoVO;

import jakarta.servlet.http.HttpSession;

@Controller
public class OrderController {
	@Autowired
	OrderService orderService;

	@RequestMapping("/product/orderForm/{prdNo}")
	public String orderForm(@PathVariable String prdNo, Model model, HttpSession session) {
//	public String orderForm(Model model, HttpSession session) {
		String memId = (String) session.getAttribute("sid"); // 로그인 헀을 때 사용
		// String memId = "hong";//login 안했을 때 테스트 용
		System.out.println("prdNo = " +  prdNo);
		
		 MemberVO memVo = orderService.getMemberInfo(memId); 
		 ProductVO prdVo = orderService.getProductInfo(prdNo);
		  
		 model.addAttribute("memVo", memVo); 
		 model.addAttribute("prdVo", prdVo);
		 

		return "product/order";
	}

	
	 @RequestMapping(value = "/product/insertOrder", method =
	 RequestMethod.POST) public String insertOrder(OrderInfoVO orderVo,
	 HttpSession session) { 
	 String memId = (String) session.getAttribute("sid");
	 
	 MemberVO memVo = orderService.getMemberInfo(memId); 
	 orderService.insertOrderInfo(orderVo);
	 
	 return "redirect:/product/orderCheck"; 
	 }
	 

	@RequestMapping("/product/orderCheck")
	public String orderSuccess(Model model) {

		return "product/orderCheck";
	}

	@RequestMapping("/product/cuponWindow")
	public String openCupon() {
		return "product/openCuponWindow";
	}

	@RequestMapping("/product/clauseWindow")
	public String openClause() {
		return "product/openClauseWindow";
	}

}
