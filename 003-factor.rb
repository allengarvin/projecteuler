#!/usr/bin/ruby

require 'prime'

puts Prime.prime_division(600851475143).max_by(&:first).first
