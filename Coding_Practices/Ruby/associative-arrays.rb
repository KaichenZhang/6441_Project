# C. Constantinides, 2009.

biblio = { "nabokov89a" => "Pnin", 
              "bulgakov96" => "The master and margarita",
              "nabokov89b" => "Invitation to a Beheading",
              "nabokov90" => "The defense",
              "kafka95" => "The trial" }

# access to read ...
puts biblio.length #=> 5
puts biblio["bulgakov96"] #=>	The master and margarita

# access to modify ...
biblio["nabokov89a"] = "Lolita"
puts biblio["nabokov89a"] #=> Lolita

#add to the collection...
biblio["nietzsche97"] = "Beyond good and evil"
puts biblio["nietzsche97"] #=>	Beyond good and evil

puts biblio.length #=> 6

#delete from the collection
biblio.delete_if {|key, value| key == "kafka95"}
puts biblio.length #=> 5

# iterate over the collection

biblio.each_pair do |key, value|
  puts "#{key} : #{value}"	
end

# yet another way...
biblio.each do |key, value| 
  puts "#{key} : #{value}"
end

# iterate by accessing and displaying keys and values
biblio.each {|key, value| puts key + " : " + value}

# iterate by accessing and displaying only the keys
biblio.each_key {|key| puts key}



