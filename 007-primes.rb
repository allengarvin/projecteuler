#!/usr/bin/ruby

require 'prime'

puts Prime.lazy.drop(10000).first
