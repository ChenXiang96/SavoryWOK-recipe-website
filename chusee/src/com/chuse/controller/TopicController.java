package com.chuse.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.chuse.entity.Food;
import com.chuse.entity.Topic;
import com.chuse.service.FoodServiceImpl;
import com.chuse.service.impl.TopicServiceImpl;

@Controller
@RequestMapping("/topic")
public class TopicController {

	@Resource
	private TopicServiceImpl topicServiceImpl;

	// 显示全部话题
	@RequestMapping("/show")
	public String list(HttpSession session) {
		List<Topic> list = this.topicServiceImpl.listTopics();
		session.setAttribute("tlist", list);

		System.out.println(list.get(0).getTimg());
		return "community";
	}

	@RequestMapping("/list")
	public String test() {
		return "community";
	}

	@RequestMapping(value = "/update")
	public String queryFileData(@RequestParam("uploadfile") CommonsMultipartFile file, HttpServletRequest request,
			HttpSession session, @RequestParam("title") String title, @RequestParam("message") String message)
					throws Exception {

		Topic t = new Topic();
				/*(Topic) session.getAttribute("t");*/
		String url = request.getRealPath("/upload");
		
		try {
			String url1 = request.getRealPath("/upload");
			System.out.println(url1);
			InputStream is1 = file.getInputStream();
			File files = new File(url1, file.getOriginalFilename());
			OutputStream os = new FileOutputStream(files);
		
			String path = file.getOriginalFilename();
		
			t.setTimg(path);
			t.setTcontent(message);
			t.setTtitle(title);
		
			topicServiceImpl.addTopic(t);
		
			int length = 0;
			byte[] buffer = new byte[400];
			while ((length = is1.read(buffer)) != -1) {
				os.write(buffer, 0, length);
			}
		
			os.close();
			is1.close();

			return "1";
		} catch (java.lang.ArithmeticException e) {
			System.out.println("in procedure, catch ArithmeticException: " + e);

			return "2";
		}
	}

}
