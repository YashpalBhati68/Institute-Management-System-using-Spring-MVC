package com.example.springmvc.controller;

import com.example.springmvc.model.Student;
import com.example.springmvc.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class StudentController {

    @Autowired
    private StudentService studentService;

    @GetMapping("/students")
    public String viewStudent() {
        return "student";
    }

    @PostMapping("/students")
    public String create(@ModelAttribute Student student) {

        System.out.println("========== POST /students CALLED ==========");
        System.out.println("Name: " + student.getStudentName());
        System.out.println("Email: " + student.getEmail());
        System.out.println("Gender: " + student.getGender());
        System.out.println("Address: " + student.getAddress());

        studentService.saveStudent(student);

        return "success";
    }
}


//package com.example.springmvc.controller;
//
//import com.example.springmvc.model.Student;
//import com.example.springmvc.service.StudentService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//
//Controller
//public class StudentController {
//
//    @Autowired
//    StudentService studentService;
//
//   RequestMapping(value = "/students", method = RequestMethod.GET)
//    public String viewStudent(){
//        return "student";
//    }
//
//    @RequestMapping(value = "/students", method = RequestMethod.POST)
//    public String create(@ModelAttribute Student student) {
//
//        studentService.saveStudent(student);
//
//        return "success";
//    }
//
//}
