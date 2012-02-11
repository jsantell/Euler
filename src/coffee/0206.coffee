# Doesn't work, rounding
# 1389019170^2 results in incorrect value
min = ~~Math.sqrt(1020304050607080900)
max = ~~Math.sqrt(1929394959697989990)
for n in [max..min]
  if ((n*n)+'').match(/^1.2.3.4.5.6.7.8.9.0$/)
    console.log n
    break
