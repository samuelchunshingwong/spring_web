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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
//import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

//import com.infotech.model.Student;
import com.infotech.model.UserCredential;
import com.google.gson.Gson;
import com.infotech.dao.MapDAO;
import com.infotech.model.CovidMap;
//import com.infotech.model.StudentCredential;
import com.infotech.model.GoogleMap;
import com.infotech.model.User;
import com.infotech.service.CovidMapService;
import com.infotech.service.MapService;
import com.infotech.service.UserService;
//import com.infotech.service.UserServiceInterface;

import java.sql.Date;
//import java.util.ArrayList;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;

@Controller
//can add @ request mapping here so that every url here need to add one more prefix
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private MapService mapService;
	
	@Autowired
	private CovidMapService covidmapService;
	
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
	
	@RequestMapping(value ="/covid_map" ,method=RequestMethod.GET)
	public ModelAndView covid_map(HttpServletRequest request, HttpServletResponse response, HttpSession session){
		HttpSession checkSession = request.getSession(false);
		String user_mail = (String) checkSession.getAttribute("user_mail");
	    
		if (user_mail == "" || user_mail == null) {
			ModelAndView modelAndView = new ModelAndView("redirect:/");
			return modelAndView;
		}
		else {
		ModelAndView modelAndView = new ModelAndView("covid_map");
		List<CovidMap> mapList = covidmapService.getMapList();
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
	@RequestMapping(value ="/insert_map" ,method=RequestMethod.GET)
	public String insert_map(Model model, HttpServletRequest request, HttpServletResponse response, HttpSession session){
		HttpSession checkSession = request.getSession(false);
		String user_mail = (String) checkSession.getAttribute("user_mail");
		String user_admin = (String) checkSession.getAttribute("user_admin");
		logger.info("insert map Session admin: " + user_admin);
		model.addAttribute("map", new GoogleMap());
		
		if (user_mail == "" || user_mail == null) {
		  // do something without creating session object.
			return "redirect:/";
		}
		else {
			
			if (user_admin.equals("Y")) {
			return "add_location";
			}
			else {
				return "redirect:/welcome";
			}
		}
		
	}
	@RequestMapping(value ="/insert_covid_map" ,method=RequestMethod.GET)
	public String insert_covid_map(Model model, HttpServletRequest request, HttpServletResponse response, HttpSession session){
		HttpSession checkSession = request.getSession(false);
		String user_mail = (String) checkSession.getAttribute("user_mail");
		String user_admin = (String) checkSession.getAttribute("user_admin");
		logger.info("insert covid map Session admin: " + user_admin);
		model.addAttribute("map", new CovidMap());
		
		if (user_mail == "" || user_mail == null) {
		  // do something without creating session object.
			return "redirect:/";
		}
		else {
			
			if (user_admin.equals("Y")) {
			return "add_covid_location";
			}
			else {
				return "redirect:/welcome";
			}
		}
		
	}
	@RequestMapping(value ="/insert_mass_map" ,method=RequestMethod.GET)
	public String insert_mass_map( HttpServletRequest request, HttpServletResponse response, HttpSession session){
		HttpSession checkSession = request.getSession(false);
		String user_mail = (String) checkSession.getAttribute("user_mail");
		String user_admin = (String) checkSession.getAttribute("user_admin");
		logger.info("insert mass map Session admin: " + user_admin);
		
		
		if (user_mail == "" || user_mail == null) {
		  // do something without creating session object.
			return "redirect:/";
		}
		else {
			
			if (user_admin.equals("Y")) {
			return "add_mass_location";
			}
			else {
				return "redirect:/welcome";
			}
		}
		
	}
	
	@RequestMapping(value ="/search_email" ,method=RequestMethod.GET)
	public String search_name( HttpServletRequest request, HttpServletResponse response, HttpSession session){
		HttpSession checkSession = request.getSession(false);
		String user_mail = (String) checkSession.getAttribute("user_mail");
		String user_admin = (String) checkSession.getAttribute("user_admin");
		logger.info("insert mass map Session admin: " + user_admin);
		
		
		if (user_mail == "" || user_mail == null) {
		  // do something without creating session object.
			return "redirect:/";
		}
		else {
			
			if (user_admin.equals("Y")) {
			return "search_name";
			}
			else {
				return "redirect:/welcome";
			}
		}
		
	}
	/*
	@RequestMapping(value ="/user_reg" ,method=RequestMethod.GET)
	public String user_register_page(Model model) {//Model model){
		//model.addAttribute("student", new Student());
		model.addAttribute("user", new User());//"user" should match with form modelAttribute
		return "user_reg";
	}
	*/
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
	/*
	@RequestMapping(value ="/add_location_success" ,method=RequestMethod.GET)
	public String loc_success(){
		return "loc_success";
	}
	*/
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
		    newSession.setAttribute("user_admin", student.getAdmin());
		    newSession.setAttribute("user_password", studentCredential.getPassword());
		    
		    String user_mail = (String) newSession.getAttribute("user_mail");
		    String user_admin = (String) newSession.getAttribute("user_admin");
		    
		    logger.info("abcdef");
		    logger.info("Session ID: " + newSession.getId());
		    logger.info("Session email: " + user_mail);
		    logger.info("Session admin: " + user_admin);
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
	
	
	@RequestMapping(value="/add_loc_success_jsp_form",method=RequestMethod.POST)
	public String add_loc_success_jsp_form(Model model, @Valid @ModelAttribute("map") GoogleMap googlemap, BindingResult bindingResult,HttpServletRequest request, HttpSession session) {
		//User user = new User(username,age,email);
		if(bindingResult.hasErrors()){
			//return "user_reg";
			return "add_location";
		}
		
		
		mapService.registerMap(googlemap);
		
		
		
		//model.addAttribute("emailDuplicate","registered success");
		return "redirect:/map";
		
		
	}
	@RequestMapping(value="/test", method=RequestMethod.GET)
	@ResponseBody
	public String foo() {
	    return "Response!";
	}
	
	@RequestMapping(value="/test2", method=RequestMethod.GET)
	@ResponseBody
	public String foo2() {
		final String uri = "https://maps.googleapis.com/maps/api/geocode/json?address=+hong+kong&key=AIzaSyCXYcuqtMiI25WK3agjWnw5Gd7Gv3hm8eg";

	    RestTemplate restTemplate = new RestTemplate();
	    String result = restTemplate.getForObject(uri, String.class);
	    //need to get json
	    
	    return result;

	}
	
	@RequestMapping(value="/covidlist", method=RequestMethod.GET)
	@ResponseBody
	public String covidlist() {
		List<CovidMap> mapList = covidmapService.getMapList();
		String json = new Gson().toJson(mapList);
	    return json;

	}
	
	@RequestMapping(value="/covidlistbytype", method=RequestMethod.GET)
	@ResponseBody
	public String covidlistbytype() {
		List<CovidMap> mapList = covidmapService.getMapListByType();
		String json = new Gson().toJson(mapList);
	    return json;

	}
	
	
	
	@RequestMapping(value="/test3", method=RequestMethod.GET)
	@ResponseBody
	public String foo3() {
		final String uri = "https://maps.googleapis.com/maps/api/geocode/json?address=+hong+kong&key=AIzaSyCXYcuqtMiI25WK3agjWnw5Gd7Gv3hm8eg";

	    RestTemplate restTemplate = new RestTemplate();
	    String result = restTemplate.getForObject(uri, String.class);
	    //need to get json
	    JSONObject json = new JSONObject(result);
	    
	    JSONArray JsonArray = json.getJSONArray("results");
  
	    JSONObject jsonObject = JsonArray.getJSONObject(0);

	    double lat = jsonObject.getJSONObject("geometry").getJSONObject("location").getDouble("lat");
	    double lng = jsonObject.getJSONObject("geometry").getJSONObject("location").getDouble("lng");
	      
	    String lats=String.valueOf(lat); 
	    String lngs=String.valueOf(lng); 
	    String s = lats.concat(","); 
	    s = s.concat(lngs);
	     
	    return s;
	    //return result;

	}
	
	private static void getTest()
	{
	    final String uri = "http://localhost:8080/springweb/test";

	    RestTemplate restTemplate = new RestTemplate();
	    String result = restTemplate.getForObject(uri, String.class);

	    System.out.println(result);
	}
	
	@RequestMapping(value="/add_covid_success_jsp_form",method=RequestMethod.POST)
	public String add_covid_success_jsp_form(Model model, @Valid @ModelAttribute("map") CovidMap covidmap, BindingResult bindingResult,HttpServletRequest request, HttpSession session) {
		
		//Date datetime = covidmap.getVisit_date();
		//logger.info("Check visit date: " + datetime);
		if(bindingResult.hasErrors()){
			//return "user_reg";
			return "add_covid_location";
		}	
		
		covidmapService.registerCovidMap(covidmap);

		//model.addAttribute("emailDuplicate","registered success");
		return "redirect:/covid_map";
		
		
	}
	
	@RequestMapping(value="/search_email_success_jsp_form",method=RequestMethod.POST)
	public ModelAndView search_email_success_jsp_form(HttpServletRequest request, HttpSession session) {
		
		//Date datetime = covidmap.getVisit_date();
		//logger.info("Check visit date: " + datetime);
		 String search_input = request.getParameter("search_name");
		 //String[] lines = mass_input.split(System.getProperty("line.separator"));
		 ModelAndView modelAndView = new ModelAndView("search_name_result");
		 
		// List<User> userList = userService.getUserList();
			List<User> searchList = userService.getListByName(search_input);//need name para
			logger.info("Check search: " + searchList);
			//logger.info("User List: " + userList);
			modelAndView.addObject("searchList", searchList);
			
			return modelAndView;

		
		//return "search_name_result";	
		
	}
	
	@RequestMapping(value="/add_mass_covid_success_jsp_form",method=RequestMethod.POST)
	public String add_mass_covid_success_jsp_form(HttpServletRequest request, HttpSession session) {
		
		//Date datetime = covidmap.getVisit_date();
		//logger.info("Check visit date: " + datetime);
		 String mass_input = request.getParameter("loc_name");
		 String[] lines = mass_input.split(System.getProperty("line.separator"));
		 //logger.info("Check mass input: " + lines);
		 covidmapService.dropCovidMap();
		 
		 for (int i = 0; i < lines.length; i++) {
			  //System.out.println(lines[i]);
			  logger.info("Check mass line: "+i+": " + lines[i]);
			  
			  String[] covid_string = lines[i].split(",(?=(?:[^\"]*\"[^\"]*\")*[^\"]*$)", -1);
			  
			  for (int y = 0; y < covid_string.length; y++) {
				  
				  logger.info("Check mass each covid: "+y+": " + covid_string[y]);
				  //0 district
				  //1 location name
				  //2 visit date
				  //3 case number(s)	  
				}
			  String loc_name = covid_string[1];
			  
			  String district = covid_string[0];
			  
			  String address = covid_string[1]+" "+covid_string[0];
			  
			  boolean isFound = loc_name.contains("(non-residential)"); 
			  
			  //String visit_date = covid_string[2];
			  String loc_info = covid_string[3].trim();
			  final String uri = "https://maps.googleapis.com/maps/api/geocode/json?address="+address+"+hong+kong&key=AIzaSyCXYcuqtMiI25WK3agjWnw5Gd7Gv3hm8eg";

			  RestTemplate restTemplate = new RestTemplate();
			  String result = restTemplate.getForObject(uri, String.class);
			  //need to get json
			  JSONObject json = new JSONObject(result);
			    
			  JSONArray JsonArray = json.getJSONArray("results");
			  
			  String status = json.getString("status");
			  
			  logger.info("check status " + status);
		  
			  if (status.equals("OK")) {
				  
			  JSONObject jsonObject = JsonArray.getJSONObject(0);

			  float lat = jsonObject.getJSONObject("geometry").getJSONObject("location").getFloat("lat");
			  float lng = jsonObject.getJSONObject("geometry").getJSONObject("location").getFloat("lng");
			      
			  //try to get chinese 
			  
			    CovidMap myObj = new CovidMap();
			  
			    loc_name = loc_name.replace('"',' ');
			    loc_name = loc_name.replaceAll("(non-residential)", " ");
			    loc_name = loc_name.replace("(", " ");
			    loc_name = loc_name.replace(")", " ");
			    logger.info("Check final loc_name: " + loc_name);
			  
			    loc_info = loc_info.replace('"',' ');
			  
			    myObj.setLoc_name(loc_name);
			    myObj.setDistrict(district);
			    myObj.setLoc_info(loc_info);
			    myObj.setLat(lat);
			    myObj.setLng(lng);
                if (isFound) {//non-res
            	  myObj.setRes(0);
			    }else {
				  myObj.setRes(1);
			    }
			    covidmapService.registerCovidMap(myObj);
			  }
			  else {
				  logger.info("Check failed loc_name: " + loc_name);
			  }
			}
		
		//covidmapService.registerCovidMap(covidmap);

		
		return "redirect:/covid_map";	
		
	}
	
	/*
	 $.get("https://maps.googleapis.com/maps/api/geocode/json?address="+loc_new+"+hong+kong&key=AIzaSyCXYcuqtMiI25WK3agjWnw5Gd7Gv3hm8eg", function(data, status){
		    
		 //document.getElementById("show_np").innerHTML = "Current price: "+data.np;//+ ". Checked at "+date+" "+time
		 document.getElementById("loc_lat").value = data.results[0].geometry.location.lat;
		 document.getElementById("loc_lng").value = data.results[0].geometry.location.lng;  
		   
		  },"json");
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
		model.addAttribute("headerMessage", "Welcome to Samuel's JSP Web2");
		
		
	}
}
