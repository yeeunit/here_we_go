package com.here_you_go.project.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.here_you_go.project.model.ProductVO;
import com.here_you_go.project.service.ProductService;



@Controller
public class ProductController {
	// DI 설정
	@Autowired
	ProductService prdService;
	
	// 시작 시 index 페이지 열기 삭제 

	
	// 전체 상품 조회
	// ProductService 클래스의 listAllProduct() 메소드 호출하기 위해서는 객체 필요
	// @Autowired 어노테이션 사용해서 DI 설정 필요
	@RequestMapping("/product/listAllProduct")
	public String  listAllProduct(Model model) {
		// (1) ProductService 클래스의 listAllProduct() 호출해서 결과 받아옴
		ArrayList<ProductVO> prdList = prdService.listAllProduct();
		
		// (2) Model 설정
		model.addAttribute("prdList", prdList);
		
		// (3) 뷰 페이지 반환
		return "product/productlist";
	}
	
	// 상품 상세 정보 조회
	@RequestMapping("/product/detailViewProduct/{prdNo}")
	public String detailViewProduct(@PathVariable String prdNo, Model model) {
		System.out.println("prdNo = " +  prdNo);
		// 서비스에게 상품번호 전달하고, 해당 상품 데이터 받아오기

		ProductVO prd = prdService.detailViewProduct(prdNo);
		model.addAttribute("prd", prd);

		 return  "product/prdDetailView";
	}
	
	
	
	// 메인페이지에서  상품 검색 
	@RequestMapping("/product/productSearch")
	public String productSearch(
			 @RequestParam("search_hotel") String searchHotel,
			@RequestParam HashMap<String, Object> param, 
			Model model
			) {
        System.out.println("Search Hotel = " + searchHotel);
		System.out.println("param = " +  param);
		
		ArrayList<ProductVO> prdList = prdService.productSearch(param);
		
	        for (ProductVO product : prdList) {
	            System.out.println("Product Name: " + product.getPrdName_kor());
	        }
	     
	        // 검색 키워드 
	        model.addAttribute("searchHotel", searchHotel);
	        // 검색 결과 리스트 
	        model.addAttribute("prdList", prdList);
	        // 검색 결과 리스트 개수 
	        model.addAttribute("resultCount", prdList.size());
	        
		
		return "product/productSearchResultView";
	}
	
	// 상품 카테고리별 조회 
	
	
	
	

}








