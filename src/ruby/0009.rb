a = b = c = 0
(3..999).each do |x|
  break if a != 0
  (4..999).each do |y|
    c = Math.sqrt(x * x + y * y)
    if c % 1 == 0 and x + y + c == 1000
      a = x
      b = y
      break
    end
  end
end
p a * b * c.to_i 

