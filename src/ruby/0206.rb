min = Math.sqrt(1020304050607080900).to_i
max = Math.sqrt(1929394959697989990).to_i
max.downto(min) do |n|
  if /^1.2.3.4.5.6.7.8.9.0$/.match((n*n).to_s)
    p n
    break
  end
end
