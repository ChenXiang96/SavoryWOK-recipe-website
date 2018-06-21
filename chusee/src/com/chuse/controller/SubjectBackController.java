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

import com.chuse.entity.Page;
import com.chuse.entity.Product;
import com.chuse.entity.Subject;
import com.chuse.service.impl.SubjectBackServiceImpl;


@Controller
@RequestMapping("/subject")
public class SubjectBackController {

	@Resource
	private SubjectBackServiceImpl subjectBackServiceImpl;


	
	//后台-----------------------------------------------------
	//后-修改商品-修改商品------------
	//后-修改商品-先找到要改的商品
	@RequestMapping("/edit")
	public String edit(@RequestParam(value="pid", required = false) Integer pid,Model model){
		Subject subject=this.subjectBackServiceImpl.findsubject(pid);
		model.addAttribute("Subject", subject);
		System.out.println("xiao"+subject.getPname());
		System.out.println("xiaomi"+subject.getPdesc());
		return "/adm/detail/updateSubject";
	}
	//后-修改商品-调用那个提交修改商品
	@RequestMapping(value="update", method=RequestMethod.POST)
	public String updateBack(@RequestParam(value="pid", required = false) Integer pid,Subject subject,
			@RequestParam("pname") String pname,
			@RequestParam("pdesc") String pdesc) {
		subject=this.subjectBackServiceImpl.findsubject(pid);
		subject.setPname(pname);
		subject.setPdesc(pdesc);
		this.subjectBackServiceImpl.updatesubject(subject);
		System.out.print("aaaaa"+subject.getPname());
		return "redirect:get";
	}
	//后-删除健康
	@RequestMapping("/delete")
	public String deletelist(HttpSession session,@RequestParam(value="pid", required = false) Integer pid){
		Subject subject=this.subjectBackServiceImpl.findsubject(pid);
		System.out.print("con快删啊");
		this.subjectBackServiceImpl.deletesubject(subject,pid);
		return "forward:/subject/get";
	}
	
	
	
	
	//后-添加-添加商品
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String toAdd(Model model){
		//List<subjectType> listtype=this.subjectTypeServiceImpl.listsubjectType();
		//model.addAttribute("listtype", listtype);
		System.out.println("contype");  
		return "/adm/detail/saveSubject";
	}
	//后-添加-添加商品---上传图片
	@RequestMapping(value="add", method=RequestMethod.POST)
	public String addBack(Subject subject,
			@RequestParam("pname") String pname,
			@RequestParam("pdesc") String pdesc
		) {
		subject=this.subjectBackServiceImpl.addsubjectBack(subject);		
		return "redirect:get";
	}

		
	
	
	
	
	
	//后-查-商品列表
	@RequestMapping("/get")
	public String listgoods(Subject subject,HttpSession session,HttpServletRequest request){
		String num = request.getParameter("pageNum");//获取用户要看的页码
		int pageNumber = 1;
		if(num!=null){
			pageNumber = Integer.parseInt(num);
		}		
		List<Subject> list=this.subjectBackServiceImpl.findByPage(pageNumber, 5);
		Page page = new Page(pageNumber,5);
		page.setList(list);
		page.setTotalCount(this.subjectBackServiceImpl.findByCount());
		session.setAttribute("list", list);
		session.setAttribute("page", page);
		//System.out.println(subject.getDescription());
		return "adm/detail/subjectList";
	}
	
}

