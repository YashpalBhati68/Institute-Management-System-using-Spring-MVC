package com.example.springmvc.controller;

import com.example.springmvc.model.Student;
import com.example.springmvc.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class StudentController {

    @Autowired
    private StudentService studentService;

    @GetMapping("/students")
    public String viewStudentList(Model model, Student student) {


        // Fir list fetch karke dikha do
        List<Student> students = studentService.getsAllStudents();
        model.addAttribute("students", students);

        return "studentList";
    }

    @GetMapping("/students/add")
    public String addStudent(Model model) {
        model.addAttribute("student", new Student());
        return "student";
    }

    @PostMapping("/students/save")
    public String saveStudent( @ModelAttribute("student") Student student){
        // Agar student object aaya hai form se, toh pehle save/update kar do
            if (student.getId() == null) {
                studentService.saveStudent(student);
            } else {
                studentService.updateStudent(student.getId(),student);
            }


        return "redirect:/students";
    }

    @GetMapping("/students/edit/{id}")
    public String editStudent(@PathVariable("id") Long id, Model model){

        Student student = studentService.getStudentById(id);

        model.addAttribute("student", student);

        return "student";
    }



    // path variable
    @GetMapping("/students/delete/{id}")
    public String deleteStudent(@PathVariable("id")Long  id){
        studentService.deleteStudent(id);

        return "redirect:/students";
    }


}
