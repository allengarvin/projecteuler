#!/opt/ruby3.0/bin/ruby

number = File.read("008-input.txt").chomp()
puts (0..number.length-13).map { |x| number[x..x+12].split("").map(&:to_i).reduce(:*) }.max
