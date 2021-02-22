#!/opt/ruby3.0/bin/ruby

require 'date'

puts (1901..2000).to_a.product((1..12).to_a).select { |x|
    DateTime.new(x[0],x[1],1).strftime("%a") == "Sun"
}.count
