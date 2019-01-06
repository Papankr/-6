#!/usr/bin/env ruby

require 'test/unit'
require '/Users/tenzy/Desktop/lab6/main2'

# Test for part1
class Test1 < Test::Unit::TestCase
  def test_1
    assert_in_delta 1000, part2(0.001)
  end

  def test_2
    assert_in_delta 10_000, part2(0.0001)
  end
end
