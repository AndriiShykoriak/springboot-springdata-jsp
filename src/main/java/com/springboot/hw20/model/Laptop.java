package com.springboot.hw20.model;

import com.springboot.hw20.model.helpings.TypeFrame;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.time.LocalDateTime;

@NoArgsConstructor
@Data
@Entity
@Table(name = "laptop")
public class Laptop {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @Column(name = "model")
    private String model;
    @Column(name = "producer")
    private String producer;
    @Column(name = "processor")
    private String processor;
    @Column(name = "memory")
    private int memory;
    @Column(name = "used")
    private boolean used;
    @Enumerated(EnumType.STRING)
    @Column(name = "type_frame")
    private TypeFrame typeFrame;
    @Column(name = "price")
    private Double price;
    @DateTimeFormat(pattern = "dd-M-yyyy hh:mm:ss")
    @Column(name = "date_time")
    private LocalDateTime data;

    public Laptop(String model, String producer, String processor, int memory, boolean used, TypeFrame typeFrame, Double price, LocalDateTime data) {
        this.model = model;
        this.producer = producer;
        this.processor = processor;
        this.memory = memory;
        this.used = used;
        this.typeFrame = typeFrame;
        this.price = price;
        this.data = data;
    }
}
