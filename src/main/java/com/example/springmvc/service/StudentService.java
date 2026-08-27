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


//    public List<Student> fetchByName(String studentName){
//        return  studentRepo.findByName(studentName);
//    }
//    public List<Student> fetchByNameContaining(String studentName){
//        return studentRepo.findByNameContaining(studentName);
//    }
//    public List<Student> fetchByNameStartingWith(String studentName){
//        return studentRepo.findByNameStartingWith(studentName);
//    }
//    public List<Student> fetchByNameEndingWith(String studentName){
//        return studentRepo.findByNameEndingWith(studentName);
//    }
//    public List<Student> fetchByNameIgnoreCase(String studentName){
//        return studentRepo.findByNameIgnoreCase(studentName);
//    }
//    public Long countsByName(String studentName){
//        return studentRepo.countByName(studentName);
//    }
//
    public List<Student> getsAllStudents(){
        return studentRepo.getAllStudents();
    }
}
