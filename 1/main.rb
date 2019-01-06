def part1(eps, num)
  y = num.to_f / (num**2 + 2)
  while y >= eps
    num += 1
    y = num.to_f / (num**2 + 2)
  end
  num
end
