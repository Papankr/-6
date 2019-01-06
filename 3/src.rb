require './main.rb'

puts '*' * 30 + 'sin(x)' + '*' * 30
lambda_sin = ->(x) { Math.sin(x) }
p differ(0.49, 0.50, 0.51) { |x| Math.sin(x) }
p differ(0.49, 0.50, 0.51, lambda_sin)

puts '*' * 30 + 'tag(x)' + '*' * 30
lambda_tan = ->(x) { Math.tan(x + 1) }
p differ(0.49, 0.50, 0.51) { |x| Math.tan(x + 1) }
p differ(0.49, 0.50, 0.51, lambda_tan)
