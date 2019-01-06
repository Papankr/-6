#!/usr/bin/env ruby
def part2(eps)
  list = Enumerator.new do |yielder|
    elem = 1.0
    counter = 1.0
    loop do
      yielder.yield elem, counter

      counter += 1
      elem = counter / (counter**2 + 2)
    end
  end

  list.lazy.drop_while { |elem| elem >= eps }.take(1).to_a[0][1]
end
