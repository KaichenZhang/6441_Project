# C. Constantinides, 2009.

File.open("welcome-to-the-machine.txt").each { |line|
    puts line if line =~ /punish/
}