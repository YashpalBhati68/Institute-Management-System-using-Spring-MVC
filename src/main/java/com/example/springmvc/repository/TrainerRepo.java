package com.example.springmvc.repository;


import com.example.springmvc.model.Student;
import com.example.springmvc.model.Trainer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface TrainerRepo extends JpaRepository<Trainer,Long> {

    Trainer save(Trainer trainer);
    void deleteById(Long id);
    Optional<Trainer> findById(Long id);

    @Query("select s from Trainer s")
    List<Trainer> getAllTrainers();

}
