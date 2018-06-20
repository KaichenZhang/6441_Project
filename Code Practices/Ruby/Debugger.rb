# C. Constantinides, 2009.

module Debugger
  def reflect  
    "#{self.class.name} (\##{self.object_id}): #{self.to_s}"  
  end  
end

class Coordinate
  include Debugger
  attr_accessor :x, :y
  def initialize (x, y)
    @x = x
    @y = y
  end
  def to_s
     return "(#@x, #@y)"
  end
end