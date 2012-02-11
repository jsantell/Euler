a = b = c = 0
for x in [3..999]
  break if a
  for y in [4..999]
    c = Math.sqrt(x * x + y * y)
    if !(c % 1) and x + y + c is 1000
      a = x
      b = y
      break
console.log a * b * c
