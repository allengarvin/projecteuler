#!/opt/ruby3.0/bin/ruby

grid = File.readlines("011-input.txt").map { |x| x.split().map(&:to_i) }

start_points = (0..19).to_a.product((0..16).to_a)
down_start_points = (0..16).to_a.product((0..16).to_a)
up_start_points = (3..19).to_a.product((0..16).to_a)

horizontal = start_points.map { |y,x| grid[y][x..x+3].inject(:*) }.max
vertical   = start_points.map { |x,y| (y..y+3).map { |j| grid[j][x] }.inject(:*) }.max
down       = down_start_points.map { |x,y| (0..3).map { |j| grid[y+j][x+j] }.inject(:*) }.max
up         = up_start_points.map { |y,x| (0..3).map { |j| grid[y-j][x+j] }.inject(:*) }.max

puts [horizontal, vertical, down, up].max


