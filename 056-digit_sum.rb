#!/opt/ruby3.0/bin/ruby

puts (1..99).to_a.product((1..99).to_a).map { |x| (x[0]**x[1]).to_s.split("").map(&:to_i).sum }.max
