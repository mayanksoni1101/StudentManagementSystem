package in.jsp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class StudentController {
	
	@Autowired 
	private StudentDao sd;
	
	@GetMapping("/student/register")
	public String registerPage() {
		return "register";
	}
	
	@PostMapping("/student/register")
	public String registerStudent(@ModelAttribute Student s , Model model , RedirectAttributes redirectAttributes) {
		System.out.println(s);
		int sid = sd.addStudent(s);
		if(sid>0) {
			redirectAttributes.addFlashAttribute("msg","Student Registered Successfully with ID : " + sid);
						return "redirect:/student/index";
		}
		else {
			model.addAttribute("msg" , "Student Registration failed !!!");
			return "register";
		}
		
	}
	
	@GetMapping("/student/index")
	public String index() {
	    return "index";
	}
	
	@GetMapping("/student/remove")
	public String getRemove() {
		return "remove";
	}
	
	@PostMapping("/student/remove")
	public String removeStudent( @ModelAttribute Student s, RedirectAttributes redirectAttributes) {
		int id = s.getId();
		id = sd.removeStudentById(id);
		if(id > 0) {
			redirectAttributes.addFlashAttribute("msg" , "Student removed with ID : " + id);
			return "redirect:/student/index";
		}
		else {
			redirectAttributes.addFlashAttribute("msg" , "Student can't be removed !!!");
			return "remove";
		}
	}
	
	@GetMapping("/student/record")
	public String getStudentRecords(Model model) {
		List<Student> sl = sd.getAllStudents();
		model.addAttribute("students",sl);
		return "record";
	}
	
	@GetMapping("/student/update")
	public String update() {
		return "update";
	}
	
	@PostMapping("/student/update")
	public String update(@ModelAttribute Student s,Model model) {
		int id = s.getId();
		Student student = sd.getStudentById(id);
		if(student == null) {
			model.addAttribute("msg" , "Student record not found with id = " + id);
		}
		else {			
			model.addAttribute(student);
		}
		return "update";
	}
	
	@PutMapping("/student/update")
	public String updateStudent(@ModelAttribute Student s ,Model model , RedirectAttributes redirectAttributes) {
		int id = sd.updateStudent(s);
		if(id > 0) {
			redirectAttributes.addFlashAttribute("msg", "Student updated successfully with Id : "+id);
			return "redirect:/student/index";
		}
		else {
			model.addAttribute("msg", "Student did't update !!!");
			return "update";
		}
	}
}
