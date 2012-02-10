numbers = []
for num in [2..1000000]
  sum = 0
  sum += Math.pow(n, 5) for n in num+''.split('')
  numbers.push(num) if num is sum

console.log numbers.reduce (x, y) -> x + y
