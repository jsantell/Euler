curiousNumbers = []
for num in [3..1000000]
  sum = 0
  for n in num+''.split('')
    sum += if +n then ( [1..n].reduce (x, y) -> x * y ) else 1
  curiousNumbers.push(num) if num is sum

console.log curiousNumbers.reduce (x, y) -> x + y
