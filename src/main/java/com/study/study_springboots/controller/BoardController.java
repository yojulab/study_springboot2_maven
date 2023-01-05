package com.study.study_springboots.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardController {
    @RequestMapping(value = "/board/form", method = RequestMethod.GET)
    public String form() {
        return "/WEB-INF/views/board/form.jsp";
    }
    @RequestMapping(value = "/board/form", method = RequestMethod.POST)
    public String formPost() {
        // insert biz
        return "/WEB-INF/views/board/list.jsp";
    }
    @RequestMapping(value = "/board/temp", method = RequestMethod.GET)
    public ModelAndView temp() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("searchString", "firstValue");
        modelAndView.setViewName("/WEB-INF/views/board/temp.jsp");
        // insert biz
        return modelAndView;
    }

}
