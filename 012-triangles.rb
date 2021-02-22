#!/opt/ruby3.0/bin/ruby

require 'prime'

(2..1000000).each do |x|
    sum = x * (x+1) / 2
    if sum.prime_division.map { |p,n| n + 1 }.inject(:*) > 500
        puts sum
        exit
    end
end
