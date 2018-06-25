package com.chuse.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.chuse.entity.Howdo;
import com.chuse.entity.Material;
import com.chuse.entity.Page;
import com.chuse.entity.Product;
import com.chuse.entity.User;
import com.chuse.service.impl.HealthServiceImpl;

@Controller
@RequestMapping("/health")
public class HealthController {

	
	@Resource
	private HealthServiceImpl healthServiceImpl;
	//前------------------------------------------------------
	@RequestMapping("/howdo")

	public String findHowdo(@RequestParam(value="pid", required = false) Integer pid,Model model, @RequestParam(value="uid", required = false) Integer uid
			){
		Product product=this.healthServiceImpl.findHowdoP(pid);
//		User user=this.healthServiceImpl.findHowdoU(uid);
//		Material material=this.healthServiceImpl.findHowdoM(mid);
//		Howdo howdo=this.healthServiceImpl.findHowdoH(hid);
		model.addAttribute("product", product);
//		model.addAttribute("user", user);
//		model.addAttribute("material", material);
//		model.addAttribute("howdo", howdo);
		return "foodlist";
	}
	
	
	
	
	
	
	
	
	
	//前-查-在商品页面显示商品列表
	@RequestMapping("/list")
	public String list(HttpSession session){
			List<Product> list=this.healthServiceImpl.listProducts();
			session.setAttribute("list", list);
			System.out.print("con");
			return "cookbook";
	}
	
	@RequestMapping("/list1")
	public String list1(HttpSession session){
			List<Product> list=this.healthServiceImpl.listProducts();
			session.setAttribute("list", list);
			System.out.print("con");
			return "index";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	//后台-----------------------------------------------------
	//后-修改商品-修改商品------------
	//后-修改商品-先找到要改的商品
	@RequestMapping("/edit")
	public String edit(@RequestParam(value="pid", required = false) Integer pid,Model model){
		//List<ProductType> listtype=this.productTypeServiceImpl.listProductType();
		//model.addAttribute("listtype", listtype);
		Product product=this.healthServiceImpl.findProduct(pid);
		model.addAttribute("product", product);
		System.out.println("xiao"+product.getPname());
		System.out.println("xiaomi"+product.getPdesc());
		return "/adm/detail/updateHealth";
	}
	//后-修改商品-调用那个提交修改商品
	@RequestMapping(value="update", method=RequestMethod.POST)
	public String updateBack(@RequestParam(value="pid", required = false) Integer pid,Product product,
			@RequestParam("pname") String pname,
			@RequestParam("pdesc") String pdesc) {
		product=this.healthServiceImpl.findProduct(pid);
		product.setPname(pname);
		product.setPdesc(pdesc);
		this.healthServiceImpl.updateProduct(product);
		System.out.print("aaaaa"+product.getPname());
		return "redirect:get";//重新跳转到健康列表页面
	}
	//后-删除健康
	@RequestMapping("/delete")
	public String deletelist(HttpSession session,@RequestParam(value="pid", required = false) Integer pid){
		Product product=this.healthServiceImpl.findProduct(pid);
		System.out.print("con快删啊");
		this.healthServiceImpl.deleteProduct(product,pid);
		return "forward:/health/get";
	}
	
	
	
	
	//后-添加-添加商品
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String toAdd(Model model){
		//List<ProductType> listtype=this.productTypeServiceImpl.listProductType();
		//model.addAttribute("listtype", listtype);
		System.out.println("contype");  
		return "/adm/detail/saveHealth";
	}
	//后-添加-添加商品---上传图片
	@RequestMapping(value="add", method=RequestMethod.POST)
	public String addBack(Product product,
			@RequestParam("pname") String pname,
			@RequestParam("pdesc") String pdesc
		) {
		product=this.healthServiceImpl.addProductBack(product);		
		return "redirect:get";
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
