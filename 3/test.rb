require './main.rb'
require 'minitest/autorun'

# Test Class
class Test < MiniTest::Unit::TestCase
  def test_1
    expected = [0.8823621510215207, 0.8775679355874755, 0.8727737201534302]
    output = differ(0.49, 0.50, 0.51) { |x| Math.sin(x) }
    assert_in_delta(expected[0], output[0], 1e-10)
    assert_in_delta(expected[1], output[1], 1e-10)
    assert_in_delta(expected[2], output[2], 1e-10)
  end

  def test_2
    expected = [146.40093799620715, 203.9117631129767, 261.42258822974645]
    output = differ(0.49, 0.50, 0.51) { |x| Math.tan(x + 1) }
    assert_in_delta(expected[0], output[0], 1e-10)
    assert_in_delta(expected[1], output[1], 1e-10)
    assert_in_delta(expected[2], output[2], 1e-10)
  end
end
