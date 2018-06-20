# C. Constantinides, 2009.

a = [ "3.14", "number", "pi"]
a.each { |el| print el + " "} #=> 3.14 number pi

print ["H", "A", "L"].collect { |x| x.succ} #=> IBM

#find first even number from a collection
print [1, 3, 7, 8, 9, 10].find { |x| x%2 == 0}	#=> 8
