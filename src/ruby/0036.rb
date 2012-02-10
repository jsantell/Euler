limit = 1000000
palindromes = []

def is_palindrome n
  n == n.reverse
end

(1..limit).each { |i| palindromes << i if is_palindrome(i.to_s) and is_palindrome(i.to_s 2) } 

p palindromes.reduce :+
