# C. Constantinides, 2009.

module Debuger
  def reflect  
    "#{self.class.name} (\##{self.object_id}): #{self.to_s}"  
  end  
end

class Coordinate
  include Debuger
  attr_accessor :x, :y
  def initialize (x, y)
    @x = x
    @y = y
  end
  def to_s
     return "(#@x, #@y)"
  end
end


p1 = Coordinate.new(0,0)
p2 = Coordinate.new(1,1)
puts p1.reflect #=> Coordinate (#21114270): (0, 0)
puts p2.reflect #=> Coordinate (#21114120): (1, 1)

