package com.example.springmvc.controller;

import com.example.springmvc.model.Course;
import com.example.springmvc.model.Student;
import com.example.springmvc.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class CourseController {


    @Autowired
    CourseService courseService;


        @RequestMapping(value = "/courses",method = RequestMethod.GET)
        public String viewCourseList(Model model){

            // saare course ko fetch kr ke course list par show krega
            List<Course> courses = courseService.getsAllCourses();
            model.addAttribute("courses",courses);

            return "courseList";
        }

    @GetMapping("/courses/add")
    public String addCourse(Model model) {
        model.addAttribute("course", new Course());
        return "course";
    }


        @PostMapping("/courses/save")
        public String saveCourse(@ModelAttribute("course") Course course){
            // Agar student object aaya hai form se, toh pehle save/update kar do
            if (course.getId() == null) {
                courseService.saveCourse(course);
            } else {
                courseService.updateCourse(course.getId(),course);
            }
            return "redirect:/courses";
        }

        @GetMapping("/courses/edit/{id}")
        public String editCourse(@PathVariable("id") Long id , Model model){

            Course course = courseService.getCourseById(id);

            model.addAttribute("course", course);

            return "course";

        }

    // path variable
    @GetMapping("/courses/delete/{id}")
    public String deleteCourse(@PathVariable("id")Long  id){
        courseService.deleteCourse(id);

        return "redirect:/courses";
    }
}
