package app.ncs.green;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import Service.DiaryService;


@Controller
public class DiaryController {
	@Autowired
	DiaryService service;
	
	@RequestMapping(value = "/dList", method = RequestMethod.GET)
	public ModelAndView dList(ModelAndView mv) {
				mv.addObject("info",service.selectList());
				mv.setViewName("home");
		return mv;
	}
}
