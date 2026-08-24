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
    void delete(Long id);
    Optional<Student> findById(Long id);


    List<Student> findByName(String name);
    List<Student> findByNameContaining(String name);
    List<Student> findByNameStartingWith(String name);
    List<Student> findByNameEndingWith(String name);
    List<Student> findByNameIgnoreCase(String name);
    List<Student> findByNameAndMobileNo(String name, String mobileNo);
    long countByName(String name);
    boolean existsByMobileNo(String mobileNo);


    @Query("select s from Student s")
    List<Student> getAllStudents();

    // get student by id
    @Query("select s from Student s where s.id=:id")
    Student getStudent(@Param("id") int id);

    // JPQL
//    @Query("select s from Student s join fetch s.courseList where s.id=:id")
//    Student getStudentWithCourseList(@Param("id") Long id);

//    @Query("select s.courseList from Student s where s.id=:id")
//    List<Course> getCourseList(@Param("id") Long id);

    @Query("select count(s) from Student s")
    long totalStudents();

}
