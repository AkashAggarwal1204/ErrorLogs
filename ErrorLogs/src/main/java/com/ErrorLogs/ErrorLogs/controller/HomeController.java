package com.ErrorLogs.ErrorLogs.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@Autowired
	DataSource source;

	@RequestMapping(value="/")
	public ModelAndView test(HttpServletResponse response) throws IOException{
		
		return new ModelAndView("home");
	}
	
	@RequestMapping(value="/upload")
	public ModelAndView upload(HttpServletResponse response) throws IOException{
		
		return new ModelAndView("Upload");
	}
	
	@RequestMapping(value="/Search")
	public ModelAndView Search(Model view, HttpServletResponse response) throws IOException, SQLException{
		List<String> list = new ArrayList<String>();
//		list.add(source.getConnection().getMetaData().toString());
		
		view.addAttribute("list",list);
		
		return new ModelAndView("SearchPage");
	}
}
