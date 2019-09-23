#iterate through numbers between 1 and 100
#check if each is divisible by primes less than half the number

# primes = [2, 3]
# n = 4

# while n <= 100
#     i = 0
#     while primes[i] < n / 2.0
#         if n % primes[i] == 0 #n is divisible by the prime, i.e. n is not prime
#             break
#         else 
#             i += 1
#         end
#         if primes[i] == nil
#             primes.push(n)
#             break
#         end
#     end
#     n += 1
# end
# p(primes)

#can we do a naive version which checks all numbers?
# prime_numbers = [2]
# n = 3
# while n <= 100
#     for nums in 2..n
#         if n % nums == 0
#             if nums == n
#                 prime_numbers.push(n)
#             else
#                 break
#             end
#         end
#     end
#     n += 1
# end
# p(prime_numbers)

#smart solution
prime_numbers = [2]
n = 3
while n <= 100
    for prime in prime_numbers
        if n % prime == 0
            break
        elsif prime == prime_numbers[-1]
            prime_numbers.push(n)
        else
            next
        end
    end
    n += 1
end
p(prime_numbers)