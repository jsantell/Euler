numbers = []
(2..1000000).each do |num|
  sum = 0
  num.to_s.split('').each { |n| sum += n.to_i**5 }
  numbers << num if num == sum
end
p numbers
p numbers.reduce :+
