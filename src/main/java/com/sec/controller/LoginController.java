package com.sec.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.sec.dao.CountIn;
import com.sec.dao.HtmlInterface;
import com.sec.dao.ItJobsInter;
import com.sec.dao.QuizInterface;
import com.sec.dao.UserInterface1;
import com.sec.model.Countcheck;
import com.sec.model.Jobs;
import com.sec.model.LoginCredential;
import com.sec.model.Quiz;
import com.sec.model.User;
import com.sec.service.QuizService;

@RestController
public class LoginController {
	@Autowired
	UserInterface1 us;

	@Autowired
	QuizInterface quiz;

	@Autowired
	ItJobsInter it;
	@Autowired
	CountIn in;

	@Autowired
	HtmlInterface fc;

	@Autowired
	QuizService ser;

	@PostMapping("/signUp")
	public ModelAndView signUp(User user, HttpServletRequest req) {
		ModelAndView model = null;
		try {
			us.save(user);
			HttpSession session = req.getSession();

			session.setAttribute("user", user.getName());
			model = new ModelAndView("redirect:/before.jsp");
			Countcheck c = new Countcheck();
			c.setCount(1);
			c.setDate(new Date());
			in.save(c);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return model;
	}

	@GetMapping("/quiz")
	public ModelAndView getQuizForm() {

		ModelAndView model = null;

		model = new ModelAndView("redirect:/QuizInsertion.html");

		return model;
	}

	@PostMapping("/quizData")
	public ModelAndView saveQuiz(Quiz qu) {

		ModelAndView model = null;

		model = new ModelAndView("redirect:/QuizInsertion.html");
		try {
			quiz.save(qu);
			model.addObject("result", "sucess");
		} catch (Exception e) {
			// TODO
			model.addObject("result", "failed");

		}
		return model;
	}

	@GetMapping("/")
	public ModelAndView jsp(HttpServletRequest req) {
		HttpSession session = req.getSession();

		Countcheck c = new Countcheck();
		c.setCount(1);
		c.setDate(new Date());
		in.save(c);

		ModelAndView model = null;
		List<Quiz> link1 = getQuiz();
		session.setAttribute("xxx", link1);

		List<Jobs> joblist = getJob();
		session.setAttribute("job", joblist);

		model = new ModelAndView("redirect:/index.jsp");
		return model;
	}

	@PostMapping("/userlogin")
	public ModelAndView login(LoginCredential login, HttpServletRequest req) {
		HttpSession session = req.getSession();
		Countcheck c = new Countcheck();
		c.setCount(1);
		c.setDate(new Date());
		in.save(c);
		ModelAndView model = null;
		User user = us.findByEmail(login.getEmail());
		List<Jobs> joblist = getJob();
		session.setAttribute("job", joblist);
		List<Quiz> link1 = getQuiz();
		session.setAttribute("xxx", link1);
		if (user.getEmail().equals(login.getEmail()) && user.getPass().equals(login.getPass())) {
			model = new ModelAndView("redirect:/before.jsp");
			model.addObject("user", user.getName());
			session.setAttribute("user", user.getName());

			// model.addObject("link",
			// "https://docs.google.com/forms/d/1M2ABFVgz4e5TH2Z71sFrV4kIr-cpyREaUQBfOwP4Pq0/edit");
			// model.addObject("quiz12", link1.get(0).getName());
			return model;
		} else {
			model = new ModelAndView("redirect:/failed.html");
			return model;
		}
	}

	public List<Quiz> getQuiz() {
		List<Quiz> link1 = ser.getData();
		return link1;

	}

	public List<Jobs> getJob() {
		List<Jobs> jobList = ser.getJobsData();

		return jobList;

	}

	@GetMapping("/getQuestion")
	public ModelAndView getQuestion() {
		Countcheck c = new Countcheck();
		c.setCount(1);
		c.setDate(new Date());
		in.save(c);
		ModelAndView model;
		model = new ModelAndView("redirect:/javainterview.html");
		return model;
	}

	@GetMapping("/getSpringBoot")
	public ModelAndView getSpringBoot() {
		Countcheck c = new Countcheck();
		c.setCount(1);
		c.setDate(new Date());
		in.save(c);
		ModelAndView model;
		model = new ModelAndView("redirect:/springboot.html");
		return model;
	}

	@GetMapping("/jobs")
	public ModelAndView getJobsForm() {

		ModelAndView model = null;

		model = new ModelAndView("redirect:/job.html");

		return model;
	}

	@PostMapping("/jobpost")
	public ModelAndView saveJobs(Jobs job) {

		ModelAndView model = null;

		model = new ModelAndView("redirect:/job.html");
		try {
			it.save(job);
			model.addObject("result", "sucess");
		} catch (Exception e) {
			model.addObject("result", "failed");

		}
		return model;
	}
}
