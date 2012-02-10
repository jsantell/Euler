curious_numbers = []
(3..1000000).each do |num|
  sum = 0
  num.to_s.split('').each { |n| sum += n.to_i == 0 ? 1 : n.to_i.downto(1).reduce(:*) }
  curious_numbers << num if num == sum
end

p curious_numbers.reduce :+
