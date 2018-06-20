# C. Constantinides, 2009.

module MathLibrary
   PI = 3.14159265
   def MathLibrary.factorial(n)
     if n == 0
       1
     else
       n * factorial(n-1)
     end
   end
end

puts MathLibrary::PI #=> 3.14159265
puts MathLibrary.factorial(5) #=>120

puts Math.sqrt(9) #=>3.0

include Math
puts sqrt(9) #=> 3.0

#~ class Integer
  #~ def factorial
    #~ if self == 0
      #~ 1
    #~ else
      #~ self * (self - 1).factorial
    #~ end
  #~ end
#~ end