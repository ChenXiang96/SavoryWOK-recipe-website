package com.SavoryWok.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.SavoryWok.entity.Dishes;
import com.SavoryWok.entity.Howdo;
import com.SavoryWok.entity.Material;
import com.SavoryWok.entity.Page;
import com.SavoryWok.entity.User;
import com.SavoryWok.service.impl.HealthServiceImpl;

@Controller
@RequestMapping("/health")
public class HealthController {

	
	@Resource
	private HealthServiceImpl healthServiceImpl;

	@RequestMapping("/howdo")

	public String findHowdo(@RequestParam(value="id", required = false) Integer id,Model model, @RequestParam(value="uid", required = false) Integer uid
			){
		Dishes Dishes=this.healthServiceImpl.findHowdoP(id);

		model.addAttribute("Dishes", Dishes);

		return "foodlist";
	}
	

	@RequestMapping("/list/{page}")
	public String listByPage(
	    @PathVariable("page") Integer page,
	    HttpSession session,
	    Map<String,Object> map
	){
	    int pageSize = 24;
	    Integer totalCount = this.healthServiceImpl.countAllDishes();
	    Integer totalPages = totalCount == 0 ? 1 : (int) Math.ceil((double)totalCount / pageSize);
	    page = Math.max(1, Math.min(page, totalPages));
	    List<Dishes> list = this.healthServiceImpl.listDishesByPage(page, pageSize);
	    map.put("dishesList", list);
	    map.put("currentPage", page);
	    map.put("totalPages", totalPages);

	    session.setAttribute("activeMenu", "recipe");
	    return "RecipeList";
	}


	@RequestMapping("/list1")
	public String list1(HttpSession session){
			List<Dishes> list=this.healthServiceImpl.listDishes();
			session.setAttribute("list", list);
			return "index";
	}


	@RequestMapping("/edit")
	public String edit(@RequestParam(value="id", required = false) Integer id,Model model){
		Dishes dishes=this.healthServiceImpl.findDishes(id);
		if (dishes == null) {
			return "redirect:/error/notFound"; 
		}
		model.addAttribute("dishes", dishes);
		System.out.println("xiao"+dishes.getName());
		System.out.println("xiaomi"+dishes.getPdesc());
		return "adm/detail/updateHealth";
	}

	@RequestMapping(value="update", method=RequestMethod.POST)
	public String updateBack(@RequestParam(value="id", required = false) Integer id,Dishes Dishes,
			@RequestParam("name") String name,
			@RequestParam("pdesc") String pdesc) {
		Dishes=this.healthServiceImpl.findDishes(id);
		Dishes.setName(name);
		Dishes.setPdesc(pdesc);
		this.healthServiceImpl.updateDishes(Dishes);
		return "redirect:get";
	}

	@RequestMapping("/delete")
	public String deletelist(HttpSession session,@RequestParam(value="id", required = false) Integer id){
		Dishes Dishes=this.healthServiceImpl.findDishes(id);
		this.healthServiceImpl.deleteDishes(Dishes,id);
		return "forward:/health/get";
	}
	

	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String toAdd(Model model){
		System.out.println("contype");  
		return "/adm/detail/saveHealth";
	}

	@RequestMapping(value="add", method=RequestMethod.POST)
	public String addBack(Dishes Dishes,
			@RequestParam("name") String name,
			@RequestParam("pdesc") String pdesc
		) {
		Dishes=this.healthServiceImpl.addDishesBack(Dishes);		
		return "redirect:get";
	}


	@RequestMapping("/get")
	public String listgoods(Dishes Dishes,HttpSession session,HttpServletRequest request){
		String num = request.getParameter("pageNum");
		int pageNumber = 1;
		if(num!=null){
			pageNumber = Integer.parseInt(num);
		}		
		List<Dishes> list=this.healthServiceImpl.findByPage(pageNumber, 5);
		Page page = new Page(pageNumber,5);
		page.setList(list);
		page.setTotalCount(this.healthServiceImpl.findByCount());
		session.setAttribute("list", list);
		session.setAttribute("page", page);

		return "adm/detail/healthList";
	}
	
}
