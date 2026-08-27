package com.example.springmvc.repository;

import com.example.springmvc.model.Course;
import com.example.springmvc.model.Enrollment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface EnrollmentRepo extends JpaRepository<Enrollment,Long> {

    Enrollment save(Enrollment enrollment);
    void deleteById(Long id);
    Optional<Enrollment> findById(Long id);

    @Query("select s from Enrollment s")
    List<Enrollment> getAllEntrollments();

}
