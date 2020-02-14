def double(callable_object)
	callable_object.call * 2
end

l = lambda { return 10 } # returns from proc
puts double(l)


def another_double
	p = Proc.new{ return 10 } # returns from the scope where the proc itself was defined
	result = p.call
	return result * 2
end

puts another_double # 10

