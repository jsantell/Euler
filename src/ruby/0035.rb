circular_primes = [2,3]
i = 5
alternate = false

def is_prime n
  # discard n with even digit, can't be circular
  return false if !!/2|4|6|8|0/.match(n.to_s)
  (2..Math.sqrt(n)).each { |k| return false if n % k == 0 }
  true
end

def is_circular n
  num = n.to_s.split ""
  num.length.times { |i| return false unless is_prime num.push(num.shift()).join('').to_i }
  true
end

while i < 1000000
  circular_primes << i if is_circular i 
  i += alternate ? 4 : 2
  alternate = !alternate
end

p circular_primes.length
