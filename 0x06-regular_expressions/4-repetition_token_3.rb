#!/usr/bin/env ruby
regex = /h[^b]+n/
input = ARGV[0]
puts input.scan(regex).join('$')
