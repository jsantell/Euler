num = (2**1000).to_s.split ''
sum = 0
sum += num.shift().to_i while num.length > 0
p sum
