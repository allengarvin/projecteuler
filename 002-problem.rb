#!/usr/bin/ruby

seq, sum = [1, 1], 0

while seq[-1] < 4000000
    seq[0], seq[1] = seq[1], seq[0] + seq[1]
    sum += seq[-1] if seq[-1] % 2 == 0
end

puts sum
