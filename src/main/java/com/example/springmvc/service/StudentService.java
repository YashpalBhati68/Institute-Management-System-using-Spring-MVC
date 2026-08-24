package com.example.springmvc.service;

import com.example.springmvc.controller.StudentController;
import com.example.springmvc.model.Student;
import com.example.springmvc.repository.StudentRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class StudentService {

    @Autowired
    StudentRepo studentRepo;

    public Student saveStudent(Student student){
       return studentRepo.save(student);
    }

    public Student getStudentById(Long id){
        return  studentRepo.findById(id).orElseThrow(()-> new RuntimeException("Student not found with id: " + id));
    }
    @Transactional
    public Student updateStudent(Long id, Student updatedDetails) {
        // Step A: Find the existing student record from the database
        Student existingStudent = studentRepo.findById(id)
                .orElseThrow(() -> new RuntimeException("Student not found with id: " + id));

        // Step B: Copy over the updated attributes
        existingStudent.setStudentName(updatedDetails.getStudentName());
        existingStudent.setEmail(updatedDetails.getEmail());

        // Step C: Save it back. Since existingStudent contains an ID, save() performs an UPDATE.
        return studentRepo.save(existingStudent);
    }

    public void deleteStudent(Long id) {
        // Check if it exists first to avoid empty deletion errors
        if (!studentRepo.existsById(id)) {
            throw new RuntimeException("Cannot delete. Student not found with id: " + id);
        }
        studentRepo.deleteById(id);
    }


    public List<Student> fetchByName(String name){
        return  studentRepo.findByName(name);
    }
    public List<Student> fetchByNameContaining(String name){
        return studentRepo.findByNameContaining(name);
    }
    public List<Student> fetchByNameStartingWith(String name){
        return studentRepo.findByNameStartingWith(name);
    }
    public List<Student> fetchByNameEndingWith(String name){
        return studentRepo.findByNameEndingWith(name);
    }
    public List<Student> fetchByNameIgnoreCase(String name){
        return studentRepo.findByNameIgnoreCase(name);
    }
    public List<Student> fetchByNameAndMobileNo(String name, String mobileNo){
        return studentRepo.findByNameAndMobileNo(name,mobileNo);
    }
    public Long countsByName(String name){
        return studentRepo.countByName(name);
    }
    public boolean existsByMobileNos(String mobileNo){
        return  studentRepo.existsByMobileNo(mobileNo);
    }

    public List<Student> getsAllStudents(){
        return studentRepo.getAllStudents();
    }
}
