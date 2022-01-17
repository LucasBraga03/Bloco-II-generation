package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hello")

public class HelloController {
	
	@GetMapping
	public String hello() {
		return "Precisei de muito foco e persistência para realizar está atividade";
	}
	
	@GetMapping("/2")
	public String hello2() {
		return "Essa semana quero entender melhor sobre o spring, pois estou com dificuldades";
	}
}
