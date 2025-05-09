package com.SavoryWok.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ExploreController {
    
    @GetMapping("/location")
    public String showLocationPage(HttpServletRequest request) {
        request.getSession().setAttribute("activeMenu", "Explore");
        return "Explore";
    }
}
