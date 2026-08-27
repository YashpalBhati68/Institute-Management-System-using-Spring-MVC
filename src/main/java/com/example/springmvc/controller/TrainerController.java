package com.example.springmvc.controller;

import com.example.springmvc.service.TrainerService;
import com.example.springmvc.model.Trainer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class TrainerController {


    @Autowired
    TrainerService trainerService;

    @RequestMapping(value = "/trainers", method = RequestMethod.GET)
    public String viewTrainer(Model model){

        List<Trainer> trainers = trainerService.getsAllTrainers();
        model.addAttribute("trainers", trainers);

        return "trainerList";
    }

    @GetMapping("/trainers/add")
    public String addTrainer(Model model) {
        model.addAttribute("trainer", new Trainer());
        return "trainer";
    }

    @PostMapping("/trainers/save")
    public String saveTrainer( @ModelAttribute("trainer") Trainer trainer){
        // Agar student object aaya hai form se, toh pehle save/update kar do
        if (trainer.getId() == null) {
            trainerService.saveTrainer(trainer);
        } else {
            trainerService.updateTrainer(trainer.getId(),trainer);
        }


        return "redirect:/trainers";
    }

    @GetMapping("/trainers/edit/{id}")
    public String editTrainer(@PathVariable("id") Long id, Model model){

        Trainer trainer = trainerService.getTrainerById(id);

        model.addAttribute("trainer", trainer);

        return "trainer";
    }

    // path variable
    @GetMapping("/trainers/delete/{id}")
    public String deleteTrainer(@PathVariable("id")Long  id){
        trainerService.deleteTrainer(id);

        return "redirect:/trainers";
    }


}
