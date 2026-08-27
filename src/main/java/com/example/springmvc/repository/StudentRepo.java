package com.example.springmvc.repository;

import com.example.springmvc.model.Course;
import com.example.springmvc.model.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface StudentRepo extends JpaRepository<Student,Long> {


    Student save(Student student);
    void deleteById(Long id);
    Optional<Student> findById(Long id);


//    List<Student> findByName(String studentName);
//    List<Student> findByNameContaining(String studentName);
//    List<Student> findByNameStartingWith(String studentName);
//    List<Student> findByNameEndingWith(String studentName);
//    List<Student> findByNameIgnoreCase(String studentName);
//    long countByName(String studentName);
//
    @Query("select s from Student s")
    List<Student> getAllStudents();
//
//    // get student by id
//    @Query("select s from Student s where s.id=:id")
//    Student getStudent(@Param("id") Long id);
//
//
//
//    @Query("select count(s) from Student s")
//    long totalStudents();

}
