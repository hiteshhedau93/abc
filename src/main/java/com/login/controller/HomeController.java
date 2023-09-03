package com.login.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.login.entity.User;
import com.login.entity.UserLogin;
import com.login.service.UserService;

@Controller
public class HomeController {

	@Autowired
	private UserService userService;

	@RequestMapping("/dashboard")
	public String dashboard(Model model) {

		List<User> users = userService.getAll();
		System.out.println(users);
		model.addAttribute("users", users);
		return "dashboard";
	}

	@RequestMapping("/registration")
	public String signup() {
		return "registration";
	}

	@RequestMapping("/login")
	public String login() {
		return "login";
	}

	@RequestMapping("/home")
	public String home() {
		return "home";
	}

	@RequestMapping(path = "/createUser", method = RequestMethod.POST)
	public String registerUser(@ModelAttribute User user, Model model) {
		userService.createUser(user);
		model.addAttribute("user", user);
		return "success";
	}

	@RequestMapping("/userList")
	public String getAll(Model model) {
		List<User> list = userService.getAll();
		model.addAttribute("users", list);
		return "redirect:/home";
	}
	
	@RequestMapping(path = "/verify", method = RequestMethod.POST)
	public String verify(@ModelAttribute UserLogin userLogin, Model model) {
		List<User> list = userService.getAll();

		System.out.println(list);
		for (User getUser : list) {
			if (getUser.getEmail().equals(userLogin.getEmail())
					&& getUser.getPassword().equals(userLogin.getPassword())) {
				System.out.println("Successfully login");
				return "redirect:/dashboard";
			}  
		}
		
		if (list.isEmpty()) {
			System.out.println("list == null");
//			model.addAttribute("msg", "No user present in database");
			return "redirect:/login";
		} else {
			System.out.println("username or password is incorrect");
			model.addAttribute("msg", "username or password is incorrect");
			return "redirect:/login";
		}		
	}

	@RequestMapping("/delete/{id}")
	public String deleteUser(@PathVariable int id) {
		userService.deleteUser(id);
		return "redirect:/dashboard";
	}

	@RequestMapping("/editUser/{id}")
	public String editUser(@PathVariable int id, Model model) {

		User user = userService.findByid(id);
		model.addAttribute("user", user);
		return "edit";
	}

	@RequestMapping(path = "/updateUser", method = RequestMethod.POST)
	public String updateUser(@ModelAttribute User user) {

		userService.update(user);
		return "redirect:/dashboard";
	}
}
