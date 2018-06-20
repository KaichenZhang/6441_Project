# C. Constantinides, 2009.

require "CoordinateV2.rb"
require "XYZCoordinate.rb"

p1 = Coordinate.new(0, 0)
p2 = XYZCoordinate.new(0,0,0)

def p2.whatIam
  return "The origin on the 3D system."
end

#~ ObjectSpace.each_object(Coordinate) { |p|
  #~ #puts x.to_s
  #~ puts p.inspect
#~ }

#~ puts p1.respond_to?("setX") #=> false
#~ puts p2.respond_to?("whatIam") #=> true

#~ puts p1.id # => 21113660
#~ puts p1.class # => Coordinate
#~ puts p2.class #=> XYZCoordinate

#~ puts p2.instance_variables	# => @y @z @x

#~ puts p2.kind_of? Coordinate # => true 
#~ puts p2.kind_of? XYZCoordinate	# => true
#~ puts p1.kind_of? XYZCoordinate #=> false
#~ puts p2.instance_of? Coordinate	# => false

#~ puts p2.instance_of? XYZCoordinate #=> true

#~ puts XYZCoordinate.superclass #=> Coordinate

# TODO: Complete the one below:
#~ puts XYZCoordinate.private_instance_methods #=>
#~ puts XYZCoordinate.public_instance_methods #=>
#~ puts XYZCoordinate.class_variables	# => @@total

