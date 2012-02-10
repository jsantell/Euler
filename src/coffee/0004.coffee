i = j = 999
palindromes = []

isPalindrome = (n) ->
  n = n + ''
  n is n.split('').reverse().join('')

for x in [i..0]
  for y in [j..0]
    palindromes.push x * y if isPalindrome x * y

console.log Math.max.apply(Math, palindromes)


