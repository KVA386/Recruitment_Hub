package com.app.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.app.pojos.AchivementsDetails;
import com.app.pojos.Appliedstudents;
import com.app.pojos.CreateDrive;
import com.app.pojos.EducationalDetails;
import com.app.pojos.Notice;
import com.app.pojos.Pendingapplication;
import com.app.pojos.PersonalDetails;
import com.app.pojos.ProjectDetails;
import com.app.pojos.Selected;
import com.app.pojos.SkillDetails;
import com.app.pojos.Tpo;
import com.app.pojos.User;
import com.app.services.LoginServiceInterface;
import com.app.services.TpoService;
import com.app.services.TpoServiceInterface;
import com.app.services.UserServiceInterface;
import com.app.utility.DriveReminder;
import com.app.utility.OTPSender;
import com.app.utility.Ruff;
import com.app.utility.Utility;

@Controller
@RequestMapping("/")

public class HomeController {
	@Autowired
	private LoginServiceInterface loginService;
	
	@Autowired
	private UserServiceInterface userService;


	@Autowired
	private TpoServiceInterface tpoService;

	public HomeController() {

	}

	@GetMapping("/")
	
	public String ShowIndex() {
		/*
		Ruff op = new Ruff();
		System.out.println("2023-05-10");
		op.sendDate("2023-05-10");
		DriveReminder dr=new DriveReminder();
		dr.sendEmail("vaishnavikonale123@gmail.com","Infysos");
		*/
		Tpo tpo = loginService.checkTpo();
		if (tpo != null) {
		} else {
			Tpo t = new Tpo("Tpo@gmail.com", "Tpo","New");
			
			loginService.registerTpo(t);
		}
        
		return "/index";
	}

	@PostMapping("/login")
	public String runIndex(@RequestParam String username, @RequestParam String password, HttpSession hs, Model modelMap,
			RedirectAttributes flashMap) {
		User user = loginService.verifyLogin(username, password);
		Tpo t=loginService.verifyTpo(username,password);
		if (user != null) {
			hs.setAttribute("userdetails", user);
			return "redirect:/home_page";
		}else if (t!= null) {
			hs.setAttribute("tpodetails", t);
			return "redirect:/tpodashboard"; 
		}else {
			flashMap.addFlashAttribute("message", "Invalid Login!!");
			return "redirect:/";
		}

	}

	@GetMapping("/signup")
	public String Showsignup() {
		return "/index2";
	}

	@PostMapping("/signup")
	public String RunIndex2(@RequestParam String username, @RequestParam String password,
			@RequestParam String cpassword, HttpSession hs, Model modelMap, RedirectAttributes flashMap) {

		if (Utility.ValidatePassword(password)) {
			if (password.equals(cpassword)) {
				User user = new User(username, password, "New");
				loginService.registerUser(user);
				
				return "/index";
			} else {
				modelMap.addAttribute("error", "Password MissMatched");
				return "/index2";
			}
		} else {
			modelMap.addAttribute("error", "Please Provide Strong Password");
			return "/index2";
		}
	}

	@GetMapping("/home_page")
	public String Showhome_page(HttpSession hs) {
		hs.setAttribute("tpodriveList",tpoService.fetchAllDrive());
		List<User> list=(loginService.fetchAllUsers());
		List<CreateDrive> list1=(tpoService.fetchAllDrive());
		int count=0;
	    for(User u:list) {
	    	count=count+1;
	    }
	    hs.setAttribute("ncount",count);
	    int count1=0;
	    for(CreateDrive c:list1) {
	    	count1=count1+1;
	    }
		
	    hs.setAttribute("ncount1",count1);
			
			
		return "/home_page";
	}

	@GetMapping("/login")
	public String Showlogin() {
		return "/index";
	}

	@GetMapping("/Profile")
	public String ShowProfile_page() {
		return "redirect:/personal_details";
	}
	@GetMapping("/personal_details")
	public String show_personal_details() {
		
		return "/personal_details";
	}

	@PostMapping("/save_personal_details")
	public String showNext(@RequestParam String objective, @RequestParam String linkedin, @RequestParam String github,
			@RequestParam String email, @RequestParam String phone, @RequestParam String address,
			@RequestParam String name, HttpSession hs, Model modelMap, RedirectAttributes flashMap) {

		if (Utility.validateEmail(email)) {
			if(Utility.validatePhone(phone)) {
				if(Utility.ValidateName(name)) {
			System.out.println(
					objective + " " + linkedin + " " + github + " " + email + " " + phone + " " + address + " " + name);
			PersonalDetails pd=new PersonalDetails(objective, linkedin, github, email, phone, address, name);
			hs.setAttribute("personal_details", pd);
			User user=(User) hs.getAttribute("userdetails");
			flashMap.addFlashAttribute("message", userService.savePersonalDetails(user,pd));
			
			return "redirect:/educational_details";
			} 
			
				else {
					modelMap.addAttribute("error", "Please provide correct Name!!.");
					return "/personal_details";
					
				}
			}
		else {
			modelMap.addAttribute("error", "Please provide correct Phone Number!!.");
			return "/personal_details";
			
		}
		}
		else {
				modelMap.addAttribute("error", "Please provide correct email.");
				return "/personal_details";
			}
		
	}
	@GetMapping("/educational_details")
	public String showEducational_details() {
		return "/educational_details";
	}

	@PostMapping("/save_educational_details")
	public String showNext1(@RequestParam String degree, @RequestParam String college1, @RequestParam Float cgpa1,
			@RequestParam Integer year1, @RequestParam String course1, @RequestParam String college2,
			@RequestParam Float marks1, @RequestParam Integer year2, @RequestParam String course2,
			@RequestParam String school, @RequestParam Float marks2, @RequestParam Integer year3,HttpSession hs,Model modelMap,RedirectAttributes flashMap) {
System.out.println(degree+" "+college1+" "+college2+" "+course1+" "+course2+" "+cgpa1+" "+year1+" "+year2+" "+year3+" "+marks1+" "+marks2+" "+school);
EducationalDetails ed=new EducationalDetails(degree,college1, cgpa1, year1, course1, college2,marks1,year2,course2,school,marks2,year3);
hs.setAttribute("educational_details", ed);
User user=(User) hs.getAttribute("userdetails");
flashMap.addFlashAttribute("message", userService.saveEducationalDetails(user,ed));
return "redirect:/skills";
	}
	
	@GetMapping("/skills")
	public String showSkills() {
		return "/skills";
	}

	@PostMapping("/save_skills")
	public String showNext2(@RequestParam String ss,@RequestParam String it,@RequestParam String prg,@RequestParam String wt,HttpSession hs,Model modelMap,RedirectAttributes flashMap) {
		System.out.println(ss+" "+it+" "+prg+" "+wt);
		SkillDetails sd= new SkillDetails(ss,it,prg,wt);
		hs.setAttribute("skill_details", sd);
		User user=(User) hs.getAttribute("userdetails");
		flashMap.addFlashAttribute("message", userService.saveSkillDetails(user,sd));
		return "redirect:/projects";
	}
    
	@GetMapping("/projects")
	public String ShowProjects() {
		return "/projects";
	}
	@PostMapping("/save_projects")
	public String showFinal(@RequestParam String title1,@RequestParam String description1,@RequestParam String title2,@RequestParam String description2,HttpSession hs,Model modelMap,RedirectAttributes flashMap) {
		System.out.println(title1+" "+description1+" "+title2+" "+description2);
		ProjectDetails rd=new ProjectDetails(title1,description1,title2,description2);
		hs.setAttribute("project_details", rd);
		User user=(User) hs.getAttribute("userdetails");
		flashMap.addFlashAttribute("message", userService.saveProjectDetails(user,rd));
		return "redirect:/achivements";
	}
	@GetMapping("/achivements")
	public String ShowAchivements() {
		return "/achivements";
	}
	@GetMapping("/Resume")
	public String ShowResume() {
		return "/Resume";
	}
	@GetMapping("/Resume2")
	public String ShowResume1() {
		return "/Resume2";
	}

	@GetMapping("/Resume3")
	public String ShowResume3() {
		return "/Resume3";
	}
	@GetMapping("/Resume4")
	public String ShowResume4() {
		return "/Resume4";
	}
	@PostMapping("/save_achivements")
	public String finalCall(@RequestParam String message,HttpSession hs,Model modelMap,RedirectAttributes flashMap) {
		System.out.println(message);
		AchivementsDetails ad=new AchivementsDetails(message);
		hs.setAttribute("achivements_details", ad);
		User user=(User) hs.getAttribute("userdetails");
		flashMap.addFlashAttribute("message", userService.saveAchivementsDetails(user,ad));
		hs.setAttribute("userdetails", loginService.verifyLogin(user.getUsername(), user.getPassword()));
		return "redirect:/home_page";
	}
	@GetMapping("/ResumeGenerator")
	public String ShowResumeGenerator(HttpSession hs) {
		User user=(User) hs.getAttribute("userdetails");
		hs.setAttribute("userdetails", loginService.verifyLogin(user.getUsername(), user.getPassword()));
		return "/ResumeGenerator";
	}
	@GetMapping("/tpodashboard")
	public String ShowTpodashboard(HttpSession hs) {
	List<User> list=(loginService.fetchAllUsers());
	List<CreateDrive> list1=(tpoService.fetchAllDrive());
	int count=0;
    for(User u:list) {
    	count=count+1;
    }
    hs.setAttribute("ncount",count);
    int count1=0;
    for(CreateDrive c:list1) {
    	count1=count1+1;
    }
    hs.setAttribute("ncount1",count1);
		return "/tpodashboard";
	}
	
	@GetMapping("/student_list")
	public String showuser_list(HttpSession hs) {
		
		Tpo tpo=(Tpo) hs.getAttribute("tpodetails");
		hs.setAttribute("tpodetails", loginService.verifyTpo(tpo.getUsername(), tpo.getPassword()));
		
		hs.setAttribute("userlist",loginService.fetchAllUsers());
		
		return "/student_list";
	}
	@GetMapping("/create_drive")
	public String showdrive(HttpSession hs) {
		
		return "/create_drive";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession hs) {
		hs.getAttribute("userdetails");
		hs.invalidate();
		return "redirect:/";
	}
	@GetMapping("/forget_password")
	public String ShowForgetPassword() {
		return "/forget_password";
	}
	@PostMapping("/sendotp")
	public String sendOTP(@RequestParam String username, HttpSession hs, Model modelMap, RedirectAttributes flashMap) {
		hs.setAttribute("username", username);
		hs.setAttribute("user", loginService.getUser(username));
		if (loginService.checkusername(username)) {
			int otp = Utility.generateOTP();
			hs.setAttribute("otp", otp);
			OTPSender op = new OTPSender();
			
			op.sendEmail(username, otp);

		} else {
			flashMap.addFlashAttribute("error", "Email Is Not Registered");
		}
		return "redirect:/forget_password";
	}
	@GetMapping("/change_password")
	public String Change_Password() {
		return "/change_password";
	}
    
	@PostMapping("/verifyotp")
	public String verifyOTP(@RequestParam int otp, HttpSession hs, Model modelMap, RedirectAttributes flashMap) {
		int otp1 = (int) hs.getAttribute("otp");
		if (otp1 != otp) {
			flashMap.addFlashAttribute("error", "Invalid OTP");
			return "redirect:/forget_password";
		} else {
			flashMap.addFlashAttribute("error", "Valid OTP");
			return "redirect:/change_password";
		}
	}
	
	
	@PostMapping("/change_password")
	public String Change_password(@RequestParam String upassword,@RequestParam String cpassword, HttpSession hs, Model modelMap, RedirectAttributes flashMap) {
		if (Utility.ValidatePassword(upassword)) {
			if (upassword.equals(cpassword)) {
				
				User user = (User) hs.getAttribute("user");
				flashMap.addFlashAttribute("message", loginService.changePassword(user,upassword));
				return "redirect:/";
			} else {
				modelMap.addAttribute("error", "Password MissMatched");
				return "/change_password";
			}
		} else {
			modelMap.addAttribute("error", "Please Provide Strong Password");
			return "/change_password";
		}
	}
    

	@PostMapping("/save_create_drive")
	public String create_drive(@RequestParam String cname,@RequestParam String package1,@RequestParam String location,@RequestParam String link, @RequestParam String criteria,@RequestParam String jD,@RequestParam String process,@RequestParam String jobdesignation,@RequestParam String date,@RequestParam Integer tenth,@RequestParam Integer twleve,@RequestParam Float cgpa,HttpSession hs, Model modelMap, RedirectAttributes flashMap) {
		Tpo tpo=(Tpo) hs.getAttribute("tpodetails");
		hs.setAttribute("tpodetails", loginService.verifyTpo(tpo.getUsername(), tpo.getPassword()));
		System.out.println(
				process + " " + jD + " " + criteria + " " + link + " " + location + " " + package1 + " " + cname);
		CreateDrive cd=new CreateDrive(cname,package1,location,link,criteria,jD,process,jobdesignation,date,tenth,twleve,cgpa);
		hs.setAttribute("createdrive_details", cd);
		System.out.println(cd);
		
		
		/*Ruff op = new Ruff();
		System.out.println(cd.getDate());
		op.sendDate(cd.getDate());
		*/
		flashMap.addFlashAttribute("message", tpoService.saveTpodriveDetails(tpo,cd));
		List<User> userlist=loginService.fetchAllUsers();
		for(User u:userlist) {
			DriveReminder dr=new DriveReminder();
			dr.sendEmail(u.getUsername(), cd.getCname());
			
		}
		
					return "redirect:/create_drive";
		}
	
	@GetMapping("/showdrive")
	public String ShowDrive(HttpSession hs) {
		User user=(User) hs.getAttribute("userdetails");
		hs.setAttribute("userdetails", loginService.verifyLogin(user.getUsername(), user.getPassword()));
		List<CreateDrive> list2 = tpoService.fetchAllDrive();
	    List<Pendingapplication> list1=userService.fetchPendingDrive(user.getUsername());
	    
	    List<CreateDrive> list3 = new ArrayList<>();
        if(list1.size()!=0) {
        	for(CreateDrive c:list2) {
        	    int i=0;
        	    for(Pendingapplication a: list1) {
        	    	System.out.println("c"+c.getCname());
        	    	System.out.println("cid"+a.getUsername());
        		     if(user.getUsername().equals(a.getUsername()) && c.getCname().equals(a.getCname())) { 
        			     i=1;
        			     System.out.println("Yes");
        		      }
        	    }
        	    if(i==0) {
        		list3.add(c);
    			System.out.println(list3);
        	    }
        	
             }
        	hs.setAttribute("pendinglist",list3);
	      }
        else {
        	hs.setAttribute("pendinglist",list2);
        }
        
        
        for(CreateDrive c:list2) {
        	if((user.getEducational_details().getCgpa1())<(c.getCgpa())) {
        		
        		System.out.println("Hiii!!");
        	}
        }
        
		return "/showdrive";
	}
	
	
	
	@GetMapping("/placement_drive")
	public String ShowAllDrive(HttpSession hs) {
		hs.setAttribute("tpodriveList",tpoService.fetchAllDrive());
        System.out.print(tpoService.fetchAllDrive());
        
		return "/placement_drive";
	}

	@GetMapping("/AppliedStudent")
	public String ShowAppliedstudents(@RequestParam int cid,HttpSession hs,RedirectAttributes flashMap) {
		
		CreateDrive cd=tpoService.fetchCompanyById(cid);
		User user=(User) hs.getAttribute("userdetails");
		Appliedstudents as= new Appliedstudents(user.getUsername(),user.getPersonal_details().getName(),"Applied");
		flashMap.addFlashAttribute("message", userService.SaveAppliedstudents(user,as,cd));
		hs.setAttribute("appliedstudent_details", as);
		hs.setAttribute("userdetails", loginService.verifyLogin(user.getUsername(), user.getPassword()));
		
		
		
		Pendingapplication pd=new Pendingapplication(user.getUsername(),cd.getCname());
		hs.setAttribute("pendingdrive", pd);
		flashMap.addFlashAttribute("message", userService.savependingdriveDetails(pd));
      System.out.print(user.getPersonal_details().getName());
      
    
      
		return "/showdrive";
	}
	
	@GetMapping("/showapplied")
	public String showapplied(HttpSession hs) {
		hs.setAttribute("tpodriveList",tpoService.fetchAllDrive());
		return "/showapplied";
	}
	@PostMapping("/searchCat")
	public String showShopping(HttpSession hs, @RequestParam int category) {
		CreateDrive cd=tpoService.fetchCompanyById(category);
		hs.setAttribute("appliedstudentList",userService.fetchAllappliedstudents(cd));
		return "redirect:/showapplied";
	}
	@GetMapping("/deletedrive")
	public String deletedrive(@RequestParam int cid,HttpSession hs,RedirectAttributes flashMap) {
	
		
		flashMap.addFlashAttribute("message", tpoService.deletedrive(cid));
		return "redirect:/showapplied";
	}
	@GetMapping("/notice")
	public String Shownotice(HttpSession hs) {
		hs.setAttribute("NoticeList",tpoService.fetchAllnotice());
		return "/notice";
	}
	
	@PostMapping("/savenotice")
	public String Shownotice(@RequestParam String notice,HttpSession hs,RedirectAttributes flashMap) {
		Notice n=new Notice(notice);
		
		hs.setAttribute("notice_details", n);
		
		flashMap.addFlashAttribute("message", tpoService.savenotice(n));
		return "/notice";
	}
	@GetMapping("/showapplieddrive")
	public String Showapplieddrive(HttpSession hs) {	
		User user=(User) hs.getAttribute("userdetails");
		hs.setAttribute("appliedstudentList",userService.fetchAllappliedstudents(user));
		System.out.println(userService.fetchAllappliedstudents(user));
		return "/Pendingapplication";
	}
	@PostMapping("/save_selected")
	public String Save_selected(@RequestParam int cid,@RequestParam String name,@RequestParam String email,HttpSession hs,RedirectAttributes flashMap) {
		
		
		CreateDrive cd=tpoService.fetchCompanyById(cid);
		Selected sd=new Selected(cd,email,name);
		hs.setAttribute("selecteddetails", sd);
		hs.setAttribute("selectList",tpoService.saveselected(cd,sd));
		
		return "/showapplied";
	}
	
	@GetMapping("/selectionstatus")
	public String Showselectionstatus(HttpSession hs) {
		hs.setAttribute("selectedList",tpoService.fetchAllSelected());
        System.out.print(tpoService.fetchAllSelected());
        
		return "/selectionstatus";
	}
	
}
