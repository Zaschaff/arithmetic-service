package edu.iu.p466.arithmetic_.service.service;

import edu.iu.p466.arithmetic_.service.model.PrimeCheckResult;
import edu.iu.p466.arithmetic_.service.repository.PrimeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PrimeService {
    
    private final PrimeRepository primeRepository;
    
    @Autowired
    public PrimeService(PrimeRepository primeRepository) {
        this.primeRepository = primeRepository;
    }
    
    public PrimeCheckResult isPrime(long number) {
        // First check if we've calculated this before
        Boolean cachedResult = primeRepository.getPrimeStatus(number);
        
        if (cachedResult != null) {
            return new PrimeCheckResult(number, cachedResult);
        }
        
        // Calculate if it's prime
        boolean isPrime = calculateIsPrime(number);
        
        // Save result for future use
        primeRepository.savePrimeStatus(number, isPrime);
        
        return new PrimeCheckResult(number, isPrime);
    }
    
    private boolean calculateIsPrime(long number) {
        if (number <= 1) {
            return false;
        }
        if (number <= 3) {
            return true;
        }
        if (number % 2 == 0 || number % 3 == 0) {
            return false;
        }
        
        for (long i = 5; i * i <= number; i += 6) {
            if (number % i == 0 || number % (i + 2) == 0) {
                return false;
            }
        }
        
        return true;
    }
} 