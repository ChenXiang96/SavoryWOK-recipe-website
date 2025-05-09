package com.SavoryWok.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.SavoryWok.entity.Dishes;
import com.SavoryWok.entity.Subject;
import com.SavoryWok.service.DishesService;



@Controller
public class DishesController {
	
	@Resource
	private DishesService DishesService;
	

	@RequestMapping(value="/findByCid/{cid}/{page}")
	public String findByCid(@PathVariable("cid") Integer cid,@PathVariable("page") Integer page
			,Map<String,Object> map){
		List<Dishes> Dishes = DishesService.findByCid(cid, page);
		Integer count = DishesService.CountPageDishesFromCategory(cid);
		if(page > count){
			page = 1;
		}
		
		map.put("dishesList", Dishes);
		map.put("page", page);
		map.put("count",count);
		map.put("cid", cid);
		return "SubCategory";
	}
	
	

		@RequestMapping(value="findByCsid/{csid}/{page}")	
		public String findByCsid(@PathVariable("csid") Integer csid,@PathVariable("page") Integer page
				,Map<String,Object> map){
			Integer count = DishesService.CountPageDishesFromCategorySecond(csid);
			if(page > count){
				page = 1;
			}
			List<Dishes> Dishes = DishesService.findByCsid(csid, page);
			map.put("dishesList", Dishes);
			map.put("page", page);
			map.put("count",count);
			map.put("csid", csid);
			return "SubCategory";
		}

	@RequestMapping(value="getDishById/{id}",method=RequestMethod.GET)
	public String getDishById(@PathVariable("id") Integer id,Map<String,Dishes> map){
		map.put("Dishes", DishesService.getDishById(id));
		return "RecipeDetails";
	}
	
	
	@RequestMapping(value="/findByCsname/{csname:.+}/{page}")
	public String findByCsname(@PathVariable("csname") String csname,
	                          @PathVariable("page") Integer page,
	                          Map<String, Object> map) {

	    System.out.println("The received csname parameter：" + csname);
	    

	    List<Dishes> dishesList = DishesService.findByCsname(csname, page);
	    Integer totalPage = DishesService.countPageByCsname(csname);
	    

	    if(page > totalPage){
	        page = 1;
	    }
	    

	    map.put("dishesList", dishesList); 
	    map.put("page", page);
	    map.put("count", totalPage);
	    map.put("csname", csname);  
	    
	    return "SubCategory";
	}


	
}



















