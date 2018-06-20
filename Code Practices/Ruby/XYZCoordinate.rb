# C. Constantinides, 2009.

require "CoordinateV2.rb"

class XYZCoordinate < Coordinate
  attr_accessor :z
  @@newtotal = 0
  def initialize (x, y, z)
    super(x, y)
    @z = z
    @@newtotal += 1
  end
  def to_s
    return "(#{@x}, #{@y}, #{@z})"
  end
  def XYZCoordinate.total
    return "Number of 3D-coordinates: #@@newtotal"
  end
end

p1 = XYZCoordinate.new(0,0,0)
#puts p1.to_s #=> (0, 0, 0)

p2 = XYZCoordinate.new(1,5,5)
#puts p2.to_s #=> (1, 5, 5)

puts XYZCoordinate.total #=> Number of 3D-coordinates: 2





def p1.whatIam
  return "The origin on the 3D system."
end


#~ puts p1.whatIam #=> The origin on the 3D system.
# puts p2.whatIam