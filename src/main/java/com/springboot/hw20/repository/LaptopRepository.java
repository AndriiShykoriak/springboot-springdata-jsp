package com.springboot.hw20.repository;

import com.springboot.hw20.model.Laptop;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LaptopRepository extends JpaRepository<Laptop, Long> {
    @Query("from Laptop l where l.memory>16 order by l.memory")
    List<Laptop> findLaptopByMemory();

    @Query("from Laptop l where l.used=TRUE")
    List<Laptop> findLaptopByUsed();
}
