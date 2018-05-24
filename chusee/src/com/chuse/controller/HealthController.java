package com.chuse.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chuse.entity.Page;
import com.chuse.entity.Product;
import com.chuse.service.impl.HealthServiceImpl;

@Controller
@RequestMapping("/health")
public class HealthController {

	@Resource
	private HealthServiceImpl healthServiceImpl;
	
	//后-改-修改商品
	//后-改-先找到要改的商品---修改商品
	@RequestMapping("/edit")
	public String edit(@RequestParam(value="pid", required = false) Integer pid,Model model){
		//List<ProductType> listtype=this.productTypeServiceImpl.listProductType();
		//model.addAttribute("listtype", listtype);
		Product product=this.healthServiceImpl.findProduct(pid);
		//System.out.println("xiao"+product.getPname());
		model.addAttribute("product", product);
		System.out.println("xiaomi");
		return "/adm/detail/updateHealth";
	}	

		
	
	
	
	
	
	//后-查-商品列表
	@RequestMapping("/get")
	public String listgoods(Product product,HttpSession session,HttpServletRequest request){
		String num = request.getParameter("pageNum");//获取用户要看的页码
		int pageNumber = 1;
		if(num!=null){
			pageNumber = Integer.parseInt(num);
		}		
		List<Product> list=this.healthServiceImpl.findByPage(pageNumber, 5);
		Page page = new Page(pageNumber,5);
		page.setList(list);
		page.setTotalCount(this.healthServiceImpl.findByCount());
		session.setAttribute("list", list);
		session.setAttribute("page", page);
		//System.out.println(product.getDescription());
		return "adm/detail/healthList";
	}
	
}
