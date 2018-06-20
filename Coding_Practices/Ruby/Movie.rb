# C. Constantinides, 2009.

class Movie
  @@howMany = 0
  def initialize(title, year)
    @title  = title
    @year   = year
    @@howMany += 1
  end
    def Movie.total
    return "Number of movies: #@@howMany"
  end
  def to_s
    return "Movie: " + @title + " (" + @year + ")"
  end
end

m1 = Movie.new("Taxi driver", "1976")
m2= Movie.new("The Deer Hunter", "1978")
m3= Movie.new("Once upon a time in America", "1984")

a = [m1, m2, m3]
puts a.class
puts a.length
puts a[0].to_s
ObjectSpace.each_object(Movie) {|x| puts x.to_s}
puts Movie.total