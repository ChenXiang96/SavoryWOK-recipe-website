package com.SavoryWok.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.SavoryWok.entity.Dishes;
import com.SavoryWok.entity.Page;
import com.SavoryWok.entity.Subject;
import com.SavoryWok.service.impl.SubjectBackServiceImpl;


@Controller
@RequestMapping("/subject")
public class SubjectBackController {

	@Resource
	private SubjectBackServiceImpl subjectBackServiceImpl;

	@RequestMapping("/edit")
	public String edit(@RequestParam(value="pid", required = false) Integer pid,Model model){
		Subject subject=this.subjectBackServiceImpl.findSubject(pid);
		if (subject == null) {
			return "redirect:/error/notFound"; 
		}
		model.addAttribute("subject", subject);
		
		System.out.println("xiao" + subject.getPname()); 
		System.out.println("xiaomi"+subject.getPdesc());
		return "adm/detail/updateSubject";
	}

	@RequestMapping(value="update", method=RequestMethod.POST)
	public String updateBack(@RequestParam("pid") Integer pid,Subject subject,
			@RequestParam("pname") String pname,
			@RequestParam("pdesc") String pdesc) {
		subject=this.subjectBackServiceImpl.findSubject(pid);
		subject.setPname(pname);
		subject.setPdesc(pdesc);
		this.subjectBackServiceImpl.updatesubject(subject);
		System.out.print("aaaaa"+subject.getPname());
		return "redirect:get";
	}

	@RequestMapping("/delete")
	public String deletelist(HttpSession session,@RequestParam(value="pid", required = false) Integer pid){
		Subject subject=this.subjectBackServiceImpl.findSubject(pid);
		this.subjectBackServiceImpl.deletesubject(subject,pid);
		return "forward:/subject/get";
	}
	
	
	
	

	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String toAdd(Model model){
		
		System.out.println("contype");  
		return "/adm/detail/saveSubject";
	}

	@RequestMapping(value="add", method=RequestMethod.POST)
	public String addBack(Subject subject,
			@RequestParam("pname") String pname,
			@RequestParam("pdesc") String pdesc
		) {
		subject=this.subjectBackServiceImpl.addsubjectBack(subject);		
		return "redirect:get";
	}


	@RequestMapping("/get")
	public String listgoods(Subject subject,HttpSession session,HttpServletRequest request){
		String num = request.getParameter("pageNum");
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
		return "adm/detail/subjectList";
	}
	
}

