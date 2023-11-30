#!/usr/bin/env ruby
regex = /\[from:([\w\s]+|\+\d+)\] \[to:([\w\s]+|\+\d+)\] \[flags:([\w\d:-]+)\]/
input = ARGV[0]
matches = input.match(regex)
puts "#{matches[1]},#{matches[2]},#{matches[3]}"
