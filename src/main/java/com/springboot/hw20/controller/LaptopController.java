package com.springboot.hw20.controller;

import com.springboot.hw20.model.Laptop;
import com.springboot.hw20.model.helpings.TypeFrame;
import com.springboot.hw20.service.impl.LaptopServiceImpl;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDateTime;
import java.util.List;

@Controller
public class LaptopController {
    final LaptopServiceImpl laptopService;

    public LaptopController(LaptopServiceImpl laptopService) {
        this.laptopService = laptopService;
    }

    @GetMapping("/")
    public String asd() {
        return "home";
    }

    @GetMapping("/createLaptop")
    public String createLaptop() {
        return "createLaptop";
    }

    @GetMapping("/findByAll")
    public String findByAllLaptop(Model model) {
        List<Laptop> all = laptopService.findByAll();
        model.addAttribute("laptopList", all);
        return "findByAll";
    }

    @GetMapping("/findByFilterDesc")
    public String findByFilterDesc(Model model) {
        List<Laptop> laptops = laptopService.findByFilterDESC();
        model.addAttribute("findByFilterDesc", laptops);
        return "findByFilterDesc";
    }

    @GetMapping("/findLaptopByMemory")
    public String findLaptopByMemory(Model model) {
        List<Laptop> laptopList = laptopService.findLaptopByMemory();
        model.addAttribute("findLaptopByMemory", laptopList);
        return "findLaptopByMemory";
    }

    @GetMapping("/findLaptopByUsed")
    public String findLaptopByUsed(Model model) {
        List<Laptop> laptopListUsed = laptopService.findLaptopByUsed();
        model.addAttribute("findLaptopByUsed", laptopListUsed);
        return "findLaptopByUsed";
    }

    @PostMapping("saveLaptop")
    public String addLaptop(@RequestParam("model") String model, @RequestParam("producer") String producer,
                            @RequestParam("processor") String processor, @RequestParam("memory") int memory,
                            @RequestParam("used") boolean used, @RequestParam("typeFrame") TypeFrame typeFrame,
                            @RequestParam("price") double price, @RequestParam("data") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME) LocalDateTime data) {
        Laptop laptop = new Laptop(model, producer, processor, memory, used, typeFrame, price, data);
        laptopService.save(laptop);
        return "home";
    }
}
