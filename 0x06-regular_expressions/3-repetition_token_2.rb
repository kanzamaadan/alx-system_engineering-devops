#!/usr/bin/env ruby
regex = /h[^o]*n/
input = ARGV[0]
puts input.scan(regex).join('$')
