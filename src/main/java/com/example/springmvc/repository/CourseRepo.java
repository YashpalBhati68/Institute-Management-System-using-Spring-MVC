package com.example.springmvc.repository;


import com.example.springmvc.model.Course;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface CourseRepo extends JpaRepository<Course,Long> {

    Course save(Course course);
    void deleteById(Long id);
    Optional<Course> findById(Long id);

    @Query("select s from Course s")
    List<Course> getAllCourses();

}
