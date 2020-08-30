package com.springboot.hw20.service;

import com.springboot.hw20.model.Laptop;

import java.util.List;

public interface LaptopService {
    void save(Laptop laptop);

    List<Laptop> findByFilterDESC();

    List<Laptop> findLaptopByMemory();

    List<Laptop> findLaptopByUsed();

    List<Laptop> findByAll();

}
