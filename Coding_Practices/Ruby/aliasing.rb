# C. Constantinides, 2009.

person1 = "Tony"
person2 = person1
person3 = person1.dup
person1[0] = "R"

puts person1 #=> Rony
puts person2 #=> Rony
puts person3 #=> Tony