circularPrimes = [2,3]
i = 5
alternate = 0

isPrime = (n) ->
  # discard n with even digit
  return false if (n+'').match(/2|4|6|8|0/)
  for k in [2..Math.sqrt(n)]
    return false unless n % k
  true

isCircular = (n) ->
  num = n.split('')
  for i in [1..num.length]
    num.push(num.shift())
    return false unless isPrime +num.join('')
  true

while i < 1e6
  circularPrimes.push i if isCircular i+'' 
  i += if alternate % 2 then 4 else 2 # All primes must be of form 6k +/- 1
  alternate++

console.log circularPrimes.length
