primes = [2, 3]
i = 5
alternate = 0

isPrime = (n) ->
  for k in [2..Math.sqrt(n)] 
    return false unless n % k
  true

while i < 2e6 
  primes.push i if isPrime i
  i += if alternate % 2 then 4 else 2 # All primes must be of form 6k +/- 1
  alternate++

console.log primes.reduce (x, y) -> x + y
