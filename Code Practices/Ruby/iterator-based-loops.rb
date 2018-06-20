# C. Constantinides, 2009.

3.times { |count| puts count} #=> 0 1 2

1.upto(10) { |count| puts count } #=> 1 2 3 4 5 6 7 8 9 10

10.downto(1) { |count| puts count } #=> 10 9 8 7 6 5 4 3 2 1

0.step(10,2) { |count| puts count } #=> 0 2 4 6 8 10

for element in ['a', 'b', 'c']
  puts element                             #=> a b c
end
