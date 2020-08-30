package com.springboot.hw20.service.impl;

import com.springboot.hw20.model.Laptop;
import com.springboot.hw20.repository.LaptopRepository;
import com.springboot.hw20.service.LaptopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class LaptopServiceImpl implements LaptopService {

    final LaptopRepository laptopRepository;

    public LaptopServiceImpl(LaptopRepository laptopRepository) {
        this.laptopRepository = laptopRepository;
    }

    @Override
    public void save(Laptop laptop) {
        laptopRepository.save(laptop);
    }

    @Override
    public List<Laptop> findByFilterDESC() {
        return laptopRepository.findAll()
                .stream()
                .sorted(Comparator.comparing(Laptop::getProducer).reversed())
                .collect(Collectors.toList());
    }

    @Override
    public List<Laptop> findLaptopByMemory() {
        return laptopRepository.findLaptopByMemory();
    }

    @Override
    public List<Laptop> findLaptopByUsed() {
        return laptopRepository.findLaptopByUsed();
    }

    @Override
    public List<Laptop> findByAll() {
        return laptopRepository.findAll();
    }
}
