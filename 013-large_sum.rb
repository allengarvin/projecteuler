#!/opt/ruby3.0/bin/ruby

puts File.readlines("013-input.txt").map(&:to_i).sum.to_s[0..9]

