factorial = 100.downto(2).reduce :*
sum = 0
a = factorial.to_s.split('')
sum += a.shift().to_i while a.size > 0
p sum
