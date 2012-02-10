palindromes = []
(1..1000000).each { |i| palindromes << i if i.to_s == i.to_s.reverse and i.to_s(2) == i.to_s(2).reverse } 
p palindromes.reduce :+
