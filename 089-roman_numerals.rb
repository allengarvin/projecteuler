#!/opt/ruby3.0/bin/ruby

romans = File.readlines("089-input.txt").map(&:chomp)

$roman_map = %w[ M CM D CD C XC L XL X IX V IV I ].zip([1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1 ]).to_h

class String
    def to_arabic
        r, value = self.dup, 0
        $roman_map.each do |k,v|
            while r.index(k) == 0
               value += v
               r.slice!(k)
            end
        end
        value
    end
end

class Integer
    def to_roman
        r, i = "", self
        for k, v in $roman_map
            d = i.divmod(v)
            r << k * d[0]
            i = d[1]
        end
        r
    end
end
        
puts romans.map { |x| x.length - x.to_arabic.to_roman.length }.sum
