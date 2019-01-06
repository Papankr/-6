require '/Users/tenzy/Desktop/lab6/Main3'
func1 = ->(x) { (x - 1) / (x + 2) }
func2 = ->(x) { Math.sin((x / 2) - 1) }

puts 'С помощью блока:'
puts minmax_block(0.0, 2.0, &func1)
puts minmax_block(-2.0, 6.0, &func2)

puts "\n"

puts 'С помощью lambda:'
puts minmax_lambda(func1, 0.0, 2.0)
puts minmax_lambda(func2, -2.0, 6.0)
