#!/opt/ruby3.0/bin/ruby

seq = [1, 1]
while seq[-1].to_s.size < 1000
    seq << seq[-2] + seq[-1]
end

puts seq.length

