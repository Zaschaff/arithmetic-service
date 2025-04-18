package edu.iu.p466.arithmetic_.service.model;

public class PrimeCheckResult {
    private long number;
    private boolean isPrime;
    
    public PrimeCheckResult() {
    }
    
    public PrimeCheckResult(long number, boolean isPrime) {
        this.number = number;
        this.isPrime = isPrime;
    }
    
    public long getNumber() {
        return number;
    }
    
    public void setNumber(long number) {
        this.number = number;
    }
    
    public boolean isPrime() {
        return isPrime;
    }
    
    public void setPrime(boolean isPrime) {
        this.isPrime = isPrime;
    }
} 