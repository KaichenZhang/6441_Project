# C. Constantinides, 2009.

a = b = 1 + 2 + 3
puts a #=> 6
puts b #=> 6

a = (b = 1 + 2) + 3
puts a #=> 6
puts b #=> 3

a = 1
b = 2
a, b = b, a
puts a #=> 2
puts b #=> 1

x = 0
a, b, c = x, (x += 1), (x += 1)
puts a #=> 0
puts b #=> 1
puts c #=> 2
puts x #=> 2