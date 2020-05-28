package com.infotech.controller;

/*
import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMethod;


import com.infotech.model.Student;
import com.infotech.model.StudentCredential;
import com.infotech.service.StudentService;
*/
//import java.lang.annotation.Retention;
import java.util.Map;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

//import com.infotech.model.Student;
import com.infotech.model.UserCredential;
import com.infotech.dao.MapDAO;
//import com.infotech.model.StudentCredential;
import com.infotech.model.GoogleMap;
import com.infotech.model.User;

import com.infotech.service.MapService;
import com.infotech.service.UserService;
//import com.infotech.service.UserServiceInterface;


//import java.util.ArrayList;
import java.util.List;

@Controller
//can add @ request mapping here so that every url here need to add one more prefix
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private MapService mapService;
	
	Logger logger=Logger.getLogger("global");
	/*
	@Autowired
	private UserServiceInterface userServiceInterface;
	
	public void setUserServiceInterface(UserServiceInterface userServiceInterface) {
		this.userServiceInterface = userServiceInterface;
	}
	
	public UserServiceInterface getUserServiceInterface() {
		return userServiceInterface;
	}
	*/
	@RequestMapping(value ="/map" ,method=RequestMethod.GET)
	public ModelAndView map(HttpServletRequest request, HttpServletResponse response, HttpSession session){
		HttpSession checkSession = request.getSession(false);
		String user_mail = (String) checkSession.getAttribute("user_mail");
	    
		if (user_mail == "" || user_mail == null) {
			ModelAndView modelAndView = new ModelAndView("redirect:/");
			return modelAndView;
		}
		else {
		ModelAndView modelAndView = new ModelAndView("map");
		List<GoogleMap> mapList = mapService.getMapList();
		logger.info("Check map: " + mapList);
		//logger.info("User List: " + userList);
		modelAndView.addObject("mapList", mapList);
		
		return modelAndView;
		}
	}
	
	@RequestMapping(value="/listUsers" ,method=RequestMethod.GET) // can be (value={"/url1","/url2"})
	public ModelAndView listUsers(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		HttpSession checkSession = request.getSession(false);
		String user_mail = (String) checkSession.getAttribute("user_mail");
	    
		if (user_mail == "" || user_mail == null) {
			ModelAndView modelAndView = new ModelAndView("redirect:/");
			return modelAndView;
		}
		else {
		ModelAndView modelAndView = new ModelAndView("UserList");
		List<User> userList = userService.getUserList();
		logger.info("User List: " + userList);
		modelAndView.addObject("userList", userList);
		
		return modelAndView;
		}
		//return new ModelAndView("listUsers", "listUsersMessage","List of users returned");
		//return new ModelAndView("view name", "model name","model object");
		
	}
	
	
	@RequestMapping(value="/test_msg" ,method=RequestMethod.GET) // can be (value={"/url1","/url2"})
	public String test_msg(Model model) {
		
		//ModelAndView modelAndView = new ModelAndView("UserList");
		//List<User> userList = userService.getUserList();
		//modelAndView.addObject("userList", userList);
		model.addAttribute("listUsersMessage","List of users returned");
		model.addAttribute("listUsersMessage1","List of users returned1");
		
		return "listUsers";
		//return new ModelAndView("listUsers", "listUsersMessage","List of users returned");
		//return new ModelAndView("view name", "model name","model object");
		
	}
	@RequestMapping(value="/test_msg1" ,method=RequestMethod.GET) // can be (value={"/url1","/url2"})
	public String test_msg1(Map<String,Object> map) {
		
		//ModelAndView modelAndView = new ModelAndView("UserList");
		//List<User> userList = userService.getUserList();
		//modelAndView.addObject("userList", userList);
		map.put("listUsersMessage","List of users returned");
		map.put("listUsersMessage1","List of users returned2");
		
		return "listUsers";
		//return new ModelAndView("listUsers", "listUsersMessage","List of users returned");
		//return new ModelAndView("view name", "model name","model object");
		
	}
	@RequestMapping(value ="/" ,method=RequestMethod.GET)
	public String homePage(HttpServletRequest request, HttpSession session){
		HttpSession checkSession = request.getSession(false);
		String user_mail = (String) checkSession.getAttribute("user_mail");
	    
	    logger.info("Check Session email: " + user_mail);
		//modelAndView.addObject("user", student);
		if (user_mail == "" || user_mail == null) {
		  // do something without creating session object.
			return "home";
		}
		else {
			return "redirect:/welcome";
		}
		
	}
	/*
	@RequestMapping(value ="/logout" ,method=RequestMethod.GET)
	public String logOut(HttpServletRequest request, HttpServletResponse response, HttpSession session){
	
	    request.getSession().invalidate();
		//return "redirect:/home";
	    //ModelAndView modelAndView = new ModelAndView("redirect:/home");
		response.sendRedirect("/index");
	    return null; 
	    //return modelAndView;
		
	}
	*/
	@RequestMapping(value="/logout",method = { RequestMethod.POST, RequestMethod.GET })  
	public  String testredirect(HttpServletRequest request, HttpServletResponse response, HttpSession session){  
		request.getSession().invalidate();
	    return "redirect:/";  
	} 
	
	@RequestMapping(value ="/welcome" ,method=RequestMethod.GET)
	public String welcome(HttpServletRequest request, HttpServletResponse response, HttpSession session){
		HttpSession checkSession = request.getSession(false);
		String user_mail = (String) checkSession.getAttribute("user_mail");
	    
		if (user_mail == "" || user_mail == null) {
		  // do something without creating session object.
			return "redirect:/";
		}
		else {
			
			return "welcome";
		}
		
	}
	@RequestMapping(value ="/login_error" ,method=RequestMethod.GET)
	public String login_error(){
		return "notFound";
	}
	@RequestMapping(value ="/user_update" ,method=RequestMethod.GET)
	public String user_update(){
		return "user_update";
	}
	@RequestMapping(value ="/register_success" ,method=RequestMethod.GET)
	public String reg_success(){
		return "reg_success";
	}
	@RequestMapping(value ="/user_reg" ,method=RequestMethod.GET)
	public String user_register_page(Model model) {//Model model){
		//model.addAttribute("student", new Student());
		model.addAttribute("user", new User());//"user" should match with form modelAttribute
		return "user_reg";
	}
	@RequestMapping(value ="/login" ,method=RequestMethod.GET)
	public String loginPage(Model model,HttpServletRequest request, HttpServletResponse response, HttpSession session){
		model.addAttribute("userCredential", new UserCredential());
		
		HttpSession checkSession = request.getSession(false);
		String user_mail = (String) checkSession.getAttribute("user_mail");
	    
		if (user_mail == "" || user_mail == null) {
		  // do something without creating session object.
			return "login";
		}
		else {
			
			return "redirect:/welcome";
		}
		//return "login";
	}
	
	@RequestMapping(value ="/login" ,method=RequestMethod.POST)
	public ModelAndView loginSuccess(@Valid @ModelAttribute("userCredential") UserCredential studentCredential,BindingResult bindingResult, RedirectAttributes redirectAttributes, ModelMap model, HttpServletRequest request, HttpSession session){
		if(bindingResult.hasErrors()){
			return new ModelAndView("login");
			//ModelAndView modelAndView = new ModelAndView("redirect:/login");
			//return modelAndView;
			//model.addAttribute("userCredential", new UserCredential());
			//return new ModelAndView("redirect:/login", model);
		}
		
		ModelAndView modelAndView = new ModelAndView("redirect:/welcome");
		User student = userService.validateUserCredential(studentCredential.getEmail(), studentCredential.getPassword());
		if(student!= null){
			//student.getUseruid();
			session.invalidate();
		    HttpSession newSession = request.getSession(); 
		    
		    newSession.setAttribute("user_mail", studentCredential.getEmail());
		    newSession.setAttribute("user_name", student.getUsername());
		    newSession.setAttribute("user_age", student.getAge());
		    newSession.setAttribute("user_password", studentCredential.getPassword());
		    
		    String user_mail = (String) newSession.getAttribute("user_mail");
		    
		    logger.info("abcdef");
		    logger.info("Session ID: " + newSession.getId());
		    logger.info("Session email: " + user_mail);
			//modelAndView.addObject("user", student);
			redirectAttributes.addFlashAttribute("user", student);
			return modelAndView;
		}else{
			//return "redirect:/listUsers";
			//return new ModelAndView("redirect:/bye");
			 modelAndView = new ModelAndView("redirect:/login_error");
		}
		return modelAndView;
	}
	/*
	@RequestMapping(value="/user_reg_success",method=RequestMethod.POST)
	public ModelAndView user_reg_success(@RequestParam("username") String username, @RequestParam("email") String email,  @RequestParam("age") int age) {
		User user = new User(username,age,email);
		ModelAndView modelAndView = new ModelAndView("user_reg_success");
		modelAndView.addObject("user", user);
		
		return modelAndView;
		//return new ModelAndView("view name", "model name","model object");
	}
	@RequestMapping(value="/user_reg_success1",method=RequestMethod.POST)
	public ModelAndView user_reg_success1(HttpServletRequest request, HttpServletRequest response) {
		//User user = new User(username,age,email);
		String username = request.getParameter("username");
		int age = Integer.parseInt(request.getParameter("age"));
		String email = request.getParameter("email");
		User user = new User(username,age,email);
		ModelAndView modelAndView = new ModelAndView("user_reg_success");
		modelAndView.addObject("user", user);
		
		return modelAndView;
		//return new ModelAndView("view name", "model name","model object");
	}
	@RequestMapping(value="/user_reg_success1_redirect",method=RequestMethod.POST)
	public String user_reg_success1_redirect(HttpServletRequest request, HttpServletRequest response) {
		//User user = new User(username,age,email);
		String username = request.getParameter("username");
		int age = Integer.parseInt(request.getParameter("age"));
		String email = request.getParameter("email");
		User user = new User(username,age,email);
		//ModelAndView modelAndView = new ModelAndView("user_reg_success");
		//modelAndView.addObject("user", user);
		userService.createUser(user);
		return "redirect:/listUsers";
		//return new ModelAndView("view name", "model name","model object");
	}
	@RequestMapping(value="/user_reg_success2",method=RequestMethod.POST)
	public ModelAndView user_reg_success2(@RequestParam Map<String,String> requestMap) {
//@RequestParam("username") String username, @RequestParam("email") String email,  @RequestParam("age") int age
		
		User user = new User(requestMap.get("username"),Integer.parseInt(requestMap.get("age")),requestMap.get("email"));
		ModelAndView modelAndView = new ModelAndView("user_reg_success");
		modelAndView.addObject("user", user);
		
		return modelAndView;
		//return new ModelAndView("view name", "model name","model object");
	}
	*/
	/*
	@RequestMapping(value="/user_reg_success_jsp_form",method=RequestMethod.POST)
	public ModelAndView user_reg_success_jsp_form(@Valid @ModelAttribute("user") User user, BindingResult bindingResult) {
		//User user = new User(username,age,email);
		if(bindingResult.hasErrors()){
			//return "user_reg";
			return new ModelAndView("user_reg");
		}
		//ModelAndView modelAndView = new ModelAndView("user_reg_success");
		//modelAndView.addObject("user", user);
		//userService.createUser(user);
		boolean checkEmail = userService.validateUserEmail(user.getEmail());
		if(checkEmail==true) {
		userService.registerUser(user);
		return new ModelAndView("user_reg", "emailDuplicate","registered success");
		}
		else {
			return new ModelAndView("user_reg", "emailDuplicate","Email has been used already");
		}
		//getUserServiceInterface().registerUser(user);

		//return "redirect:/listUsers";
		//return new ModelAndView("view name", "model name","model object");
	}
	*/
	@RequestMapping(value="/user_reg_success_jsp_form",method=RequestMethod.POST)
	public String user_reg_success_jsp_form(Model model, @Valid @ModelAttribute("user") User user, BindingResult bindingResult,HttpServletRequest request, HttpSession session) {
		//User user = new User(username,age,email);
		if(bindingResult.hasErrors()){
			//return "user_reg";
			return "user_reg";
		}
		
		//ModelAndView modelAndView = new ModelAndView("user_reg_success");
		//modelAndView.addObject("user", user);
		//userService.createUser(user);
		boolean checkEmail = userService.validateUserEmail(user.getEmail());
		if(checkEmail==true) {
		userService.registerUser(user);
		
		
		
		//model.addAttribute("emailDuplicate","registered success");
		return "redirect:/register_success";
		}
		else {
			model.addAttribute("emailDuplicate","Email has been used already");
			return "user_reg";
		}
		//getUserServiceInterface().registerUser(user);

		//return "redirect:/listUsers";
		//return new ModelAndView("view name", "model name","model object");
	}
	
	@RequestMapping(value="/user_update_success_jsp_form",method=RequestMethod.POST)
	public String user_update_success_jsp_form(Model model, @Valid @ModelAttribute("user") User user, BindingResult bindingResult) {
		//User user = new User(username,age,email);
		if(bindingResult.hasErrors()){
			//return "user_reg";
			return "user_update";
		}
		//ModelAndView modelAndView = new ModelAndView("user_reg_success");
		//modelAndView.addObject("user", user);
		//userService.createUser(user);
		userService.updateUser(user);
		//model.addAttribute("emailDuplicate","registered success");
		return "redirect:/register_success";
		//getUserServiceInterface().registerUser(user);

		//return "redirect:/listUsers";
		//return new ModelAndView("view name", "model name","model object");
	}


/*
	@RequestMapping(value="/user/{userName}/{phone}",method=RequestMethod.GET)
	public ModelAndView greet(@PathVariable("userName") String userName, @PathVariable("phone") int phone) {
		return new ModelAndView("listUsers", "listUsersMessage","Hi: "+userName+" phone: "+ phone);
		//return new ModelAndView("view name", "model name","model object");
	}
	@RequestMapping(value="/user1/{userName}/{phone}",method=RequestMethod.GET)
	public ModelAndView greet1(@PathVariable Map<String,String> pathsMap) {
		String userName = pathsMap.get("userName");
		int phone = Integer.parseInt(pathsMap.get("phone"));
		return new ModelAndView("listUsers", "listUsersMessage","Hi: "+userName+" phone: "+ phone);
		//return new ModelAndView("view name", "model name","model object");
	}
	@RequestMapping(value="/user2",method=RequestMethod.GET)
	public ModelAndView greet2(@RequestParam("userName") String userName, @RequestParam("phone") int phone) {
		return new ModelAndView("listUsers", "listUsersMessage","Hi: "+userName+" phone: "+ phone);
		//return new ModelAndView("view name", "model name","model object");
	}
	*/
	/*
	@RequestMapping(value="/deleteUser")
	public ModelAndView deleteUser(Student user) {
		return new ModelAndView("deleteUser", "deleteUserMessage","User data is deleted");
	}
	

*/
	@ModelAttribute
	public void headerMessage(Model model){
		model.addAttribute("headerMessage", "Welcome to Samuel's JSP Web");
		
		
	}
}
