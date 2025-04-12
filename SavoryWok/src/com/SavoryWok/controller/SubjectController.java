package com.SavoryWok.controller;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import com.SavoryWok.service.CategoryService2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.SavoryWok.dao.CategorySecondGroupDao;
import com.SavoryWok.entity.Category2;
import com.SavoryWok.entity.CategorySecond;
import com.SavoryWok.entity.CategorySecond2;
import com.SavoryWok.entity.Dishes;
import com.SavoryWok.entity.Subject;
import com.SavoryWok.service.CategorySecond2Service;
import com.SavoryWok.service.CategoryService;

import com.SavoryWok.service.DishesService;
import com.SavoryWok.service.SubjectService;

@Controller
public class SubjectController {

	@Resource
	private SubjectService subjectService;
	
	@Resource
	private CategoryService categoryService;

	@Resource
	private DishesService DishesService;
	

	
	@Resource // 添加DAO注入
	private CategorySecondGroupDao categorySecondGroupDao;
	
	
	@RequestMapping("/getHealthaa")
	public String get(@RequestParam(value="pid", required = false) Integer pid,Model model){
		Subject subject=this.subjectService.findSubject(pid);
		model.addAttribute("subject", subject);
		return "zhuantixiangqing";
	}
	

	
	//首页上跳转至健康
		@RequestMapping(value="/myHealth")

		public String showIndex(Map<String,Object> map,HttpSession session){

			//把最热的10条商品添加到map集合中
			map.put("hList", subjectService.findHHot());
			session.setAttribute("activeMenu", "health");
			
			session.setAttribute("cList2", categoryService2.getCategory2());
			map.put("nList2", subjectService.findNew2());
			
			return "health"; 
		}
		

		
		
	//首页中点击专题一级分类查询商品
		    @Autowired
		    private CategoryService2 categoryService2;
		    
		 	@RequestMapping(value="/findByCaid/{caid}/{page}")
			public String findByCaid(@PathVariable("caid") Integer caid,@PathVariable("page") Integer page
					,Map<String,Object> map){
		 	    // 1. 获取主分类信息
		 	    Category2 category = categoryService2.getCategory2ById(caid);
		 	    map.put("caname", category.getCaname());
		 	    map.put("title_description", category.getTitle_description());
	            
		 	    map.put("title_banner_img", category.getTitle_banner_img());
			    
			    // 2. 获取该分类下的所有子分类
			    List<CategorySecond2> subCategories = categorySecond2Service.findByCaid(caid);
			    
			    map.put("subCategories", subCategories);
			    
			    
			    // 3. 获取所有子分类的菜品（合并）
			    List<Dishes> allDishes = new ArrayList<>();
			    Map<Integer, List<Dishes>> categoryDishesMap = new LinkedHashMap<>();
			    
			    for (CategorySecond2 sub : subCategories) {
			        List<Dishes> dishes = dishesService.findDishesByCasid(sub.getCasid());
			        categoryDishesMap.put(sub.getCasid(), dishes);
			        allDishes.addAll(dishes);
			    }
			    
			    map.put("categoryDishesMap", categoryDishesMap);
			    map.put("allDishes", allDishes);
			    
				List<Subject> subjects = subjectService.findByCaid(caid, page);
				Integer count = subjectService.CountPageSubjectFromCategory2(caid);
				if(page > count){
					page = 1;
				}
				map.put("subjects", subjects);
				//把当前的页数存放到map中
				map.put("page", page);
				//总共有多少页
				map.put("count",count);
				map.put("caid", caid);
				return "zhuantixiangqing2";
			}
			//根据专题二级分类查询商品
			@Autowired
		    private CategorySecond2Service categorySecond2Service;
			
			@Autowired
			private DishesService dishesService;
			
			
			
			@RequestMapping(value="findByCasid/{casid}/{page}")	
			public String findByCasid(@PathVariable("casid") Integer casid,@PathVariable("page") Integer page
					,Map<String,Object> map){
				CategorySecond2 cs = categorySecond2Service.getCategorySecond2ById(casid);
				
				Integer count = subjectService.CountPageSubjectFromCategorySecond2(casid);
				
				if(page > count){
					page = 1;
				}
				List<Subject> subjects = subjectService.findByCasid(casid, page);
				
				List<Dishes> dishesList = dishesService.findDishesByCasid(casid);
				
			    map.put("dishesList", dishesList);
				map.put("subjects", subjects);
				map.put("casname", cs.getCasname()); 
				
				map.put("title_banner_img", cs.getTitle_banner_img());
				//把当前的页数存放到map中
				map.put("page", page);
				//总共有多少页
				map.put("count",count);
				map.put("casid", casid);
				return "zhuantixiangqing";
			}

			//根据专题pid查询菜品
				@RequestMapping(value="findByPid2/{pid}",method=RequestMethod.GET)
				public String findByPid2(@PathVariable("pid") Integer pid,Map<String,Subject> map){
					map.put("subject", subjectService.findByPid2(pid));
					return "zhuantixiangqing";
				}

	
	
	
	
}
