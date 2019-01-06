#!/usr/bin/env ruby

require '/Users/tenzy/Desktop/lab6/main1'

puts 'Enter first number:'

num = gets.to_i

puts 'Answer for eps = 0.001 = ' + part1(0.001, num).to_s
puts 'Answer for eps = 0.0001 = ' + part1(0.0001, num).to_s
