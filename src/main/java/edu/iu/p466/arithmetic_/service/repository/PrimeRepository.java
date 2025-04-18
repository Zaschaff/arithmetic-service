package edu.iu.p466.arithmetic_.service.repository;

import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
public class PrimeRepository {
    
    // Using a simple in-memory store for this example
    // In a real application, you would likely use a database
    private final Map<Long, Boolean> primeCache = new HashMap<>();
    
    public Boolean getPrimeStatus(long number) {
        return primeCache.get(number);
    }
    
    public void savePrimeStatus(long number, boolean isPrime) {
        primeCache.put(number, isPrime);
    }
} 