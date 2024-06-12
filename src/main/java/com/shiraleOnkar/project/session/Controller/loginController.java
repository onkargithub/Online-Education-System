package com.shiraleOnkar.project.session.Controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shiraleOnkar.project.session.Model.Contact;
import com.shiraleOnkar.project.session.Model.Login;

@Controller
public class loginController {
	
	@Autowired
	SessionFactory sf;
	//private Object loginService;
	
	@RequestMapping("/") // localhost:8080
	public String loginn() {
		return "login";
		
	}
	
	@RequestMapping("/login")
	public String logind(Login login, Model model) {
		Session s= sf.openSession();
		Login dblogin=s.get(Login.class, login.getPassword());
		
		String msg = null;
		String page = "login";
		if (dblogin != null) {
			if (login.getUsername().equals(dblogin.getUsername())) {
				page= "home";
			} else {
				msg= "Invalid Username";

			}
			
		} else {
			msg= "Invalid Password";

		} 
		model.addAttribute("msg",msg);
		return page;
	}
	
	
	@RequestMapping("/logpage") // localhost:8080
	public String log() {
		return "login";
		
	}

	
	
	@RequestMapping("createaccountpage")
	public String createaccountpage() {
		return "createaccount";
		
	}
	
	
	@RequestMapping("/createaccount")
	public String createaccountpageDB(Login login) {
		Session s=sf.openSession();
		Transaction t=s.beginTransaction();
		s.save(login);
		t.commit();
		return "login";
		
	}
	
	@RequestMapping("homepage")
	public String homepage() {
		return "home";
		
	}
	
	@RequestMapping("aboutpage")
	public String aboutpage() {
		return "about";
		
	}
	
	@RequestMapping("coursepage")
	public String coursepage() {
		return "course";
		
	}	
	
	@RequestMapping("contactpage")
	public String contactPage() {
		return "contact";
		
	}	
	
	@RequestMapping("/contact")
	public String createaccountpageDB(Contact contact) {
		Session s=sf.openSession();
		Transaction t=s.beginTransaction();
		s.save(contact);
		t.commit();
		return "contact";
		
	}
	@RequestMapping("deleteaccount")
	public String deletePage() {
		return "delete";
		
	}
	@RequestMapping("/delete")
	public ModelAndView Delete(Login login, Model model) {
		System.out.println(login.getUsername());
		Session s=sf.openSession();
		Transaction t=s.beginTransaction();
	//	Login login1=s.get(Login.class,login.getUsername());
		
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("login");
		
		s.delete(login);
		t.commit();
		return mv;
		
	}
	

	
	
	
	
	
}