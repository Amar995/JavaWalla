package com.sec.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.sec.dao.HtmlInterface;
import com.sec.dao.ItJobsInter;
import com.sec.model.MockTestHTMLPage;
import com.sec.service.PageService;

@RestController
public class PageController {

	@Autowired
	HtmlInterface fc;

	@Autowired
	PageService page;
	@Autowired
	ItJobsInter job;

	@GetMapping("/page")
	public ModelAndView getQuizForm() {

		ModelAndView model = null;

		model = new ModelAndView("redirect:/pageInsertion.html");

		return model;
	}

	@PostMapping("/pageInsert")
	public ModelAndView savePage(MockTestHTMLPage qu) {

		ModelAndView model = null;

		model = new ModelAndView("redirect:/pageInsertion.html");
		try {
			fc.save(qu);
			model.addObject("result", "sucess");
		} catch (Exception e) {
			// TODO
			model.addObject("result", "failed");

		}
		return model;
	}

	@GetMapping("/getPage/{name}")
	public String getPageForm(@PathVariable String name) {

		List<MockTestHTMLPage> m = page.getData(name);
		String s = null;
		for (MockTestHTMLPage moc : m) {
			s = moc.getPage();

		}
		System.out.println(s);
		return s;
	}

//	@GetMapping("/getJobs")
//	public String getJob() {
// 
//		List<LatestJobs> jo=page.getJobData();
//		String s = null;
//		for(LatestJobs moc:jo)
//		{
//		s=moc.getName();
//		
//		}
//		System.out.println(s);
//		return s;	}
}
