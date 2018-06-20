# C. Constantinides, 2009.

require "Authenticator.rb"
class DBase
  include Authenticator
  # ...
end

db = DBase.new
puts db.authenticate("go") #=> false