#!/usr/bin/env ruby

require 'test/unit'
require '/Users/tenzy/Desktop/lab6/main1'

# Test for part1
class Test1 < Test::Unit::TestCase
  def test_1
    c = rand(1..10)
    c.times do
      assert_equal(1000, part1(0.001, rand(1..100)))
    end
  end

  def test_2
    c = rand(1..10)
    c.times do
      assert_equal(10_000, part1(0.0001, rand(1..100)))
    end
  end
end
