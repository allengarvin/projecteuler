#!/usr/bin/ruby

r = 1..100
puts r.sum**2 - r.map { |x| x*x }.sum
