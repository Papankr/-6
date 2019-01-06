require 'minitest/autorun'
require '/Users/tenzy/Desktop/lab6/Main3'
class Test < Minitest::Unit::TestCase
  def setup
    @func1 = ->(x) { (x - 1) / (x + 2) }
    @func2 = ->(x) { Math.sin((x / 2) - 1) }
    @r1 = rand(100).to_f / rand(50).to_f
    @r2 = rand(100).to_f / rand(50).to_f
    @hash_func1 = { 'min' => -0.5, 'max' => 0.248 }
    @hash_func2 = { 'min' => -1.0, 'max' => 1.0 }
  end

  def test_1
    assert_equal minmax_lambda(@func1, 0.0, 2.0), minmax_block(0.0, 2.0) { |x| (x - 1) / (x + 2) }
  end

  def test_2
    assert_equal minmax_lambda(@func2, -2.0, 6.0), minmax_block(-2.0, 6.0) { |x| Math.sin((x / 2) - 1) }
  end

  def test_3
    assert_equal minmax_lambda(@func1, @r1, @r2), minmax_block(@r1, @r2) { |x| (x - 1) / (x + 2) }
  end

  def test_4
    assert_equal minmax_lambda(@func2, @r1, @r2), minmax_block(@r1, @r2) { |x| Math.sin((x / 2) - 1) }
  end

  def test_5
    assert_equal minmax_lambda(@func1, 0.0, 2.0), @hash_func1
  end

  def test_6
    assert_equal minmax_block(-2.0, 6.0) { |x| Math.sin((x / 2) - 1) }, @hash_func2
  end
end
