truncPrimes = []
i = 11
alternate = 0

isPrime = (n) ->
  return true if n is 2
  # discard n with even digit, except when 2 has largest magnitude, 10x faster
  return false if n is 1 or (n+'').match(/.2|4|6|8|0/)
  for k in [2..Math.sqrt(n)]
    return false unless n % k
  true

isTruncatable = (n) ->
  num = n+''
  for i in [1..num.length-1]
    return false unless isPrime +num[i..num.length-1]
  for i in [num.length-2..0]
    return false unless isPrime +num[0..i]
  true

while truncPrimes.length < 11
  truncPrimes.push i if isPrime(i) and isTruncatable(i)
  i += if alternate % 2 then 4 else 2 # All primes must be of form 6k +/- 1
  alternate++

console.log truncPrimes.reduce (x, y) -> x + y
