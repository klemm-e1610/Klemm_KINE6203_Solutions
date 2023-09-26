function [prime] = checkPrime(num1)
%This function determines if the one numeric input is a prime number. If it
%is prime, the singular output is "true". If it is not prime, the output is
%"false"
if isprime(num1) % if the input is prime
    prime="true"; % output is true
else
    prime="false"; % otherwise, output is "false"
end