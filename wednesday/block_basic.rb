def a_method(a, b)
  block_given? ? a + yield(a, b) : a
end

b = a_method(1, 2) {|x, y| x + y }
puts b

c = a_method(1, 2)
puts c