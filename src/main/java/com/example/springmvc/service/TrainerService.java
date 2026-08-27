package com.example.springmvc.service;


import com.example.springmvc.model.Student;
import com.example.springmvc.model.Trainer;
import com.example.springmvc.repository.TrainerRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class TrainerService {

    @Autowired
    TrainerRepo trainerRepo;


    public Trainer saveTrainer(Trainer trainer){
        return trainerRepo.save(trainer);
    }

    public Trainer getTrainerById(Long id){
        return trainerRepo.findById(id).orElseThrow(()->new RuntimeException("Trainer is not found with id :"+id));
    }


    @Transactional
    public Trainer updateTrainer(Long id,Trainer updateDetails){

        Trainer existingTrainer = trainerRepo.findById(id).orElseThrow(()-> new RuntimeException("Trainer is not found with id :"+id));

        existingTrainer.setTrainerName(updateDetails.getTrainerName());
        existingTrainer.setEmail(updateDetails.getEmail());
        existingTrainer.setAddress(updateDetails.getAddress());

        return trainerRepo.save(existingTrainer);

    }

    public void deleteTrainer(Long id){

        if(!trainerRepo.existsById(id)){
            throw new RuntimeException("Cannot delete. Trainer not found with id: " + id);
        }

        trainerRepo.deleteById(id);
    }
    public List<Trainer> getsAllTrainers(){
        return trainerRepo.getAllTrainers();
    }

}
