#!/opt/ruby3.0/bin/ruby

(1..1000).each do |x|
    ((x+1)..(1000-x)).each do |y|
        z = 1000 - x - y 
        next if x + y + z != 1000 || x**2 + y**2 != z**2
        puts x*y*z
        exit
    end
end
