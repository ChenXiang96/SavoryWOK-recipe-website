package com.chuse.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommentController {

	
	@RequestMapping("commentshow")
	public String showcomment(){
		return "comment";
	}
}
