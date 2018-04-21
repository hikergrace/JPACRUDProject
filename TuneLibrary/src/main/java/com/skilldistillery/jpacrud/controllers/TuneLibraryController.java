package com.skilldistillery.jpacrud.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.jpacrud.data.TuneDAO;
import com.skilldistillery.jpacrud.entities.Tune;

@Controller
public class TuneLibraryController {
	
	@Autowired
	private TuneDAO dao;
	
	
	@RequestMapping(path="addATune.do", method=RequestMethod.GET)
	public ModelAndView addATuneForm() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("WEB-INF/views/addTune.jsp");
		return mv;
	}
	
	@RequestMapping(path="getTune.do", method=RequestMethod.GET)
	public ModelAndView getTune(@RequestParam(name="id") Integer tuneId) {
		ModelAndView mv = new ModelAndView();
		Tune t = dao.retreiveById(tuneId);
		mv.addObject("tune", t);
		mv.setViewName("WEB-INF/views/showTune.jsp");
		return mv;
	}
	
	@RequestMapping(path="tunes.do", method= RequestMethod.GET)
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		List<Tune> tuneList = dao.index();
		mv.addObject("tuneList", tuneList);
		mv.setViewName("WEB-INF/views/index.jsp");
		return mv;
	}
	
	@RequestMapping(path = "addTune.do", method = RequestMethod.POST)
	public ModelAndView addTune(Tune tune) {
		ModelAndView mv = new ModelAndView();
		dao.create(tune);
		mv.addObject("tune", tune);
		mv.setViewName("/WEB-INF/views/showTune.jsp");
		return mv;
	}
	
//	@RequestMapping(path="updateATune.do", method=RequestMethod.GET)
//	public ModelAndView updateATuneForm() {
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("WEB-INF/views/updateTune.jsp");
//		return mv;
//	}
	
	@RequestMapping(path = "updateTune.do", method = RequestMethod.POST)
	public ModelAndView updateTune(Tune tune) {
		ModelAndView mv = new ModelAndView();
		dao.update(tune);
		mv.addObject("tune", tune);
		mv.setViewName("/WEB-INF/views/showTune.jsp");
		return mv;
	}
	
	@RequestMapping(path = "delete.do", method = RequestMethod.POST)
	public ModelAndView delete(@RequestParam(name="id") Integer tuneId) {
	dao.delete(tuneId);
	ModelAndView mv = new ModelAndView();
	mv.setViewName("WEB-INF/views/index.jsp");
	return mv;
	}
}
