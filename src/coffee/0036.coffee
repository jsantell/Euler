limit = 1e6
palindromes = []

isPalindrome = (n) ->
  n = n + ''
  n is n.split('').reverse().join('')

for i in [1..limit]
  palindromes.push i if isPalindrome(i) and isPalindrome(i.toString(2))

console.log palindromes.reduce (x, y) -> x + y
