package com.example.springmvc.service;

import com.example.springmvc.model.Course;
import com.example.springmvc.model.Student;
import com.example.springmvc.repository.CourseRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class CourseService {


    @Autowired
    CourseRepo courseRepo;

    public Course saveCourse(Course course){

        return courseRepo.save(course);
    }

    public Course getCourseById(Long id){
        return courseRepo.findById(id).orElseThrow(()-> new RuntimeException("course is not found by id :"+id));
    }

    @Transactional
    public Course updateCourse(Long id,Course updateDetails) {

        Course exisitngCourse = courseRepo.findById(id)
                .orElseThrow(() -> new RuntimeException("Course not found with id: " + id));

        exisitngCourse.setCourseName(updateDetails.getCourseName());
        exisitngCourse.setDuration(updateDetails.getDuration());
        exisitngCourse.setFee(updateDetails.getFee());

        return courseRepo.save(exisitngCourse);
    }

    public void deleteCourse(Long id){
        if (!courseRepo.existsById(id)) {
            throw new RuntimeException("Cannot delete. Course not found with id: " + id);
        }
        courseRepo.deleteById(id);
    }

    public List<Course> getsAllCourses(){
        return courseRepo.getAllCourses();
    }

}
