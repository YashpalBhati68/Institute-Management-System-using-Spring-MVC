package com.example.springmvc.controller;

import com.example.springmvc.model.Course;
import com.example.springmvc.model.Enrollment;
import com.example.springmvc.model.Student;
import com.example.springmvc.service.CourseService;
import com.example.springmvc.service.EnrollmentService;
import com.example.springmvc.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

@Controller
public class EnrollmentContoller {


    @Autowired
    EnrollmentService enrollmentService;

    @Autowired
    StudentService studentService;

    @Autowired
    CourseService courseService;


    @RequestMapping(value = "/enrollments", method = RequestMethod.GET)
    public String viewEnrollment(Model model){

        // saare course ko fetch kr ke course list par show krega
        List<Enrollment> enrollments = enrollmentService.getsAllEnrollments();

        model.addAttribute("enrollments",enrollments);
        return "enrollmentList";
    }


    @GetMapping("/enrollments/add")
    public String addEnrollment(Model model) {

        List<Student> students = studentService.getsAllStudents();
        List<Course> courses =  courseService.getsAllCourses();

        model.addAttribute("enrollment", new Enrollment());
        model.addAttribute("students", students);
        model.addAttribute("courses", courses);

        return "enrollment";
    }

    @PostMapping("/enrollments/save")
    public String saveEnrollment(
            @RequestParam("studentId") Long studentId,
            @RequestParam("courseId") Long courseId,
            @RequestParam("enrollmentDate")
            @DateTimeFormat(pattern = "yyyy-MM-dd") Date enrollmentDate) {

        Student student = studentService.getStudentById(studentId);
        Course course = courseService.getCourseById(courseId);

        Enrollment enrollment = new Enrollment();

        enrollment.setStudent(student);
        enrollment.setCourse(course);
        enrollment.setEnrollmentDate(enrollmentDate);

        enrollmentService.saveEnrollment(enrollment);

        return "redirect:/enrollments";
    }

//    @ PostMapping("/enrollments/save")
//    public String saveEnrollment(@ ModelAttribute("enrollment") Enrollment enrollment){
//
//        Long Studentid = enrollment.getStudent().getId();
//        Long Courseid  = enrollment.getCourse().getId();
//
//            enrollmentService.saveEnrollment(enrollment);
//
//        return "redirect:/enrollments";
//    }

    // path variable
    @GetMapping("/enrollments/delete/{id}")
    public String deleteEnrollment(@PathVariable("id")Long  id){
        enrollmentService.deleteEnrollment(id);

        return "redirect:/enrollments";
    }


}
