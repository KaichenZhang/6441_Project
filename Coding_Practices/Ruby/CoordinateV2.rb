# C. Constantinides, 2009.

class Coordinate
  attr_accessor :x, :y
  @@total = 0
  def initialize (x, y)
    @@total += 1
    @x = x
    @y = y
  end
  def to_s
     return "(#@x, #@y)"
  end
    def Coordinate.total
    return "Number of coordinates:  #@@total"
  end
end


#~ p1 = Coordinate.new(0,0)
#~ puts p1.to_s #=> (0, 0)
#~ p1.x = 2
#~ puts p1.x #=> 2
#~ p1.y = 3
#~ puts p1.y #=> 3
#~ puts p1.to_s #=> (2, 3)