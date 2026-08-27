package com.example.springmvc.service;


import com.example.springmvc.model.Course;
import com.example.springmvc.model.Enrollment;
import com.example.springmvc.repository.EnrollmentRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class EnrollmentService {


    @Autowired
    EnrollmentRepo enrollmentRepo;


    public Enrollment saveEnrollment(Enrollment enrollment){

        return enrollmentRepo.save(enrollment);
    }

    public Enrollment getEnrollmentById(Long id){
        return enrollmentRepo.findById(id).orElseThrow(()-> new RuntimeException("course is not found by id :"+id));
    }


    public void deleteEnrollment(Long id){
        if (!enrollmentRepo.existsById(id)) {
            throw new RuntimeException("Cannot delete. Enrollment not found with id: " + id);
        }
        enrollmentRepo.deleteById(id);
    }

    public List<Enrollment> getsAllEnrollments(){
        return enrollmentRepo.getAllEntrollments();
    }


}
