# C. Constantinides, 2009.

class Coordinate
  @@total = 0
  def initialize (x, y)
    @@total += 1
    @x = x
    @y = y
  end
  def setx (x)
   @x = x
  end
  def sety (y)
    @y = y
  end
  def getx
    @x
  end
  def gety
   @y  
  end
  def to_s
    return "(#@x, #@y)"
  end
  def Coordinate.total
    return "Number of coordinates:  #@@total"
  end
end

p1 = Coordinate.new(0, 0)
puts p1.to_s   #=> (0, 0)
p1.setx(2)
puts p1.getx   #=> 2
p1.sety(3)
puts p1.gety   #=> 3
puts p1.to_s   #=> (2, 3)
p2 = Coordinate.new(1, 1)
puts Coordinate.total  #=> Number of coordinates: 2