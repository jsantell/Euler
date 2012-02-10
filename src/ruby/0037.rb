trunc_primes = []
i = 11
alternate = false

# discard n with even digit, except when 2 has largest magnitude, 10x faster
def is_prime n
  return false if n == 1 or !!/.2|4|6|8|0/.match(n.to_s)
  (2..Math.sqrt(n)).each { |k| return false if n % k == 0 }
  true
end

def is_truncatable n
  num = n.to_s
  (1..num.length-1).each { |i| return false unless is_prime num[i..num.length-1].to_i }
  (num.length-2).downto (0)  { |i| return false unless is_prime num[0..i].to_i }
  true
end

while trunc_primes.length < 11
  trunc_primes << i if is_prime(i) and is_truncatable(i)
  i += alternate ? 4 : 2
  alternate = !alternate
end

p trunc_primes.reduce :+
