primes = [2, 3]
i = 5
alternate = false

def is_prime n
  (2..Math.sqrt(n)).each { |k| return false if n % k == 0 }
  true
end

while primes.length < 10001
  primes << i if is_prime i
  i += alternate ? 4 : 2
  alternate = !alternate
end

p primes.pop()
