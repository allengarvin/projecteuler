#!/usr/bin/ruby

r = 100..999

puts r.to_a.product(r.to_a).map { |x| x.reduce(:*) }.select { |x| x if x.to_s == x.to_s.reverse }.sort[-1]
