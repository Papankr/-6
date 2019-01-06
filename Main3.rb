def minmax_lambda(func, a, b)
  min = max = func.call(a)
  while a <= b
    min = func.call(a) if func.call(a) < min
    max = func.call(a) if func.call(a) > max
    a += 0.01
  end
  { 'min' => min.round(3), 'max' => max.round(3) }
end

def minmax_block(a, b)
  min = max = yield a
  while a <= b
    min = (yield a) if (yield a) < min
    max = (yield a) if (yield a) > max
    a += 0.01
  end
  { 'min' => min.round(3), 'max' => max.round(3) }
end
