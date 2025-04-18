package edu.iu.p466.arithmetic_.service.controller;

import edu.iu.p466.arithmetic_.service.model.PrimeCheckResult;
import edu.iu.p466.arithmetic_.service.service.PrimeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/primes")
public class PrimesController {
    
    private final PrimeService primeService;
    
    @Autowired
    public PrimesController(PrimeService primeService) {
        this.primeService = primeService;
    }
    
    @GetMapping("/check/{number}")
    public PrimeCheckResult checkPrime(@PathVariable long number) {
        return primeService.isPrime(number);
    }
} 